import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_one/components/countryTextFeild.dart';
import 'package:task_one/components/googleBtn.dart';
import 'package:task_one/components/header.dart';
import 'package:task_one/components/myTextField.dart';
import 'package:task_one/components/mybutton.dart';
import 'package:task_one/components/qLine.dart';
import 'package:task_one/screens/login.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Header(title: 'Register', ),
                SizedBox(height: 20.0,),
                MyTextField(validateText: 'email must not be empty', hintTxt: 'example@gmail.com', txt: 'Email'),
                SizedBox(height: 15.0,),
                CountryTextField(),
                SizedBox(height: 15.0,),
                MyTextField(validateText: 'password must not be empty', hintTxt: 'password', txt: 'password'),
                SizedBox(height: 20.0,),
                MyButton(textTitle: 'Register', press: (){
                  if (formKey.currentState!.validate()) {}
                }),
                SizedBox(height: 20.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                      width: 150,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                      width: 150,
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                GoogleButton(),
                SizedBox(height: 10.0,),
                QLine(txt: 'Has any account? ', btnTxt: 'Sign in here', fun: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Login()));}),
                Column(children: [
                  Text('By registeration you are accepting our '),
                  TextButton(
                      onPressed: () {

                      },
                      child:  Text(
                        'Terms and Conditions',
                        style: TextStyle(color: Colors.teal),
                      ))
                ],)

              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
