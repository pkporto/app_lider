import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_lider/store/main.store.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final mainStore = Provider.of<MainStore>(context);

    final _searchController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    // void cleanSearch(){
    //   if(_searchController)
    // }
    return Container(
        padding: EdgeInsets.all(5.0),
        height: 50.0,
        color: Colors.deepPurpleAccent[100],
        child: Center(
          child: Material(
            color: Colors.deepPurpleAccent[100],
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _searchController,
                validator: (value) {
                  if (value.isEmpty) {
                    mainStore.listAllProducts();
                  }
                },
                onChanged: (value) {
                  if (value.isEmpty) {
                    mainStore.listAllProducts();
                  }
                },
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        _searchController.text = '';
                        mainStore.listAllProducts();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          mainStore.getByName(
                              _searchController.text.trim().toUpperCase());
                        }
                      },
                    )),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
