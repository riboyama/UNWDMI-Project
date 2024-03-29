import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;
import java.net.Socket;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by RonOS on 1/29/2017.
 */
public class clientThread extends Thread {
    public Socket socket;
    private MySql sql = new MySql("145.33.225.143", 3306, "unwdmi", "zOlBAimnx9LlGsUw", "weathergen");
    private WeatherDatabaseHelper database = new WeatherDatabaseHelper(sql);
    private boolean receiving = false;
    private boolean writing = true;
    private int currentStation;
    BufferedReader br;


    /**
     * The clientThread class is a class that represents a connected client
     * it facilitates the parsing and writing of received data.
     * @param socket
     */
    public clientThread(Socket socket) {
        this.socket = socket;
        try {
            br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        }

        catch (java.io.IOException ex) {
            System.out.println("Failed to create buffered reader.");
        }

    }

    /**
     * This method runs the thread and starts the receiving process
     */
    public void run() {
        receive();
    }

    /**
     * When this method is called the thread will begin to receive and parse the XML data
      */
    public void receive() {
        if (!receiving) {
            write();
            receiving = true;
            try {
                while (receiving) {
                    String str = "";
                    StringBuilder builder = new StringBuilder();

                    while (!str.contains("</MEASUREMENT>")) {
                        str = br.readLine();
                        builder.append(str);
                    }

                    //close socket for new connection

                    //System.out.println(array);

                    String xmlString = builder.toString();
                    xmlString = xmlString.replace("\t", "");
                    if(!xmlString.contains("<?xml version=\"1.0\"?><WEATHERDATA>")) {
                        builder.insert(0, "<?xml version=\"1.0\"?><WEATHERDATA>");
                    }
                    if(xmlString.contains("</WEATHERDATA>")) {
                        builder.delete(0,14);
                    }
                    builder.append("</WEATHERDATA>");
                    xmlString = builder.toString();
                    System.out.println(xmlString);
                    Document xml = loadXMLFromString(xmlString);
                    NodeList nList = xml.getElementsByTagName("MEASUREMENT");

                    for (int i = 0; i < nList.getLength(); i++) {
                        try {
                            Element element = (Element) nList.item(i);

                            int station = Integer.valueOf(element.getElementsByTagName("STN").item(0).getTextContent());
                            currentStation = station;
                            String date = element.getElementsByTagName("DATE").item(0).getTextContent();
                            String time = element.getElementsByTagName("TIME").item(0).getTextContent();
                            float visibility = Float.parseFloat(element.getElementsByTagName("VISIB").item(0).getTextContent().replace("\"", ""));
                            float cloudcoverage = Float.parseFloat(element.getElementsByTagName("CLDC").item(0).getTextContent());


                            //Float temperature = Float.parseFloat(element.getElementsByTagName("TEMP").item(0).getTextContent().replace("\"", ""));
                            //Float dewpoint = Float.parseFloat(element.getElementsByTagName("DEWP").item(0).getTextContent().replace("\"", ""));
                            //Float pressure = Float.parseFloat(element.getElementsByTagName("STP").item(0).getTextContent().replace("\"", ""));
                            //String slp = element.getElementsByTagName("SLP").item(0).getTextContent();
                            //int winddirection = Integer.valueOf(element.getElementsByTagName("WNDDIR").item(0).getTextContent());
                            //Float windspeed = Float.parseFloat(element.getElementsByTagName("WDSP").item(0).getTextContent().replace("\"", ""));
                            //Float prcp = Float.parseFloat(element.getElementsByTagName("PRCP").item(0).getTextContent());
                            //Float snowdepth = Float.parseFloat(element.getElementsByTagName("SNDP").item(0).getTextContent());
                            //int frshtt = Integer.valueOf(element.getElementsByTagName("FRSHTT").item(0).getTextContent());

                            if(writing) {
                                if (station < 500000) {
                                    database.insertOceaniaData(station, cloudcoverage, date + " " + time);
                                } else {
                                    database.insertArgentinaData(station, cloudcoverage, visibility, date + " " + time);
                                }
                            }
                            //database.insertOceaniaData(station, cloudcoverage);
                            //System.out.println("Station number: " + station);
                            //System.out.println("Cloudcoverage : " + cloudcoverage);
                            //System.out.println("Data received :" + counter);
                        }

                        catch (java.lang.NumberFormatException ex) {
                            if(writing) {
                                DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                                Date today = Calendar.getInstance().getTime();
                                String reportDate = df.format(today);
                                if (currentStation < 500000) {
                                    database.insertOceaniaData(currentStation, database.getAverageCloudCoverage(currentStation, "oceania"),reportDate);
                                } else {
                                    database.insertArgentinaData(currentStation, database.getAverageCloudCoverage(currentStation, "argentina"), database.getAverageVisibilty(currentStation, "argentina"), reportDate);
                                }
                            }
                            System.out.println("Corrupt data encountered, correcting...");
                        }
                    }
                }

            } catch (IOException ex) {
                System.out.println("An error occured creating the socket for the receiver: ");
                System.out.println(ex.toString() + "@Ln" + Thread.currentThread().getStackTrace()[2].getLineNumber());
            }

            catch (java.lang.Exception ex) {
                if(writing) {
                    DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                    Date today = Calendar.getInstance().getTime();
                    String reportDate = df.format(today);

                    System.out.println("Report Date: " + reportDate);
                    if (currentStation < 500000) {
                        database.insertOceaniaData(currentStation, database.getAverageCloudCoverage(currentStation, "oceania"),reportDate);
                    } else {
                        database.insertArgentinaData(currentStation, database.getAverageCloudCoverage(currentStation, "argentina"), database.getAverageVisibilty(currentStation, "argentina"), reportDate);
                    }
                }
                //System.out.println("An error occured loading XML from the network stream: ");
                //System.out.println(ex.toString() + "@Ln" + Thread.currentThread().getStackTrace()[2].getLineNumber());
            }
        }
    }

    /**
     * This method enables the clientThread to write its received data to the database
     */
    public void write() {
        if (receiving && !writing) {
            writing = true;
        }

        else {
            System.out.println("The receiver does not have any data to write or is already writing");
        }
    }

    /**
     * This method is responsible for parsing each measurement to a workable document object
     * @param xml A string containing the XML to be parsed
     * @return returns a document that allows for parsing of data
     * @throws Exception when invalid XML is provided it throws the exception
     */
    public static Document loadXMLFromString(String xml) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        InputSource is = new InputSource(new StringReader(xml));
        return builder.parse(is);
    }
}