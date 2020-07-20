import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homie_chat/constants.dart';
import 'image_viewer.dart';

class IntroPage extends StatefulWidget {
  static String id = "intro_page";

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/person.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "PINTHURA",
                style: TextStyle(
                  // fontFamily: "Sansita",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffAFFF7E),
                  letterSpacing: 10,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OutlineButton(
                padding: EdgeInsets.all(5.0),
                highlightedBorderColor: Colors.white,
                child: Text(
                  "Enter",
                  style: TextStyle(
                    color: Color(0xffAFFF7E),
                    fontSize: 40,
                    letterSpacing: 10,
                  ),
                ),
                borderSide: BorderSide(
                  width: 5.0,
                  color: Color(0xffAFFF7E),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, ImageViewer.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
