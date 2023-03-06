import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/utils.dart';
import 'package:timerapp/widgets/timerservice.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final seconds = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          provider.currentState,
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  (provider.currentDuration ~/ 60).toString(),
                  style: textstyl(
                      70, renderColor(provider.currentState), FontWeight.w700),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              ":",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.red[200],
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  seconds == 0
                      ? "${seconds.round()}0"
                      : seconds.round().toString(),
                  style: textstyl(
                       70,
                      renderColor(provider.currentState), FontWeight.w700),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
// 60 ->1 minute(60~/60)
// 61 ->1 minute and 1 seconds(61~/60)(61%60)//1rem
// 61 ->1 minute and 2 seconds(62~/60)(62%60)//2rem
