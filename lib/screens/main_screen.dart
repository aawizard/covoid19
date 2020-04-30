import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covoid19/utilites/constants.dart';
import 'package:covoid19/utilites/card.dart';
import 'package:covoid19/screens/drawer.dart';
import 'package:covoid19/services/corona_update.dart';

class MainScreen extends StatefulWidget {
  MainScreen({@required this.coronaData});
  final coronaData;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<int> world = new List(6);
  List<int> india = new List(6);

//0 : old case Confirmed
//1: new case Confirmed
//2 : old case Recovered
//3: new case Recovered
//4 : old case Dead
//5: new case Dead

  @override
  void initState() {
    super.initState();

    updateUiWorld(widget.coronaData);
    updateUiIndia(widget.coronaData);
  }

  void updateUiWorld(dynamic coronaStats) {
    if (coronaStats == null) {
      world=[0,0,0,0,0,0];
      return;
    }
    world[0]=coronaStats['Global']['TotalConfirmed'];
    world[1]=coronaStats['Global']['NewConfirmed'];
    world[2]=coronaStats['Global']['TotalRecovered'];
    world[3]=coronaStats['Global']['NewRecovered'];
    world[4]=coronaStats['Global']['TotalDeaths'];
    world[5]=coronaStats['Global']['NewDeaths'];

  }

  void updateUiIndia(dynamic coronaStats) {
    if (coronaStats == null) {
      india=[0,0,0,0,0,0];
      return;
    }
    india[0]=coronaStats['Countries'][98]['TotalConfirmed'];
    india[1]=coronaStats['Countries'][98]['NewConfirmed'];
    india[2]=coronaStats['Countries'][98]['TotalRecovered'];
    india[3]=coronaStats['Countries'][98]['NewRecovered'];
    india[4]=coronaStats['Countries'][98]['TotalDeaths'];
    india[5]=coronaStats['Countries'][98]['NewDeaths'];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Covid19',
      ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onPressed: () async{
                var coronaData = await CoronaUpdate().getCoronaData();
                setState(() {

                  updateUiIndia(coronaData);
                  updateUiWorld(coronaData);
                });


              },
            )
          ]),
      drawer: drawer(),
      body: Container(
        decoration: kbackgroundImage,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
              child: Center(
                child: Text('Corona Meter',
                style: kCardHeading,),
              ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
            ),
            CardReuse(
              cardName: 'World',
              oldCasesConfirmed: world[0],
              newCasesConfirmed: world[1],
              oldCasesRecovered: world[2],
              newCasesRecovered: world[3],
              oldCasesDead: world[4],
              newCasesDead: world[5],
            ),
            CardReuse(
              cardName: 'India',
              oldCasesConfirmed: india[0],
              newCasesConfirmed: india[1],
              oldCasesRecovered:india[2],
              newCasesRecovered: india[3],
              oldCasesDead: india[4],
              newCasesDead: india[5],
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}

