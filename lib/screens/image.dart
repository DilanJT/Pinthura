import 'package:flutter/material.dart';
import 'package:homie_chat/constants.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';



class Imager extends StatefulWidget {
  static String id = "imager";

  @override
  _ImagerState createState() => _ImagerState();
}

class _ImagerState extends State<Imager> {

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
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  OutlineButton(
                    padding: EdgeInsets.all(8.0),
                    highlightedBorderColor: Colors.white,
                    child: Text(
                      "Full Screen",
                      style: TextStyle(
                        color: kMainTextColor,
                        fontSize: 16,
                        letterSpacing: 3,
                      ),
                    ),
                    borderSide: BorderSide(
                      width: 5.0,
                      color: kMainTextColor,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    onPressed: () {},
                  ),
                  OutlineButton.icon(
                    padding: EdgeInsets.all(5.0),
                    highlightedBorderColor: Colors.white,
                    icon: Icon(
                      Icons.file_download,
                      color: kMainTextColor,
                    ),
                    label: Text(
                      "Download",
                      style: TextStyle(
                        color: kMainTextColor,
                        fontSize: 16,
                        letterSpacing: 3,
                      ),
                    ),
                    borderSide: BorderSide(
                      width: 5.0,
                      color: kMainTextColor,
                    ),
                    onPressed: () async{
                      final status = await Permission.storage.request();
                      if(status.isGranted){
                        final externalDir = await getExternalStorageDirectory();
                        final id = await FlutterDownloader.enqueue(
                          url: "https://storage.googleapis.com/s3.codeapprun.io/userassets/dilan_jt/eiYhiXJSxPperson.jpg",
                          savedDir: externalDir.path,
                          fileName: "download",
                          showNotification: true,
                          openFileFromNotification: true,
                        );
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                height: 480.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/stairs.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: kMainTextColor,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Image Title",
                    style: TextStyle(
                      color: kMainTextColor,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Photo owner",
                    style: TextStyle(
                      color: kMainTextColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Image description goes here",
                    style: TextStyle(
                      color: kMainTextColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
