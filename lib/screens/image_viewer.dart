import 'package:flutter/material.dart';
import 'package:homie_chat/constants.dart';
import 'image.dart';

class ImageViewer extends StatefulWidget {
  static String id = "image-viewer";

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/person.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ListView(
              padding: EdgeInsets.only(left: 10, right: 10),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "PINTHURA",
                    style: TextStyle(
                      fontSize: 30,
                      color: kMainTextColor,
                      letterSpacing: 10,
                    ),
                  ),
                ),
                Container(
                  color: kMainTextColor,
                  height: 2,
                  width: double.infinity,
                  margin: EdgeInsets.all(20.0),
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),

                  ],
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),

                  ],
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),

                  ],
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),
                    ImageButton(image: "stairs",
                      onPress: (){
                        Navigator.pushNamed(context, Imager.id);
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {

  ImageButton({this.onPress, this.image});

  final Function onPress;
  final String image;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        margin: EdgeInsets.all(10.0),
        height: 180.0,
        width: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/$image.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: kMainTextColor,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(2, 3),
            ),
          ],
        ),
      ),
      onPressed: onPress
    );
  }
}
