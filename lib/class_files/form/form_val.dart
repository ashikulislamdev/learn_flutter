import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FormValid extends StatelessWidget {
  const FormValid({ Key? key }) : super(key: key);

  void DataList(){
    
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _inputName = TextEditingController();
    TextEditingController _inputPass = TextEditingController();
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _inputName,
            validator: (value){
              if (value != null) {
                return "Input feild is requred!";
              }
            },
            decoration: InputDecoration(
              labelText: "UserName",
              border: OutlineInputBorder(),
              hintText: "Enter Your UserName",
            ),
          ).p16(),
          TextFormField(
            controller: _inputPass,
            obscureText: true,
            validator: (value){
              if (value != null) {
                return "Input feild is requred!";
              }
            },
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              hintText: "Enter Your PassWord",
            ),
          ).p16(),
    
          ElevatedButton(
            onPressed: (){
              DataList();
            }, 
            child: "Insert".text.make().p4(),
          ),
          
        ],
      ),
    );
  }
}