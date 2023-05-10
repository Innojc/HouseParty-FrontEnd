import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Get Started",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);

              DateTime startdate = DateTime.now().toLocal();
              var date = DateFormat.yMMMMd().format(startdate);
              String time = DateFormat("HH:mm:ss").format(DateTime.now());
              print(date + "   time  " + time);
             /* FirebaseFirestore.instance.collection('SignIn_Time').add({
                'date': date,
                'time': time,
              });*/
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
