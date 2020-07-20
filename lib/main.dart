import 'package:flutter/material.dart';
import 'screens/image.dart';
import 'screens/image_viewer.dart';
import 'screens/into_page.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinthura',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: IntroPage.id,
      routes: {
        IntroPage.id: (context) => IntroPage(),
        ImageViewer.id: (context) => ImageViewer(),
        Imager.id: (context) => Imager()
      },
    );
  }
}
