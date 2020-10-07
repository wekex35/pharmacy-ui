import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy/proiders/main_provider.dart';
import 'package:provider/provider.dart';
import 'onloading/onboarding/onboarding_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MainProvider()),
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,

      // systemNavigationBarColor: ThemeColor.primaryColor,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine Delivery',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
   /*  Future.delayed(Duration(milliseconds: 50), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => NavigationScreen()));
    }); */
  }

  @override
  Widget build(BuildContext context) {
    //
    return OnboardingScreen();
  }
}
