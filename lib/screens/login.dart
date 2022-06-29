import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_one/components/countryTextFeild.dart';
import 'package:task_one/components/googleBtn.dart';
import 'package:task_one/components/header.dart';
import 'package:task_one/components/mybutton.dart';
import 'package:task_one/components/qLine.dart';
import 'package:task_one/screens/signUp.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(240.0),
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
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(
                  title: 'Sign in',
                ),
                SizedBox(
                  height: 25.0,
                ),
                CountryTextField(),
                SizedBox(
                  height: 20.0,
                ),
                MyButton(
                  textTitle: 'Sign In',
                  press: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  raduis: 8.0,
                  height: 50,
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                SizedBox(
                  height: 20.0,
                ),
                GoogleButton(),
                SizedBox(
                  height: 25.0,
                ),
                QLine(
                    txt: "Doesn't has any account?",
                    btnTxt: 'Register Here',
                    fun: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    }),
                SizedBox(height: 20.0,),
                Center(
                  child: Text(
                    'Please use the application according to policy rules.'
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
