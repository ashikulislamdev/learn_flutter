
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class NewForm extends StatefulWidget {
  @override
  _NewFormState createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  TextEditingController _name = TextEditingController();

  TextEditingController _password = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Learn Form".text.color(context.accentColor).make(),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/web-dev.png"),
            TextField(
              controller: _name,
              decoration: InputDecoration(hintText: "Enter Your Name", hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(),
              labelText: "UserName",
              ),
            ).p16(),

            TextField(
              controller: _password,
              decoration: InputDecoration(hintText: "Enter Your Password", hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(),
              labelText: "Password",
              ),
              obscureText: true,
            ).p16(),

              
            Row(
              children: [
                100.widthBox,
                "Tarms & Condition".text.xl2.make(),
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }
                ),
              ],
            ),

            Container(
              child: ElevatedButton(
                onPressed: (){}, 
                child: "Log-in".text.lg.make().py8(),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}