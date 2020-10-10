import 'package:flutter/material.dart';


class OpeningDaysWidget extends StatelessWidget {
  final List<String> openingDays;

  const OpeningDaysWidget({Key key, this.openingDays}) : super(key: key);

  String upperCaseFirst(String s) =>
      (s ?? '').length < 1 ? '' : s[0].toUpperCase() + s.substring(1);


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: openingDays.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.grey,),
                SizedBox(width: 10.0),
                Text(upperCaseFirst(e))
              ],
            ),
          );
        }).toList()
      ),
    );
  }
}
