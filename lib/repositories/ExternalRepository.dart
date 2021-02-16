import 'dart:convert';

import 'package:app_lider/models/Products.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ExternalRepository {
  Future<List<Products>> getProducts() async {
    var response = await http.get("https://api-lider.herokuapp.com/products");

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Products> products;

      products = (data["data"] as List)
          .map((usuario) => Products.fromJson(usuario))
          .toList();
      return products;
    }
    return null;
  }

  Future<List<Products>> getProductsByCategorie(String c) async {
    var response =
        await http.get('https://api-lider.herokuapp.com/products/$c');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Products> products;

      products = (data["data"] as List)
          .map((usuario) => Products.fromJson(usuario))
          .toList();
      return products;
    }
    return null;
  }
}
