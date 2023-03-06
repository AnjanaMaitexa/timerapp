
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/utils.dart';
import 'package:timerapp/widgets/progresswidget.dart';
import 'package:timerapp/widgets/timecontroller.dart';
import 'package:timerapp/widgets/timer.dart';
import 'package:timerapp/widgets/timercard.dart';
import 'package:timerapp/widgets/timerservice.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final provider=Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor:renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:renderColor(provider.currentState),
        title: Text("Timer",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w700),),
        actions: [
          IconButton(onPressed: (){
            Provider.of<TimerService>(context,listen: false).reset();
          },
              icon: Icon(Icons.refresh,
              color: Colors.white,),
          iconSize: 40,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15,),
              TimerCard(),
              SizedBox(height: 30,),
              TimerOptions(),
              SizedBox(height: 30,),
              TimeController(),
              SizedBox(height:30,),
              ProgressWidget(),


            ],
          ),
        ),
      ),
    );
  }
}
