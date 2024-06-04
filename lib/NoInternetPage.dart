import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
// Other imports if necessary

class NoInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset('assets/noInternet.json', width: 500, height: 400,),           
            MedControls.extraLargelabel('Oops!'),      
            const SizedBox(height: 5),    
            MedControls.normallabelBold('No Internet Connection'),      
            const SizedBox(height: 5),     
            MedControls.normallabel('Please check your network settings'),
            const SizedBox(height: 20),
            MedControls.kaizenRetryButton("Retry",() async {
                 await Navigator.popAndPushNamed(context, '/');
              }),
           
          ],
        ),
      ),
    );
  }
}
