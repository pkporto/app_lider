import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:app_lider/store/main.store.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  MainStore _mainStore;

  @override
  void initState() {
    _mainStore = MainStore();
    _mainStore.listAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height) / 2;
    final double itemWidth = size.width / 2;
    return Observer(
      builder: (_) {
        final listProducts = _mainStore.products;
        final listProductsAlter = _mainStore.products;
        return _mainStore.products != null
            ? Expanded(
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(_mainStore.products.length, (index) {
                    // print(" view ${listProducts[index].price}");

                    return Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.7)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                NetworkImage(_mainStore.products[index].image),
                            height: 100.0,
                            width: 100.0,
                          ),
                          SizedBox(),
                          Text(_mainStore.products[index].title),
                          // Expanded(child: Text(listProducts[index].title)),
                          SizedBox(),
                          Text(
                            "R\$ ${listProducts[index].price.toString()}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )

            // GridView.builder(
            //     physics: ScrollPhysics(),
            //     shrinkWrap: true,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       childAspectRatio: 1,
            //     ),
            //     itemCount: listProducts.length,
            //     itemBuilder: (context, index) {
            //       return ListView(
            //         children: [
            //           Container(
            //             height: 90.0,
            //             padding: EdgeInsets.all(20.0),
            //             decoration: BoxDecoration(
            //                 border: Border.all(color: Colors.grey, width: 0.7)),
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Image(
            //                   image: NetworkImage(listProducts[index].image),
            //                   height: 100.0,
            //                   width: 100.0,
            //                 ),
            //                 Divider(),
            //                 Expanded(child: Text(listProducts[index].title)),
            //                 Text(
            //                   listProducts[index].price.toString(),
            //                 ),
            //               ],
            //             ),
            //           )
            //         ],
            //       );
            //     })

            //       // return Card(
            //       //   child: InkWell(
            //       //     splashColor: Colors.blue,
            //       //     onTap: () {
            //       //       print(listProducts[index].title);
            //       //     },
            //       //     child: Container(
            //       //       child: Text(
            //       //         listProducts[index].title,
            //       //       ),
            //       //     ),
            //       //   ),
            //       // );

            // return Container(
            //   height: 90.0,
            //   padding: EdgeInsets.all(20.0),
            //   decoration: BoxDecoration(
            //       border: Border.all(color: Colors.grey, width: 0.7)),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image(
            //         image: NetworkImage(listProducts[index].image),
            //         height: 100.0,
            //         width: 100.0,
            //       ),
            //       Divider(),
            //       Expanded(child: Text(listProducts[index].title)),
            //       Text(
            //         listProducts[index].price.toString(),
            //       ),
            //     ],
            //   ),
            // );
            //     },
            //   )
            : Text('dasdas');
      },
    );
  }
}
