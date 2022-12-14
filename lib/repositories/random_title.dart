// Dart imports:
import 'dart:convert';
import 'dart:developer';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:queue/canstants.dart';
import 'package:queue/models/submodel/title.dart';

class RandomTitleRepository {
  final String _url = "$baseApiUrl/v2/getRandomTitle";

  RandomTitleRepository();

  Future<AniTitle> fetch() async {
    final response = await http.get(Uri.parse(_url));
    log("${response.request!.method} "
            "${response.statusCode} " +
        response.request!.url.toString());
    final jsonResponse = jsonDecode(response.body);
    return AniTitle.fromJson(jsonResponse);
  }
}
