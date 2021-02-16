// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  final _$productsAtom = Atom(name: '_MainStore.products');

  @override
  ObservableList<Products> get products {
    _$productsAtom.context.enforceReadPolicy(_$productsAtom);
    _$productsAtom.reportObserved();
    return super.products;
  }

  @override
  set products(ObservableList<Products> value) {
    _$productsAtom.context.conditionallyRunInAction(() {
      super.products = value;
      _$productsAtom.reportChanged();
    }, _$productsAtom, name: '${_$productsAtom.name}_set');
  }

  final _$productsFilterCategoryAtom =
      Atom(name: '_MainStore.productsFilterCategory');

  @override
  ObservableList<Products> get productsFilterCategory {
    _$productsFilterCategoryAtom.context
        .enforceReadPolicy(_$productsFilterCategoryAtom);
    _$productsFilterCategoryAtom.reportObserved();
    return super.productsFilterCategory;
  }

  @override
  set productsFilterCategory(ObservableList<Products> value) {
    _$productsFilterCategoryAtom.context.conditionallyRunInAction(() {
      super.productsFilterCategory = value;
      _$productsFilterCategoryAtom.reportChanged();
    }, _$productsFilterCategoryAtom,
        name: '${_$productsFilterCategoryAtom.name}_set');
  }

  final _$orderedByPriceAtom = Atom(name: '_MainStore.orderedByPrice');

  @override
  ObservableList<Products> get orderedByPrice {
    _$orderedByPriceAtom.context.enforceReadPolicy(_$orderedByPriceAtom);
    _$orderedByPriceAtom.reportObserved();
    return super.orderedByPrice;
  }

  @override
  set orderedByPrice(ObservableList<Products> value) {
    _$orderedByPriceAtom.context.conditionallyRunInAction(() {
      super.orderedByPrice = value;
      _$orderedByPriceAtom.reportChanged();
    }, _$orderedByPriceAtom, name: '${_$orderedByPriceAtom.name}_set');
  }

  final _$listAllProductsAsyncAction = AsyncAction('listAllProducts');

  @override
  Future listAllProducts() {
    return _$listAllProductsAsyncAction.run(() => super.listAllProducts());
  }

  final _$getByCategorieAsyncAction = AsyncAction('getByCategorie');

  @override
  Future getByCategorie(String c) {
    return _$getByCategorieAsyncAction.run(() => super.getByCategorie(c));
  }

  final _$getByNameAsyncAction = AsyncAction('getByName');

  @override
  Future getByName(String n) {
    return _$getByNameAsyncAction.run(() => super.getByName(n));
  }

  final _$_MainStoreActionController = ActionController(name: '_MainStore');

  @override
  dynamic orderByPriceAsc() {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.orderByPriceAsc();
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic orderByPriceDesc() {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.orderByPriceDesc();
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listCategorie(String c) {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.listCategorie(c);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }
}
