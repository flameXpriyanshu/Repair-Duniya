import 'package:flutter/material.dart';

class Show_Date extends StatefulWidget {
  const Show_Date({super.key});

  @override
  State<Show_Date> createState() => _Show_DateState();
}

class _Show_DateState extends State<Show_Date> {
  @override
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year + 1),
            lastDate: DateTime(DateTime.now().year - 1))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: _showDatePicker,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text('Date'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
