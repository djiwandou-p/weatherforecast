import 'package:flutter/material.dart';

class Sequence extends StatefulWidget {
  static const String routeName = "sequence";
  @override
  _SequenceState createState() => _SequenceState();
}

class _SequenceState extends State<Sequence> {
  TextEditingController _inputCtrl = new TextEditingController();
  String _sequence = "012345678910111213141516192021";
  bool _resultStatus = false;
  String _result = "";
  String _exactResult = "";

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
              controller: _inputCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Input digit (eg. 15)",
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () => onSubmit(context),
              child: Text("Get result"),
              style: Theme.of(context).textButtonTheme.style.copyWith(
                    minimumSize: MaterialStateProperty.all(
                      Size(double.maxFinite, 38),
                    ),
                  ),
            ),
            SizedBox(height: 15),
            testResult(context),
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

  Widget testResult(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Result : "),
          Visibility(
            visible: _resultStatus,
            child:
                Text("${_inputCtrl.text}th digit number is $_exactResult lies on number $_result."),
            replacement: Text(_onErrorMessage),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
    );
  }

  void onSubmit(BuildContext context) {
    int digit = int.tryParse(_inputCtrl.text);
    if (digit < _sequence.length) {
      if (digit == 0) {
        setState(() => _resultStatus = false);
        return null;
      }
      String leading = "";
      String trailing = "";
      if (digit > 10 && digit % 10 != 0) leading = _sequence[digit - 1];
      if (digit % 10 == 0) trailing = _sequence[digit + 1];
      setState(() {
        _resultStatus = true;
        _result = "$leading${_sequence[digit]}$trailing";
        _exactResult = _sequence[digit];
      });
      return null;
    }
    setState(() => _resultStatus = false);
    return null;
  }

  String get _onErrorMessage {
    int digit = int.tryParse(_inputCtrl.text);
    return ((digit ?? 0) <= _sequence.length)
        ? ""
        : "Invalid digit, number is limited to ${_sequence.length} digit numbers only";
  }
}
