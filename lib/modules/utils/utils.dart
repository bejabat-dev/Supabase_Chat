import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateAndClear(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => widget), (route) => false);
}

void showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CupertinoActivityIndicator(),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Memuat')
                ],
              ),
            ),
          ),
        );
      });
}

void showErrorDialog(BuildContext context, String text) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(16),
          actionsPadding: EdgeInsets.only(bottom: 16),
          actions: [
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Konfirmasi',
                    style: TextStyle(color: Colors.blue),
                  )),
            )
          ],
          content: IntrinsicHeight(
            child: Center(child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(text),
            )),
          ),
        );
      });
}
