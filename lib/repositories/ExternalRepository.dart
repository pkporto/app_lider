import 'dart:convert';

import 'package:app_lider/models/Products.dart';
import 'package:http/http.dart' as http;

class ExternalRepository {
  // Future<List<Products>> getProducts() async {
  //   try {
  //     List<Products> products = List();
  //     Response response;
  //     Dio dio = Dio();
  //     response = await dio.get('https://api-lider.herokuapp.com/products');
  //     // print(response.statusCode);
  //     if (response.statusCode == 200) {
  //       // var listProducts = (response.data as List).map((item) {
  //       //   return Products.fromJson(item);
  //       // }).toList();
  //       // print(listProducts);
  //       var data = jsonDecode(response.data.toString());

  //       // data.forEach((item) => products.add(Products.fromJson(item)));
  //       print("ieie ${data}");

  //       return products;
  //     }
  //     return null;
  //   } catch (error, stacktrace) {
  //     print(" sas $stacktrace");
  //     return null;
  //   }
  // }

  Future<List<Products>> getProducts() async {
    var response = await http.get("https://api-lider.herokuapp.com/products");

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // List<dynamic> body = jsonDecode(response.body);
      List<Products> products;

      products = (data["data"] as List)
          .map((usuario) => Products.fromJson(usuario))
          .toList();

      // List<Products> products =
      //     body['data'].map((dynamic item) => Products.fromJson(item)).toList();

      // data.forEach((item) => products.add(Products.fromJson(item)));

      return products;
    }
    return null;
  }
}
