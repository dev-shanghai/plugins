// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:android_alarm_manager_example/test.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

void printMessage(String msg) => print('[${DateTime.now()}] $msg');

void printPeriodic() {
printMessage("Periodic!");
// FlutterRingtonePlayer.play(
//   android: AndroidSounds.notification,
//   ios: IosSounds.glass,
//   looping: true, // Android only - API >= 28
//   volume: 0.1, // Android only - API >= 28
//   asAlarm: false, // Android only - all APIs
// );



} 
void printOneShot() {
  // printMessage("One shot!");
  // FlutterRingtonePlayer.play(
  //   android: AndroidSounds.notification,
  //   ios: IosSounds.glass,
  //   looping: true, // Android only - API >= 28
  //   volume: 0.1, // Android only - API >= 28
  //   asAlarm: false, // Android only - all APIs
  // );

}
final int periodicID = 0;
final int oneShotID = 1;
enum PlayerState { stopped, playing, paused }

typedef void OnError(Exception exception);

const kUrl = "http://www.rxlabz.com/labz/audio2.mp3";
const kUrl2 = "http://www.rxlabz.com/labz/audio.mp3";


Future<void> main() async {
  

  // WidgetsFlutterBinding.ensureInitialized();

  // final int helloAlarmID = 0;
  
  
  await runApp(MyApp());
  try {
    await AndroidAlarmManager.initialize();
  } catch (e) {
    print(e.toString());
  }
  // await AndroidAlarmManager.periodic(const Duration(seconds: 10), helloAlarmID,appRunner);

  // printMessage("main run");
  

  



}

appRunner() {
  print('app runner 2');
  return runApp(new MaterialApp(home: new AlarmShow()));
}


  // /// confirmation dialog
  // Future<bool> _showConfirmationDialog() {
  //   // flutter defined function
  //   return showDialog<bool>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       // return object of type Dialog
  //       return AlertDialog(
  //         title: Text('Localization.of(context).generalPolice'),
  //         content: Text('Localization.of(context).callPoliceConfirmation'),
  //         actions: <Widget>[
  //           // usually buttons at the bottom of the dialog
  //           FlatButton(
  //             child: Text('Localization.of(context).generalYes'),
  //             onPressed: () {
  //               Navigator.pop(context, true);
  //             },
  //           ),
  //           FlatButton(
  //             child: Text(
  //               'Localization.of(context).generalNo',
  //             ),
  //             onPressed: () {
  //               Navigator.pop(context, false);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

class AlarmShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text('alarm'),
            new Icon(Icons.alarm)
          ])));
  }
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  bool alarmAdded;

@override
  void initState() {
   alarmAdded = false;
    super.initState();
  }
    @override
  void dispose() {
    print('disposed.');
    super.dispose();
  }

  AudioPlayer audioPlayer;
  bool alarmFired = false;
  @override
  Widget build(BuildContext context) {

    if (!alarmAdded) {
      _addAlarm();
    }
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: TestWidget(alarmFired: alarmFired,)
        ),
      );


      
  }

  Future<bool> _addAlarm() async {

    // await AndroidAlarmManager.periodic(
    //   const Duration(seconds: 5), periodicID, (){

    //     print('Fired');
    //     // setState(() {
    //     //   alarmFired = true;
    //     // });
    //   },
    //    rescheduleOnReboot: true, wakeup: true, exact: true);
    // await AndroidAlarmManager.oneShot(
    //   const Duration(seconds: 10), oneShotID, printOneShot, alarmClock: true, rescheduleOnReboot: true);

      return true;
  }

}




