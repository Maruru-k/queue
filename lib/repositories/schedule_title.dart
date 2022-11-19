// Dart imports:
import 'dart:convert';
import 'dart:developer';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:queue/canstants.dart';

// Project imports:

// class ScheduleTitleRepository {
//   final String _url = "$baseApiUrl/v2/getSchedule";
//
//   ScheduleTitleRepository();
//
//   Future<List<ScheduleTitle>> fetch() async {
//     final response = await http.get(Uri.parse(_url));
//
//     log("${response.request!.method} "
//             "${response.statusCode} " +
//         response.request!.url.toString());
//     final List jsonResponse = jsonDecode(response.body);
//     List<ScheduleTitle> scheduleTitles = [];
//     for (var element in jsonResponse) {
//       scheduleTitles.add(ScheduleTitle.fromJson(element));
//     }
//     return scheduleTitles;
//   }
// }
