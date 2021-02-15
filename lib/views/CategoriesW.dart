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
    return Expanded(
      child: Container(
        width: itemWidth,
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
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
            setState(() {
              dropdownValue = newValue;
            });
            switch (dropdownValue) {
              case 'men clothing':
                mainStore.listCategorie(newValue);
                break;
              case 'women clothing':
                mainStore.listCategorie(newValue);
                break;
              case 'electronics':
                mainStore.listCategorie(newValue);
                break;
              case 'jewelery':
                mainStore.listCategorie(newValue);
                break;
              default:
                mainStore.listAllProducts();
            }
          },
          onTap: () {},
          items: <String>[
            'men clothing',
            'women clothing',
            'eletronics',
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
