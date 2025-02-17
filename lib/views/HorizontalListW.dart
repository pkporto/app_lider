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
            ? Expanded(
                child: Container(
                  height: 60.0,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
                    itemCount: products.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 120.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Center(
                            child: Image(
                              image: NetworkImage(products[index].image),
                              height: 70.0,
                              width: 70.0,
                            ),
                          ));
                    },
                  ),
                ),
              )
            : CircularProgressIndicator();
      },
    );
  }
}
