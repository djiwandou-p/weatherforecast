import 'package:flutter/material.dart';

class Sequence extends StatefulWidget {
  static const String routeName = "sequence";
  @override
  _SequenceState createState() => _SequenceState();
}

class _SequenceState extends State<Sequence> {
  TextEditingController inputCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sequential"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            testCase(context),
            TextFormField(
              controller: inputCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Input digit (eg. 15)",
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: Text("Get result"),
              style: Theme.of(context).textButtonTheme.style.copyWith(
                    minimumSize: MaterialStateProperty.all(Size(double.maxFinite, 38)),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget testCase(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Sequence number 1 to N in a row",
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: ": 12345678910111213141516192021...N",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: "The input is expected digit example : ",
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: "Digit: 15",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: "The expected output is : ",
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: "15th digit number is 2 lies on number 12",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
