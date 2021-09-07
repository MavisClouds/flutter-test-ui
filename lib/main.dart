import 'package:Flutter_UI_Test/Screens/test_1.dart';
import 'package:Flutter_UI_Test/Screens/test_2.dart';
import 'package:Flutter_UI_Test/Screens/test_3.dart';
import 'package:Flutter_UI_Test/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 865),
        builder: () => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primaryColor: Colors.white,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MyHomePage(),
            ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Made by',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: responsiveFont(18)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Parisya Shidqi Yusyarnanda',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: responsiveFont(18)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                      child: textButton("Test 1",
                          padVert: 16,
                          padHoriz: 0,
                          radius: 24,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LacakPesanan(),
                              )))),
                  Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                      child: textButton("Test 2",
                          padVert: 16,
                          padHoriz: 0,
                          radius: 24,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PortoVendor(),
                              )))),
                  Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                      child: textButton("Test 3",
                          padVert: 16,
                          padHoriz: 0,
                          radius: 24,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Finansial(),
                              )))),
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
