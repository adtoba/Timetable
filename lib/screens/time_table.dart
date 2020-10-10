import 'package:flutter/material.dart';
import 'package:time_table/commons/styles.dart';
import 'package:time_table/models/time_table_model.dart';
import 'package:time_table/view_models/gorals_view_model.dart';
import 'package:provider/provider.dart';
import 'package:time_table/widgets/opening_days.dart';
import 'package:time_table/widgets/shifts.dart';
import 'package:time_table/widgets/staff_roaster.dart';
import 'package:tuple/tuple.dart';

class TimeTableScreen extends StatefulWidget {
  @override
  _TimeTableScreenState createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  GoralsViewModel model;

  @override
  void initState() {
    context.read<GoralsViewModel>().fetchTimeTable();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    model = context.watch<GoralsViewModel>();
    return Scaffold(
      appBar: AppBar(title: Text('Timetable (Parse JSON)')),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Selector<GoralsViewModel, Tuple3<bool, String, TimetableModel>>(
                  selector: (_, model) =>
                      Tuple3(model.busy, model.message, model.model),
                  builder: (context, data, child) {
                    if (data.item1) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (data.item2 != null) {
                      return Column(
                        children: [
                          Center(child: Text(model.message)),
                          FlatButton(
                              onPressed: () {
                                model.fetchTimeTable();
                                model.resetErrorMessage('');
                              },
                              child: Text('RETRY'))
                        ],
                      );
                    }

                    return ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: model.model.data.map((e) {
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ExpansionTile(
                                  title: Text('Opening days',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                  children: [
                                    OpeningDaysWidget(
                                        openingDays: e.openingDays),
                                  ],
                                ),
                                SizedBox(height: 30.0),
                                ExpansionTile(
                                  expandedCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  title: Text('Validity',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Start: ${e.valid.start}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Stop: ${e.valid.stop}'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30.0),
                                ExpansionTile(
                                  title: Text('Shifts',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                  children: [
                                    ShiftsWidget(shifts: e.shifts),
                                  ],
                                ),
                                ExpansionTile(
                                  title: Text('Roaster',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                  children: [
                                    StaffRoasterWidget(
                                      roaster: e.staffRoster,
                                      openingDays: e.openingDays,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
