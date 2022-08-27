import 'package:dahiproje/core/utils/constants.dart';
import 'package:dahiproje/features/home/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Image.asset('assets/images/splash.png'),
              SizedBox(height: 50),
              RichText(text: const TextSpan(text: "A",style: TextStyle(color: Colors.black,fontSize: 32),
                  children: const [TextSpan(text: " healthy life",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 32)),
                    TextSpan(text: " is the best \n            kind of life.",style: TextStyle(color: Colors.black,fontSize: 32))]
              )
              ),
              SizedBox(height: 40),
              Container(
                child: Text("Lorem ipsum dolor sit a amet, consectetur \n adipiscing elit.In parttcitor aelit vel rutrum  \n vitae pellentesque arnare sit.Est semper \n                    ut at amet scelerisque",
                  style: TextStyle(fontSize: 20,color: Colors.grey.shade600),),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Constants.appBarColor,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16)
                  ),
                  child: Text("Get Started",
                    style: TextStyle(fontSize: 20,color: Colors.white),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeView()),
                    ); },

                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}