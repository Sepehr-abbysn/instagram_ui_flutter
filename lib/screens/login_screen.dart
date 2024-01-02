import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
    negahban2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _getImageContainer(),
            _getContainerBox(),
          ],
        ),
      ),
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      top: 25,
      bottom: 0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.fitWidth,
              width: double.infinity,
              image: AssetImage(
                "images/rocket.png",
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _getContainerBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Image(image: AssetImage('images/mood.png'))
                    ],
                  ),
                  SizedBox(height: 34),
                  _getTextField(
                    focus: negahban1,
                    labltext: "Email",
                  ),
                  SizedBox(height: 32),
                  _getTextField(focus: negahban2, labltext: "Password")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getTextField({required FocusNode focus, required String labltext}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 44),
      child: TextField(
        style: TextStyle(color: Colors.white, fontFamily: "GM", fontSize: 16),
        focusNode: focus,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: labltext,
          labelStyle: TextStyle(
            fontFamily: 'GM',
            fontSize: 20,
            color: focus.hasFocus ? Color(0xffF35383) : Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xffC5C5C5), width: 3.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              width: 3,
              color: Color(0xffF35383),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    negahban1.dispose();
    negahban2.dispose();
    super.dispose();
  }
}
//  Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 44),
//                     child: TextField(
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: "GM", fontSize: 16),
//                       focusNode: negahban2,
//                       decoration: InputDecoration(
//                         contentPadding:
//                             EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                         labelText: 'Password',
//                         labelStyle: TextStyle(
//                           fontFamily: 'GM',
//                           fontSize: 20,
//                           color: negahban2.hasFocus
//                               ? Color(0xffF35383)
//                               : Colors.white,
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                           borderSide:
//                               BorderSide(color: Color(0xffC5C5C5), width: 3.0),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                           borderSide: BorderSide(
//                             width: 3,
//                             color: Color(0xffF35383),
//                           ),
//                         ),
//                       ),
//                     ),
//                   )