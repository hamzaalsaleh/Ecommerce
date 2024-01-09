import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:http/http.dart' as http;
import '../function/cheakinternet.dart';

class Crud {
  Future<Either<StatuseRequest, Map>> postdata(
      String linkserver, Map data) async {
    try {
      if (await cheakInternet()) {
        var response = await http.post(Uri.parse(linkserver), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map resbonsebody = jsonDecode(response.body);
          return Right(resbonsebody);
        } else {
          return const Left(StatuseRequest.serverfaild);
        }
      } else {
        return const Left(StatuseRequest.offline);
      }
    } catch (_) {
      return const Left(StatuseRequest.serverfaild);
    }
  }
}
