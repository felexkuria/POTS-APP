import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../Widgets/card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MonthsSixToSeven extends StatefulWidget {
  const MonthsSixToSeven({ Key? key }) : super(key: key);

  @override
  _MonthsSixToSevenState createState() => _MonthsSixToSevenState();
}

class _MonthsSixToSevenState extends State<MonthsSixToSeven> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MONTHS 6-7',
          style: TextStyle(
            color: kTitleColor,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  boxStyle: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadiusCard),
                    color: Colors.white,
                  ),
                  cardChild: Center(
                    child: Text(
                      "Workout Info",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        wordSpacing: 1,
                        color: kTitleColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              // Expanded(
              //     child: ReusableCard(
              //   boxStyle: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10.0), color: Colors.white),
              //   cardChild: Center(
              //     child: Column(children: <Widget>[
              //       Text(
              //         "Progress Panel",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //           wordSpacing: 1,
              //           color: kTitleColor,
              //           fontWeight: FontWeight.w900,
              //           fontSize: 20,
              //         ),
              //       ),

              //     ]),
              //   ),
              // ))
            ],
          ),
          SlidingUpPanel(
            renderPanelSheet: false,
            maxHeight: 750, //make sure to 
            panel: _floatingPanel(),
            collapsed: _floatingCollapsed(),
          ),
        ],
      ),
    );
  }
}


//functions which modify the floating and collapsed slide up widget
Widget _floatingCollapsed(){
  return Container(
    decoration: BoxDecoration(
      color: kTitleColor,
      // borderRadius: BorderRadius.only(topLeft: Radius.circular(borderRadiusCard), topRight: Radius.circular(borderRadiusCard)),
    ),
    // margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
    child: Center(
      child: Text(
        "Progress Tab",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20
        ),
      ),
    ),
  );
}

Widget _floatingPanel(){
  return Container(
    decoration: BoxDecoration(
      color: kTitleColor,
      borderRadius: BorderRadius.all(Radius.circular(40)),
      boxShadow: [
        BoxShadow(
          blurRadius: 10.0,
          color: Colors.grey,
        ),
      ]
    ),
    margin: const EdgeInsets.all(15.0),
    child: Center(
      child: Text("This is the SlidingUpPanel when open"),
    ),
  );
}