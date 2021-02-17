import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_lider/store/main.store.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    final mainStore = Provider.of<MainStore>(context);
    var size = MediaQuery.of(context).size;

    final double itemWidth = size.width / 2;
    return
        // Expanded(
        //   child:
        Container(
      padding: EdgeInsets.only(left: 5.0),
      width: 110.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Container(
            //and here
            child: Text(
              "Buscar Categorias",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
          value: dropdownValue,
          dropdownColor: Colors.red,
          icon: Icon(Icons.menu_outlined, color: Colors.white),
          iconSize: 28,
          elevation: 16,
          style: TextStyle(color: Colors.white),
          onChanged: (String newValue) {
            // setState(() {
            //   dropdownValue = newValue;
            // });
            switch (newValue) {
              case 'men clothing':
                mainStore.getByCategorie(newValue);
                break;
              case 'women clothing':
                mainStore.getByCategorie(newValue);
                break;
              case 'electronics':
                mainStore.getByCategorie(newValue);
                break;
              case 'jewelery':
                mainStore.getByCategorie(newValue);
                break;
              case 'Todos':
                mainStore.listAllProducts();
                break;
              default:
                mainStore.listAllProducts();
            }
          },
          onTap: () {},
          items: <String>[
            'Todos',
            'men clothing',
            'women clothing',
            'electronics',
            'jewelery'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
