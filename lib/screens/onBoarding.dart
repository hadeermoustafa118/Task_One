import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_one/components/items.dart';
import 'package:task_one/components/mybutton.dart';
import 'package:task_one/components/qLine.dart';
import 'package:task_one/models/boardingModel.dart';
import 'package:task_one/screens/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_one/screens/signUp.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isLast = false;
  var controller = PageController();
  List<BoardingModel> boardItems = [
    BoardingModel(
      imgUrl: 'images/board1.png',
      title: 'Get food delivery where ever your place.',
      body:
          'We have a good team that can deliver food from and to anywhere you want in time.',
    ),
    BoardingModel(
      imgUrl: 'images/board2.png',
      title: 'Buy any food from your favourite restaurant.',
      body:
          'What ever the restaurant you like, you will find it in our application restaurants list, you can just select and order.',
    ),
    BoardingModel(
      imgUrl: 'images/board3.png',
      title: 'As fast as eye blink.',
      body:
          'Our professional team are trained to deliver food as fast as possible to get your satisfaction.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: const Text('Skip'),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                primary: Colors.black,
                backgroundColor: Colors.purple[50]),
          ),
          const SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '7',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.orangeAccent,
                  ),
                ),
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  if (index == boardItems.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => BuildItem(
                  model: boardItems[index],
                ),
                itemCount: boardItems.length,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: boardItems.length,
              effect: const ExpandingDotsEffect(
                expansionFactor: 4.0,
                dotColor: Colors.grey,
                dotWidth: 7.0,
                dotHeight: 8.0,
                spacing: 5.0,
                activeDotColor: Colors.orangeAccent,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyButton(
                textTitle: 'Get Started',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }),
            const SizedBox(
              height: 10.0,
            ),
            QLine(
                txt: "Don't have an account?",
                btnTxt: 'Sign Up',
                fun: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                })
          ],
        ),
      ),
    );
  }
}
