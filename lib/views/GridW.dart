import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:app_lider/store/main.store.dart';
import 'package:provider/provider.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height) / 2;
    final double itemWidth = size.width / 2;

    final mainStore = Provider.of<MainStore>(context);

    mainStore.listAllProducts();
    return Observer(
      builder: (_) {
        return mainStore.products != null
            ? Expanded(
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(mainStore.products.length, (index) {
                    // print(" view ${listProducts[index].price}");

                    return Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.2)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                NetworkImage(mainStore.products[index].image),
                            height: 100.0,
                            width: 100.0,
                          ),
                          SizedBox(),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              mainStore.products[index].title.toUpperCase(),
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Expanded(child: Text(listProducts[index].title)),
                          SizedBox(),
                          Text(
                            " R\$ ${mainStore.products[index].price.toString()}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )
            : CircularProgressIndicator();
      },
    );
  }
}
