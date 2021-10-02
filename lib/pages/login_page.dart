
import 'package:flutter/material.dart';
import 'package:learn_app/utlts/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  String name = "";
  bool loginBtnCng = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loginBtnCng = true;
      });

      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(   //for scrolling up to down  just testing by add image height
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),  
              SizedBox(height: 20.0),
              Text(
                "Wellcome $name",
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
                      onChanged: (value){
                        name = value;
                        setState(() {
                          
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "UserName can't empty!";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Your Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't empty!";
                        }
                        else if (value.length < 6) {
                          return "Password length should be at least 6!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
        
                    InkWell(
                      onTap: () => moveToHome(context),

                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: loginBtnCng?35 : 100,
                        height: loginBtnCng?30 : 40,
                        alignment: Alignment.center,
        
                        child: 
        
                        loginBtnCng?Icon(Icons.done, color: Colors.white,) :
        
                        Text("Login",
                          style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: context.theme.buttonColor,
                          //shape: loginBtnCng?BoxShape.rectangle : BoxShape.circle,
                          borderRadius: BorderRadius.circular(loginBtnCng?50: 7),
                        ),
                      ),
                    ),
        
                    /* ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      }, 
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    ), */
              
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}