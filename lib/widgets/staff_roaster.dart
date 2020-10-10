import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_table/commons/styles.dart';
import 'package:time_table/models/time_table_model.dart';

class StaffRoasterWidget extends StatelessWidget {
  final StaffRoster roaster;
  final List<String> openingDays;

  const StaffRoasterWidget({Key key, this.roaster, this.openingDays})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Monday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.monday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.monday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.monday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Tuesday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.tuesday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.tuesday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.tuesday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Wednesday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.wednesday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.wednesday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.wednesday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Thursday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.thursday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.thursday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.thursday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Friday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.friday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.friday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.friday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Saturday', style: MKStyles.dayStyle),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.saturday.l1.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.saturday.l2.map((e) {
            return Text(e);
          }).toList(),
        ),
        Divider(),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: roaster.saturday.l3.map((e) {
            return Text(e);
          }).toList(),
        ),
        Visibility(
            visible: openingDays.length == 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text('Sunday', style: MKStyles.dayStyle),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: roaster.sunday.l1.map((e) {
                    return Text(e);
                  }).toList(),
                ),
                Divider(),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: roaster.sunday.l2.map((e) {
                    return Text(e);
                  }).toList(),
                ),
                Divider(),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: roaster.sunday.l3.map((e) {
                    return Text(e);
                  }).toList(),
                ),
              ],
            )),
      ]),
    );
  }
}
