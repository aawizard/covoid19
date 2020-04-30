import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:covoid19/services/corona_update.dart';
import 'main_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    print('hi');
    getCovoidData();
    super.initState();
  }

  void getCovoidData() async {
    var coronaData = await CoronaUpdate().getCoronaData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MainScreen(
          coronaData: coronaData,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.red,
          size: 50.0,
        ),
      ),
    );
  }
}
