import 'package:flutter/material.dart';
import 'date_range_picker.dart' as DateRagePicker;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(home: ExampleApp()));
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: TextButton(
            // color: Colors.deepOrangeAccent,
            onPressed: () async {
              final List<DateTime>? picked = await DateRagePicker.showDatePicker(
                  context: context,
                  initialFirstDate: new DateTime.now(),
                  initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                  firstDate: new DateTime(2021, 1, 1),
                  lastDate: new DateTime(2025, 1, 1));
              if (picked != null && picked.length == 2) {
                print(picked);
              }
            },
            child: new Text("Pick date range"),
          )),
    );
  }
}
