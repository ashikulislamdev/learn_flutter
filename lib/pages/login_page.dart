import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover,),
          SizedBox(height: 20.0),
          Text(
            "Wellcome",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
            ),
          ),

          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "Your UserName",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Your Password",
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: (){
                    print("Finished !");
                  }, 
                  child: Text("Login"),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}