// class SingleDataFromTable {
//   Valid valid;
//   List<String> openingDays;
//   String sId;
//   List<Shifts> shifts;
//   String hospital;
//   StaffRoster staffRoster;
//   String createdAt;
//   String updatedAt;
//   int iV;
//
//   SingleDataFromTable(
//       {this.valid,
//         this.openingDays,
//         this.sId,
//         this.shifts,
//         this.hospital,
//         this.staffRoster,
//         this.createdAt,
//         this.updatedAt,
//         this.iV});
//
//   SingleDataFromTable.fromJson(Map<String, dynamic> json) {
//     valid = json['valid'] != null ? new Valid.fromJson(json['valid']) : null;
//     openingDays = json['openingDays'].cast<String>();
//     sId = json['_id'];
//     if (json['shifts'] != null) {
//       shifts = new List<Shifts>();
//       json['shifts'].forEach((v) {
//         shifts.add(new Shifts.fromJson(v));
//       });
//     }
//     hospital = json['hospital'];
//     staffRoster = json['staffRoster'] != null
//         ? new StaffRoster.fromJson(json['staffRoster'])
//         : null;
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.valid != null) {
//       data['valid'] = this.valid.toJson();
//     }
//     data['openingDays'] = this.openingDays;
//     data['_id'] = this.sId;
//     if (this.shifts != null) {
//       data['shifts'] = this.shifts.map((v) => v.toJson()).toList();
//     }
//     data['hospital'] = this.hospital;
//     if (this.staffRoster != null) {
//       data['staffRoster'] = this.staffRoster.toJson();
//     }
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     return data;
//   }
// }
//
// class Valid {
//   int start;
//   int stop;
//
//   Valid({this.start, this.stop});
//
//   Valid.fromJson(Map<String, dynamic> json) {
//     start = json['start'];
//     stop = json['stop'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['start'] = this.start;
//     data['stop'] = this.stop;
//     return data;
//   }
// }
//
// class Stop {
//   String sId;
//   int hour;
//   int minute;
//
//   Stop({this.sId, this.hour, this.minute});
//
//   Stop.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     hour = json['hour'];
//     minute = json['minute'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['hour'] = this.hour;
//     data['minute'] = this.minute;
//     return data;
//   }
// }
//
// class Shifts {
//   List<Start> start;
//   List<Stop> stop;
//   String sId;
//
//   Shifts({this.start, this.stop, this.sId});
//
//   Shifts.fromJson(Map<String, dynamic> json) {
//     if (json['start'] != null) {
//       start = new List<Start>();
//       json['start'].forEach((v) {
//         start.add(new Start.fromJson(v));
//       });
//     }
//     if (json['stop'] != null) {
//       stop = new List<Stop>();
//       json['stop'].forEach((v) {
//         stop.add(new Stop.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.start != null) {
//       data['start'] = this.start.map((v) => v.toJson()).toList();
//     }
//     if (this.stop != null) {
//       data['stop'] = this.stop.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Start {
//   String sId;
//   int hour;
//   int minute;
//
//   Start({this.sId, this.hour, this.minute});
//
//   Start.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     hour = json['hour'];
//     minute = json['minute'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['hour'] = this.hour;
//     data['minute'] = this.minute;
//     return data;
//   }
// }
//
// class StaffRoster {
//   String sId;
//   Monday monday;
//   Monday tuesday;
//   Monday wednesday;
//   Monday thursday;
//   Monday friday;
//   Monday saturday;
//   Monday sunday;
//   String createdAt;
//   String updatedAt;
//   int iV;
//
//   StaffRoster(
//       {this.sId,
//         this.monday,
//         this.tuesday,
//         this.wednesday,
//         this.thursday,
//         this.friday,
//         this.saturday,
//         this.sunday,
//         this.createdAt,
//         this.updatedAt,
//         this.iV});
//
//   StaffRoster.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     monday =
//     json['monday'] != null ? new Monday.fromJson(json['monday']) : null;
//     tuesday =
//     json['tuesday'] != null ? new Monday.fromJson(json['tuesday']) : null;
//     wednesday = json['wednesday'] != null
//         ? new Monday.fromJson(json['wednesday'])
//         : null;
//     thursday =
//     json['thursday'] != null ? new Monday.fromJson(json['thursday']) : null;
//     friday =
//     json['friday'] != null ? new Monday.fromJson(json['friday']) : null;
//     saturday =
//     json['saturday'] != null ? new Monday.fromJson(json['saturday']) : null;
//     sunday =
//     json['sunday'] != null ? new Monday.fromJson(json['sunday']) : null;
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     if (this.monday != null) {
//       data['monday'] = this.monday.toJson();
//     }
//     if (this.tuesday != null) {
//       data['tuesday'] = this.tuesday.toJson();
//     }
//     if (this.wednesday != null) {
//       data['wednesday'] = this.wednesday.toJson();
//     }
//     if (this.thursday != null) {
//       data['thursday'] = this.thursday.toJson();
//     }
//     if (this.friday != null) {
//       data['friday'] = this.friday.toJson();
//     }
//     if (this.saturday != null) {
//       data['saturday'] = this.saturday.toJson();
//     }
//     if (this.sunday != null) {
//       data['sunday'] = this.sunday.toJson();
//     }
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     return data;
//   }
// }
//
// class Monday {
//   List<String> l1;
//   List<String> l2;
//   List<String> l3;
//
//   Monday({this.l1, this.l2, this.l3});
//
//   Monday.fromJson(Map<String, dynamic> json) {
//     l1 = json['1'].cast<String>();
//     l2 = json['2'].cast<String>();
//     l3 = json['3'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['1'] = this.l1;
//     data['2'] = this.l2;
//     data['3'] = this.l3;
//     return data;
//   }
// }
