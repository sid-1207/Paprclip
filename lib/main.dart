import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue1 = 'Exponential';
  String dropdownValue2 = 'Classic';
  String dropdownValue3 = 'Technical Indicators';
  Widget buildExponentialPeriod(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textScaleFactor: 1.35,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildClassicTable(String text) {
    return 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textScaleFactor: 1.35,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        );
      
  
    
  }

  Widget buildExponentialValue(String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textScaleFactor: 1.35,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildExponentialType(String text, Color color) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            textScaleFactor: 1.35,
            style: TextStyle(
              color: color,
            )),
      ),
    );
  }

  Widget buildContainer1(String text) {
    return Column(
      children: [
        Container(
            width: 80,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(text, style: TextStyle(color: Colors.white)),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("USD / INR"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(18, 18, 18, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: DropdownButton<String>(
                      value: dropdownValue3,
                      icon: Align(
                          alignment: Alignment.centerRight,
                          child: const Icon(Icons.keyboard_arrow_down)),
                      iconSize: 24,
                      elevation: 16,
                      underline: Container(
                        height: 2,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue3 = newValue;
                        });
                      },
                      items: <String>['Technical Indicators']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(160, 160, 160, 1),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Text("Summary",
                        style: TextStyle(color: Color.fromRGBO(166, 166, 166, 1), fontSize: 20))),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 80,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)))),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 80,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 73, 153, 1))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 80,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(254, 185, 70, 1))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 80,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(152, 28, 48, 1))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 80,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Color.fromRGBO(255, 46, 80, 1))),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        buildContainer1("1 MIN"),
                        buildContainer1("5 MIN"),
                        buildContainer1("15 MIN"),
                        buildContainer1("30 MIN"),
                        buildContainer1("1 HR"),
                        buildContainer1("5 HR"),
                        buildContainer1("1 DAY"),
                        buildContainer1("1 WK"),
                        buildContainer1("1 MON"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Moving Averages",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(166, 166, 166, 1),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: 80,
                        decoration: BoxDecoration(
                            //color: Color.fromRGBO(0, 122, 255, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromRGBO(0, 122, 255, 1))),
                            onPressed: null,
                            child: Text("BUY",
                                style: TextStyle(color: Colors.white)))),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("7",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Buy",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                          Column(
                            children: [
                              Text("-",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Neutral",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                          Column(
                            children: [
                              Text("5",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Sell",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(18, 18, 18, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue1,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue1 = newValue;
                            });
                          },
                          items: <String>['Exponential']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Table(
                      children: [
                        TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(18, 18, 18, 1),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Period",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    color: Color.fromRGBO(160, 160, 160, 1),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Value",
                                    textScaleFactor: 1.2,
                                    style: TextStyle(
                                      color: Color.fromRGBO(160, 160, 160, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Type",
                                    textScaleFactor: 1.2,
                                    style: TextStyle(
                                      color: Color.fromRGBO(160, 160, 160, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA5"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA10"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA20"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "BUY", Color.fromRGBO(0, 122, 255, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA50"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "BUY", Color.fromRGBO(0, 122, 255, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA100"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MA200"),
                          buildExponentialValue("465.28"),
                          buildExponentialType(
                              "BUY", Color.fromRGBO(0, 122, 255, 1))
                        ]),
                      ],
                    ),
                  ],
                )),
                //////////////////////////////////////////////////////////////
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Technical Indicators",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(166, 166, 166, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 150,
                        decoration: BoxDecoration(
                            //color: Color.fromRGBO(255, 46, 80, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromRGBO(255, 46, 80, 1))),
                            onPressed: null,
                            child: Text("STRONG SELL",
                                style: TextStyle(color: Colors.white)))),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("1",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Buy",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                          Column(
                            children: [
                              Text("1",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Neutral",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                          Column(
                            children: [
                              Text("9",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(207, 207, 207, 1))),
                              Text("Sell",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(153, 153, 153, 1))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: [
                        TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(18, 18, 18, 1),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Name",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    color: Color.fromRGBO(160, 160, 160, 1),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Value",
                                    textScaleFactor: 1.2,
                                    style: TextStyle(
                                      color: Color.fromRGBO(160, 160, 160, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Action",
                                    textScaleFactor: 1.2,
                                    style: TextStyle(
                                      color: Color.fromRGBO(160, 160, 160, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              border: Border.all(width: 10),
                            ),
                            children: [
                              buildExponentialPeriod("RSI (14)"),
                              buildExponentialValue("-53.6549"),
                              buildExponentialType(
                                  "NEUTRAL", Color.fromRGBO(221, 160, 61, 1))
                            ]),
                        TableRow(children: [
                          buildExponentialPeriod("STOCH (9,6)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("STOCHRSI (14)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("MACD (12,26)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "BUY", Color.fromRGBO(0, 122, 255, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("ADX (14)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("Williams %R"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("CCI (14)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("ATR (14)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("High/Lows (14)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("Ultimate Oscillator"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("ROC "),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType(
                              "SELL", Color.fromRGBO(215, 39, 67, 1))
                        ]),
                        TableRow(children: [
                          buildExponentialPeriod("Bull/Bear Power (13)"),
                          buildExponentialValue("-53.6549"),
                          buildExponentialType("LESS VOLATILE", Colors.white)
                        ]),
                      ],
                    ),
                  ],
                )),
                SizedBox(
                  height: 35,
                ),
                ///////////////////////////////////////////////////////////////////////////////
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Pivot Points",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(166, 166, 166, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(18, 18, 18, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue2,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 2,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue2 = newValue;
                            });
                          },
                          items: <String>['Classic']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Table(
                      defaultColumnWidth: FixedColumnWidth(250.0),
                      children: [
                        TableRow(children: [
                       buildClassicTable("S3"),
                        buildClassicTable("456.87")
                        ]),
                        TableRow(children: [
                       buildClassicTable("S2"),
                        buildClassicTable("456.87")
                        ]),
                        TableRow(children: [
                         buildClassicTable("S1"),
                        buildClassicTable("456.87")
                        ]),
                        TableRow(children: [
                         buildClassicTable("Pivot Points"),
                        buildClassicTable("456.87")
                        ]),
                        TableRow(children: [
                           buildClassicTable("R1"),
                        buildClassicTable("456.87")
                        ]),
                        TableRow(children: [
                            buildClassicTable("R2"),
                        buildClassicTable("456.87")
                         
                        ]),
                        TableRow(children: [
                          buildClassicTable("R3"),
                        buildClassicTable("456.87")
                        ]),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}
