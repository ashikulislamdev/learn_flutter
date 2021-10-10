import 'package:flutter/material.dart';
import 'package:learn_app/pages/payment_ui/colors.dart';

class PaymentApp extends StatefulWidget {
  const PaymentApp({ Key? key }) : super(key: key);

  @override
  _PaymentAppState createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        child: Stack(
          children: [
            _headSection(),
            _listBils(),
          ],
        ),
      ),
    );
  }

  _headSection(){
    return Container(
      height: 300,
      child: Stack(
        children: [
          _mainBackground(),
          _curbeImage(),
          _buttonContainer(),
        ],
      ),
    );
  }
  _mainBackground(){
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          )
        ),
      )
    );
  }
  _curbeImage(){
    return Positioned(
      left: 0,
      right: -2,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/curve.png"),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
  _buttonContainer(){
    return Positioned(
      bottom: 0,
      right: 48,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/lines.png")
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 1),
              color: Color(0xff11324d).withOpacity(0.2),
            )
          ],
        ),
        //child: Icon(Icons.bar_chart, size: 50,),
      ),
    );
  }

  _listBils(){
    return Positioned(
      top: 310,
      child: Container(
        width: 300,
        height: 100,
        color: Colors.red,
      ), 
    );
  }
}