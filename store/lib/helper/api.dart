import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authrization': 'Bearer $token',
        },
      );
    }
    http.Response response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    // log('URL= $url \n BODY= $body \n TOKEN= $token');

    if (response.statusCode == 200) {
      // log(response.body.toString());
      List<dynamic> productData = jsonDecode(response.body);
      return productData;
      // return jsonDecode(response.body);
    } else {
      throw Exception(
        "There was a problem in the status code ${response.statusCode}\n with body ${jsonDecode(response.body)}",
      );
    }
  }

  Future<dynamic> post(
      {required String url, @required dynamic body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
        },
      );
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    log('URL= $url \n BODY= $body \n TOKEN= $token');

    if (response.statusCode == 200) {
      Map<String, dynamic> productData = jsonDecode(response.body);
      log('productData  $productData');

      return productData;
    } else {
      throw Exception(
        'There was a problem in the status code ${response.statusCode} \n with body ${jsonDecode(response.body)}',
      );
    }
  }

  Future<dynamic> put(
      {required String url, @required dynamic body, String? token}) async {
    Map<String, String> headers = {};
    headers.addAll(
      {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
        },
      );
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    log('URL= $url \n BODY= $body \n TOKEN= $token');
    if (response.statusCode == 200) {
      Map<String, dynamic> productData = jsonDecode(response.body);
      log('productData  $productData');
      return productData;
    } else {
      throw Exception(
        'There was a problem in the status code ${response.statusCode} \n with body ${jsonDecode(response.body)}',
      );
    }
  }
}
