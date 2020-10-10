import 'package:flutter/material.dart';
import 'package:time_table/models/time_table_model.dart';


class ShiftsWidget extends StatelessWidget {
  List<Shifts> shifts;
  ShiftsWidget({this.shifts});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
       physics: NeverScrollableScrollPhysics(),
       children: shifts.map((e) {
         return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(e.start[0].hour.toString() + ' : ' + e.start[0].minute.toString()),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(e.stop[0].hour.toString() + ' : ' + e.stop[0].minute.toString()),
             )
           ]
         );
       }).toList()
      )
    );
  }
}

