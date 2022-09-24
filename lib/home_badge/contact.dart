import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple.shade300,
      child:Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset("images/cover5.png"

              )),
          const Expanded(
              flex: 3,
              child:Padding(
                padding: EdgeInsets.only(right: 30.0,top: 20),
                child: Text('''
          تواصلك معانا بيسعدنا ...لو في أي
          مشكلة بتواجهك سواء بخصوص التطبيق
          أو المحاضرات
          تواصل معانا
          و لو عندك أي إقتراح لتطوير التطبيق نحب
          جدًا نسمع منك
          01126745029
          ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                      height: 2,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
