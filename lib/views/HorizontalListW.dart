import 'package:flutter/material.dart';
import 'package:app_lider/store/main.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  MainStore _mainStore;

  @override
  void initState() {
    _mainStore = MainStore();
    _mainStore.listAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final products = _mainStore.products;
        return products != null
            ? Container(
                height: 80.0,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
                  itemCount: products.length,
                  shrinkWrap: true,
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.only(right: 10.0),
                        width: 120.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Center(
                          child: Text(
                            products[index].title,
                          ),
                        ));
                  },
                ),
              )
            : Text('das');
      },
    );
  }
}
