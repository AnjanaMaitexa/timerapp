
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/utils.dart';
import 'package:timerapp/widgets/timerservice.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${provider.rounds}/4",style: textstyl(30,Colors.grey[350],FontWeight.bold),),
            Text("${provider.goal}/12",style: textstyl(30,Colors.grey[350],FontWeight.bold),)
          ],
        ),
        SizedBox(height: 10,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    Text("ROUND",style: textstyl(25,Colors.white,FontWeight.bold),),
    Text("GOAL",style: textstyl(25,Colors.white,FontWeight.bold),)


      ],
    ),
    ],
    );
  }
}
