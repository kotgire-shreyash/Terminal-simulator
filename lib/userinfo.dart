//import 'package:TerminalApp/FadeAnimation.dart';
import 'package:flutter/material.dart';

class LoginInfo extends StatefulWidget {
  @override
  _LoginInfoState createState() => _LoginInfoState();
}
/*String _backgroundImage;
  String _setImage() {
    String _mTitle = "${ServerInfo.name.substring(7,ServerInfo.name.length-3)}";

    if (_mTitle == "Red Hat Enterprise Linux") {
      _backgroundImage = "images/redhat.jpg";
    } else if (_mTitle == "Ubuntu") {
      _backgroundImage = "assets/ubuntu.jpg";
    }
    else if (_mTitle == "Amazon Linux") {
      _backgroundImage = "images/aws.jpg";
    }
    else if(_mTitle ==""){
      _backgroundImage = 'images/dock.png';
    }
    print("_mTitle: $_mTitle");
    print("_backgroundImage: $_backgroundImage");
    return _backgroundImage; // here it returns your _backgroundImage value
  }*/

class _LoginInfoState extends State<LoginInfo> {
  bool themeSwitch = false;
  dynamic themeColors() {
    if (themeSwitch) {
      return Colors.black87;
    } else {
      return Colors.white;
    }
  }

  @override
  Future navigateToSubPage(context) async {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    var LoginBody = SafeArea(
        child: Opacity(
            opacity: 1,
            child: Container(
              color: themeColors(),
              /* padding: EdgeInsets.only(left: 5, top: 10),
    margin: EdgeInsets.fromLTRB(14, 20, 14, 20),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: themeColors(),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(20, 20),
          bottomLeft: Radius.elliptical(20, 20),
          topRight: Radius.elliptical(20, 20),
          bottomRight: Radius.elliptical(20, 20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ]),*/
              //alignment: Alignment.topCenter,
              // color: themeColors(),
              /*decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/one.png"),
                    fit: BoxFit.cover)
                  ),*/

              child: Column(
                children: [
                  /* Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(1, Container(
                width: width,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/1.png'),
                    fit: BoxFit.cover
                  )
                ),
              )),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(1, Container(
                width: width,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/1.png'),
                    fit: BoxFit.cover
                  )
                ),
              )),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(1, Container(
                width: width,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/1.png'),
                    fit: BoxFit.cover
                  )
                ),
              )),
            ),*/
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        color: Colors.lightBlue,
                        /*decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assets/1.png"),)
            ),*/
                        height: 30,
                        width: 300,
                        child: Center(
                            child: Text(
                          'Connected Server',
                          style: TextStyle(
                              color:
                                  themeSwitch ? Colors.white : Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))),
                  ),
                  Container(
                    color: themeColors(),
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.topCenter,
                    child: Text("hii"),
                    /*decoration: BoxDecoration(
           color: themeColors(),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: new AssetImage(_setImage()),
            ),
          ),*/
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, left: 50),
                        child: Text(
                          " Name: ",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, bottom: 0, left: 10),
                        child: Text(
                          "hii",
                          // ServerInfo.name.substring(7,ServerInfo.name.length-3),
                          style: TextStyle(
                            color: themeSwitch ? Colors.black87 : Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, left: 50),
                        child: Text(
                          " Version: ",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, bottom: 0, left: 10),
                        child: Text(
                          "hii",
                          // ServerInfo.ver1.substring(10, ServerInfo.ver1.length-3 ),
                          style: TextStyle(
                            color: themeSwitch ? Colors.black87 : Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    margin: EdgeInsets.only(top: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      color: Colors.lightBlue,
                      height: 30,
                      width: 250,
                      child: Center(
                          child: Text(
                        'User Info',
                        style: TextStyle(
                            color: themeSwitch ? Colors.white : Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 0),
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, left: 50),
                        child: Text(
                          " Name: ",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, bottom: 0, left: 10),
                        child: Text(
                          "hii",
                          // ServerInfo.name.substring(7,ServerInfo.name.length-3),
                          style: TextStyle(
                            color: themeSwitch ? Colors.black87 : Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, left: 50),
                        child: Text(
                          " Version: ",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        color: themeColors(),
                        margin: EdgeInsets.only(top: 10, bottom: 0, left: 10),
                        child: Text(
                          "hii",
                          // ServerInfo.ver1.substring(10, ServerInfo.ver1.length-3 ),
                          style: TextStyle(
                            color: themeSwitch ? Colors.black87 : Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Connected Server"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                navigateToSubPage(context);
              },
            ),
            backgroundColor: Colors.lightBlue,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: themeSwitch
                    ? Icon(
                        Icons.brightness_3,
                        color: themeSwitch ? Colors.black87 : Colors.white,
                      )
                    : Icon(
                        Icons.wb_sunny,
                        color: themeSwitch ? Colors.black87 : Colors.white,
                      ),
                onPressed: () {
                  setState(() {
                    themeSwitch = !themeSwitch;
                  });
                },
              )
            ],
          ),
          body: LoginBody,
        ));
  }
}

class CustomContainerShapeBorder extends CustomPainter {
  final double height;
  final double width;
  final Color fillColor;
  final double radius;

  CustomContainerShapeBorder({
    this.height: 400.0,
    this.width: 300.0,
    this.fillColor: Colors.white,
    this.radius: 50.0,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(0.0, -radius);
    path.lineTo(0.0, -(height - radius));

    path.conicTo(width, 0.0, width - radius, 0.0, 1);
    path.lineTo(radius, 0.0);
    path.conicTo(0.0, 0.0, 0.0, -radius, 1);
    path.close();
    canvas.drawPath(path, Paint()..color = fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
