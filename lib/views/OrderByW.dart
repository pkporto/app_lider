import 'package:flutter/material.dart';
import 'package:app_lider/store/main.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OrderBy extends StatefulWidget {
  @override
  _OrderByState createState() => _OrderByState();
}

class _OrderByState extends State<OrderBy> {
  String dropdownValue;

  MainStore _mainStore;

  @override
  void initState() {
    _mainStore = MainStore();
    _mainStore.listAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return DropdownButton<String>(
        hint: Container(
          width: 90, //and here
          child: Text(
            "Selecionar",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.start,
          ),
        ),
        value: dropdownValue,
        dropdownColor: Colors.white,
        icon: Icon(Icons.arrow_downward_outlined),
        iconSize: 28,
        elevation: 16,
        style: TextStyle(color: Colors.red),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
          if (newValue == "Preço") {
            _mainStore.orderByPrice('c');
            print(
                "${_mainStore.orderedByPrice} + ${_mainStore.products[0].price}    <<<<<<<<<<<<<<<<<");
          }
        },
        onTap: () {},
        items: <String>['Nome', 'Preço', 'Categoria']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
