import 'package:flutter/material.dart';

import '../paint.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [getGridView(2)],
        ),
      ),
    );
  }

  Widget getGridView(int itemCount) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: Expanded(
          child: GridView.builder(
            itemCount: itemCount,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return newAmudiYol();
              } else if (index == 1) {
                return newOfogiYol();
              }
              if (index == 3) {
                return newAmudiYol();
              } else if (index == 4) {
                return newOfogiYol();
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget newAmudiYol() {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.transparent,
          child: VerticalDivider(
            indent: 2,
            endIndent: 0,
            thickness: 3,
            width: 20,
            color: Colors.black,
          ),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.transparent,
          child: VerticalDivider(
            indent: 2,
            endIndent: 0,
            thickness: 3,
            width: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget newOfogiYol() {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.transparent,
          child: Divider(
            indent: 2,
            endIndent: 0,
            thickness: 3,
            height: 20,
            color: Colors.black,
          ),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.transparent,
          child: Divider(
            indent: 2,
            endIndent: 0,
            thickness: 3,
            height: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget newCharrah() {
    return Positioned(
      top: 50,
      left: 130,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Container(
              //   width: 200,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(18),
              //   ),
              //   child: Center(
              //     child: Text(
              //       'Monday',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 30,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(24),
                child: CustomPaint(
                  size: Size(100, 100),
                  painter: RPSCustomPainter(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
