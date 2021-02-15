import 'package:app_lider/repositories/ExternalRepository.dart';
import 'package:app_lider/views/OrderByW.dart';
import 'package:mobx/mobx.dart';

import 'package:app_lider/models/Products.dart';
part 'main.store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  ExternalRepository _externalRepository;

  _MainStore() {
    _externalRepository = ExternalRepository();
  }

  @observable
  ObservableList<Products> products;

  List<Products> productsList = List<Products>();

  @observable
  var productsFilterCategory = ObservableList<Products>();

  @observable
  var orderedByPrice = ObservableList<Products>();

  @action
  listAllProducts() async {
    products =
        ObservableList<Products>.of(await _externalRepository.getProducts());
    productsList = await _externalRepository.getProducts();
  }

  @action
  orderByPriceAsc() {
    Comparator<Products> priceComparator = (a, b) => a.price.compareTo(b.price);

    products.sort(priceComparator);
  }

  @action
  orderByPriceDesc() {
    Comparator<Products> priceComparator = (b, a) => b.price.compareTo(a.price);

    products.sort(priceComparator);
  }

  @action
  listCategorie(String c) {
    print("elementos  antes >>${products.length}");

    products = ObservableList<Products>.of(productsList);

    var listRemove = [];
    products.forEach((element) {
      if (element.category != c) {
        listRemove.add(element);
      }
    });
    products.removeWhere((element) => listRemove.contains(element));
    print("elementos dpois ${products.length}");
  }
}
