import 'package:flutter/material.dart';

class kaizenroutes {
  static Widget Redirect(
      Widget routPage, String pageName, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 400,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlue),
              overlayColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)))),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return routPage;
                },
              ),
            );
          },
          child: Text(pageName, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
