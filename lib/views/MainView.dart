import 'package:app_lider/views/CategoriesW.dart';
import 'package:app_lider/views/CustomAppBarW.dart';
import 'package:app_lider/views/GridW.dart';
import 'package:app_lider/views/HeaderW.dart';
import 'package:app_lider/views/HorizontalListW.dart';
import 'package:app_lider/views/LocalizationW.dart';
import 'package:app_lider/views/OrderByW.dart';
import 'package:app_lider/views/SearchW.dart';
import 'package:flutter/material.dart';
import 'package:app_lider/views/CustomAppBarW.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  static const Color primaryColor = Color.fromARGB(0, 8, 111, 255);
  static const Color secondaryColor = Color.fromARGB(214, 0, 25, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          // Header(),
          Stack(children: [
            SizedBox(
              height: 10.0,
              width: 400.0,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: secondaryColor),
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Align(
                alignment: Alignment(-0.20, 0.0),
                child: Container(
                  color: Colors.red[800],
                  alignment: Alignment.center,
                  height: 10.0,
                  width: 25.0,
                ))
          ]),
          Search(),
          Row(
            children: [
              Localization(),
              Spacer(),
              Categories(),
            ],
          ),
          Row(
            children: [
              Container(
                  height: 60.0,
                  margin: EdgeInsets.only(right: 10.0, left: 5.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.blueAccent,
                      ),
                      Center(
                        child: Text(
                          "VOLTAR",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  )),
              HorizontalList()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Ordenar por:",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: 10.0),
              OrderBy(),
            ],
          ),
          SizedBox(),
          Grid(),
        ],
      ),
    );
  }
}
