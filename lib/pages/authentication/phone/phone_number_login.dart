import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/pages/authentication/phone/otp.dart';

class phonenumber extends StatefulWidget {
  @override
  _phonenumberState createState() => _phonenumberState();
}

class _phonenumberState extends State<phonenumber> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Image.asset(
                  "assets/undraw_android_jr64.png",
                  height: 100,
                )),
            Container(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Text(
                "Please Login With Your Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  'Phone Authentication',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+91'),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            )
          ]),
          Container(

            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OtpAuth(_controller.text)));
              },
              child: Icon(Icons.check_circle),
            ),
          )
        ],
      ),
    );
  }
}
