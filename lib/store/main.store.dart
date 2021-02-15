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

  @observable
  var productsFilterCategory = ObservableList<Products>();

  @observable
  var orderedByPrice = ObservableList<Products>();

  @action
  listAllProducts() async {
    products =
        ObservableList<Products>.of(await _externalRepository.getProducts());
    print(" list all >>> ${products[0].price}");
  }

  @action
  orderByPrice(String c) {
    orderedByPrice = products;
    Comparator<Products> priceComparator = (a, b) => a.price.compareTo(b.price);
    products.sort(priceComparator);
    products = null;
    print(" order by >>> ${products[0].price}");
    // products = (List.from(products.sort(priceComparator)));/
    // orderedByPrice =
    // productsFilterCategory = ObservableList<Products>.of(
    //     await _externalRepository.getProductsFilteredByCategory());
  }
}
