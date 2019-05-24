import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final titleList = [
    Text('Welcome Yada'),
    Text('Portfolio'),
    Text('Transfer'),
    Text('Chat'),
    Text('Settings'),
  ];

  final widgetScreen = [
    HomeScreen(
      isEmpty: false,
    ),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleList.elementAt(selectedIndex),
        elevation: selectedIndex == 0 ? 0 : 7,
      ),
      body: widgetScreen.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), title: Text('Portfolio')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.transit_enterexit), title: Text('Transfer')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.chat), title: Text('Chat')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onTabTapped,
      ),
    );
  }

  _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class HomeScreen extends StatefulWidget {
  final bool isEmpty;
  HomeScreen({Key key, this.isEmpty = true}) : super(key: key);
  @override
  createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int existing_investment = 0;
  @override
  Widget build(BuildContext context) {
    return widget.isEmpty
        ? Container()
        : Scaffold(
            body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: new BorderRadius.only(
                        bottomLeft: new Radius.circular(15.0),
                        bottomRight: new Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                        child: Text(
                          "See your investement progress today,",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                              child: Text(
                                "Your Amount Investement",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                              child: Text(
                                "Rp. 2.500.000",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                existing_investment == 0
                                    ? "In deposit"
                                    : "Total Investment Balance",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            existing_investment == 0
                                ? Container()
                                : Container(
                                    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                    child: Text(
                                      "Rp. 500.000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                            existing_investment == 0
                                ? Container()
                                : Container(
                                    child: Text(
                                      "Total Cumulative Returns",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                            Container(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                                child: Text(
                                  "Calculated from NAV Jan 9, 2019",
                                  style: TextStyle(fontSize: 14),
                                )),
                            existing_investment == 0
                                ? FlatButton(
                                    padding: EdgeInsets.all(16),
                                    onPressed: () {},
                                    child: Text(
                                      "See Deposit Status",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  )
                                : Container(),
                            existing_investment == 0
                                ? Container()
                                : Container(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: Divider(
                                      height: 4,
                                      color: Colors.grey,
                                    ),
                                  ),
                            existing_investment == 0
                                ? Container()
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16, right: 16),
                                          child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              new Icon(
                                                Icons.save,
                                                color: Colors.blue,
                                              ),
                                              new Expanded(
                                                  child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 4),
                                                child: Text('In Deposit',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 16)),
                                              ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 8, 16, 8),
                                          child: Text(
                                            "+Rp. 1.000.000",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(16),
                    child: RaisedButton(
                        color: Colors.blue,
                        padding: EdgeInsets.all(12.0),
                        onPressed: () {
                          setState(() {
                            if (existing_investment == 0)
                              existing_investment = 1;
                            else
                              existing_investment = 0;
                          });
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Icon(
                              Icons.change_history,
                              color: Colors.white,
                            ),
                            new Expanded(
                                child: Text(
                              'Switch Existing Investment',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ))
                          ],
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0)))),
              ],
            ),
          ));
  }
}
