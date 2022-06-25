// import 'dart:convert';

// import 'package:fc_agent_app/core/models/authentication/register_response.dart';
// import 'package:fc_agent_app/core/models/products/activity_stats_model.dart';
// import 'package:fc_agent_app/core/models/products/orders_models.dart';
// import 'package:fc_agent_app/core/models/products/products_model.dart';
// import 'package:fc_agent_app/core/models/products/retailers_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fc_agent_app/core/models/authentication/auth_model.dart';
// import 'package:fc_agent_app/core/models/error_model.dart';
// import 'package:fc_agent_app/core/models/booking/active_bids_model.dart';
// import 'package:fc_agent_app/core/models/booking/address_model.dart';
// import 'package:fc_agent_app/core/models/booking/cart.dart';
// import 'package:fc_agent_app/core/models/booking/cart_summary.dart';
// import 'package:fc_agent_app/core/models/booking/catergories.dart';
// import 'package:fc_agent_app/core/models/booking/currency_model.dart';
// import 'package:fc_agent_app/core/models/booking/offer_model.dart';
// import 'package:fc_agent_app/core/models/booking/order_details_model.dart';
// import 'package:fc_agent_app/core/models/booking/product_model.dart';
// import 'package:fc_agent_app/core/models/booking/unit_model.dart';
// import 'package:fc_agent_app/core/models/success_model.dart';
// import 'package:fc_agent_app/core/services/index.dart';
// import 'package:fc_agent_app/utils/http/paths.dart';
// import 'package:fc_agent_app/utils/locator.dart';
// import 'package:fc_agent_app/utils/router/navigationService.dart';
// import 'package:valuejet/core/model/authentication/auth_model.dart';
// import 'package:valuejet/core/model/product/cart_summary.dart';
// import 'package:valuejet/core/services/index.dart';
// import 'package:valuejet/utils/http/paths.dart';

// class ProductService {
//   late CartSummary _cartSummary;

//   CartSummary get cartSummary => _cartSummary;

//   late String _phoneNumber;

//   String get phoneNumber => _phoneNumber;

//   dynamic _categoriesListStore;

//   dynamic get categoriesListStore => _categoriesListStore;

//   dynamic _filteredCategoriesListStore;

//   dynamic get filteredCategoriesListStore => _filteredCategoriesListStore;

//   dynamic _packageListStore;

//   dynamic get packageListStore => _packageListStore;

//   AuthModel _token;

//   AuthModel get token => _token;

//   getCartSummary() async {
//     try {
//       final result = await http.get(Paths.CART_SUMMARY);
//       if (result is ErrorModel) {
//         print("ERROR");
//         print(result.error);
//         return ErrorModel(result.error);
//       }

//       print("RESULT");
//       print(result.data);
//       CartSummary cartSummary = CartSummary.fromJson(result.data);
//       _cartSummary = cartSummary;
//       SharedPreferences prefs;
//       prefs = await SharedPreferences.getInstance();
//       var s = json.encode(_cartSummary);
//       await prefs.setString('cartSummary', s);
//       print('firstname' + cartSummary.data.finalCharge.toString());
//       // return SuccessModel({'auth': auth, 'user': user});
//       return SuccessModel(cartSummary);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('Error fetching cart summary.');
//     }
//   }



//   getCategories() async {
//     if (categoriesListStore != null) {
//       print(categoriesListStore);
//       List<Categories> categoriesList = List<Categories>.from(
//           _categoriesListStore.map((item) => Categories.fromJson(item)));
//       return categoriesList;
//     } else {
//       try {
//         // final result = await http.get(Paths.MERCHANT);
//         final result = await http.get(Paths.CATEGORIES);
//         if (result is ErrorModel) {
//           print("ERROR");
//           print(result.error);
//           var data = result.error;
//           List<Categories> categoriesList = List<Categories>.from(
//               data.map((item) => Categories.fromJson(item)));
//           return ErrorModel(categoriesList);
//         }
//         print("categories: ${result.data['product_categories']}");
//         var data = result.data['product_categories']; //['data'];
//         _categoriesListStore = data;
//         List<Categories> categoriesList = List<Categories>.from(
//             data.map((item) => Categories.fromJson(item)));
//         return categoriesList;
//       } catch (e) {
//         print(e.toString());
//         return ErrorModel('$e');
//       }
//     }
//   }

//   getMerchants() async {
//     if (categoriesListStore != null) {
//       print(categoriesListStore);
//       List<Categories> categoriesList = List<Categories>.from(
//           _categoriesListStore.map((item) => Categories.fromJson(item)));
//       return categoriesList;
//     } else {
//       try {
//         final result = await http.get(Paths.MERCHANT);
//         if (result is ErrorModel) {
//           print("ERROR");
//           print(result.error);
//           var data = result.error;
//           List<Categories> categoriesList = List<Categories>.from(
//               data.map((item) => Categories.fromJson(item)));
//           return ErrorModel(categoriesList);
//         }
//         print("RESULT");
//         //print(result.data);
//         var data = result.data['data']['companies']['data'];
//         _categoriesListStore = data;
//         List<Categories> categoriesList = List<Categories>.from(
//             data.map((item) => Categories.fromJson(item)));
//         return categoriesList;
//       } catch (e) {
//         print(e.toString());
//         return ErrorModel('$e');
//       }
//     }
//   }

//   getCategoriesByDistrict(String districtName) async {
//     // if (categoriesListStore != null) {
//     //   print(categoriesListStore);
//     //   List<Categories> categoriesList = List<Categories>.from(
//     //       _categoriesListStore.map((item) => Categories.fromJson(item)));
//     //   return categoriesList;
//     // } else {
//     try {
//       final result = await http.get(Paths.MERCHANT_BY_DISTRICT + districtName);
//       if (result is ErrorModel) {
//         print("ERROR ");
//         print(result.error);
//         var data = result.error;
//         List<Categories> categoriesList = List<Categories>.from(
//             data.map((item) => Categories.fromJson(item)));
//         return ErrorModel(categoriesList);
//       }
//       print("RESULT");
//       // var data = result.data['data']['companies']['data'];
//       var data = result.data['data']['companies'];
//       _filteredCategoriesListStore = data;
//       List<Categories> categoriesList = List<Categories>.from(
//           data.map((item) => Categories.fromJson(item)));
//       print('cat length ${categoriesList.length}');
//       return categoriesList;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//     // }
//   }



//   getProductsByCategory(String categoryId) async {
//     try {
//       final result = await http.get(
//           Paths.BROWSE_PRODUCTS_BY_CATEGORY + '$categoryId');
//       if (result is ErrorModel) {
//         // print("ERROR");
//         var data = result.error;
//         print(result.error);
//         List<ProductModel> productList = List<ProductModel>.from(
//             data.map((item) => ProductModel.fromJson(item)));
//         return ErrorModel(productList);
//       }
//       var data = result.data['product_categories'];
//       // print('products: ${result.data['product_categories']}');
//       _packageListStore = data;
//       List<ProductModel> productList =
//       List<ProductModel>.from(data.map((item) => ProductModel.fromJson(item)));
//       return productList;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//     // }
//     // } else {
//     //   try {
//     //     final result = await http.get(Paths.BIDS + '$id');
//     //     if (result is ErrorModel) {
//     //       print("ERROR");
//     //       var data = result.error;
//     //       print(result.error);
//     //       List<ProductModel> packageList = List<ProductModel>.from(
//     //           data.map((item) => ProductModel.fromJson(item)));
//     //       return ErrorModel(packageList);
//     //     }
//     //     var data = result.data['product_categories'];
//     //     //_packageListStore = data;
//     //     List<ProductModel> packageList =
//     //         List<ProductModel>.from(data.map((item) => ProductModel.fromJson(item)));
//     //     return packageList;
//     //   } catch (e) {
//     //     print(e.toString());
//     //     return ErrorModel('$e');
//     //   }
//     // }
//   }

//   getPackagesByCategoryAndDistrict(String categoryId, String district) async {
//     if (categoryId == '6') {
//       if (packageListStore != null) {
//         print(packageListStore);
//         List<ProductModel> packageList = List<ProductModel>.from(
//             _packageListStore.map((item) => ProductModel.fromJson(item)));
//         return packageList;
//       } else {
//         try {
//           final result = await http.get(
//               Paths.PACKAGES_BY_CATEGORY_AND_DISTRICT +
//                   '?district=$district&category_id=$categoryId');
//           if (result is ErrorModel) {
//             print("ERROR");
//             var data = result.error;
//             print(result.error);
//             List<ProductModel> packageList = List<ProductModel>.from(
//                 data.map((item) => ProductModel.fromJson(item)));
//             return ErrorModel(packageList);
//           }
//           var data = result.data['data'];
//           _packageListStore = data;
//           List<ProductModel> packageList = List<ProductModel>.from(
//               data.map((item) => ProductModel.fromJson(item)));
//           return packageList;
//         } catch (e) {
//           print(e.toString());
//           return ErrorModel('$e');
//         }
//       }
//     } else {
//       try {
//         final result = await http.get(Paths.PACKAGES_BY_CATEGORY_AND_DISTRICT +
//             '?district=$district&category_id=$categoryId');
//         if (result is ErrorModel) {
//           print("ERROR");
//           var data = result.error;
//           print(result.error);
//           List<ProductModel> packageList = List<ProductModel>.from(
//               data.map((item) => ProductModel.fromJson(item)));
//           return ErrorModel(packageList);
//         }
//         var data = result.data['data'];
//         //_packageListStore = data;
//         List<ProductModel> packageList =
//         List<ProductModel>.from(
//             data.map((item) => ProductModel.fromJson(item)));
//         return packageList;
//       } catch (e) {
//         print(e.toString());
//         return ErrorModel('$e');
//       }
//     }
//   }

//   getSinglePackages(String id) async {
//     try {
//       final result = await http.get(Paths.SINGLE_PACKAGE + '$id');
//       if (result is ErrorModel) {
//         print("ERROR");
//         var data = result.error;
//         print(result.error);
//       }
//       var data = result.data;
//       return SuccessModel(result.data);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

//   getSearchedPackages(String productName) async {
//     try {
//       final result = await http.get(Paths.SEARCH + productName);
//       if (result is ErrorModel) {
//         var data = result.error;
//         print(result.error);
//         List<ProductModel> productList =
//         List<ProductModel>.from(
//             data.map((item) => ProductModel.fromJson(item)));
//         return ErrorModel(productList);
//       }
//       var data = result.data['results'];
//       List<ProductModel> productList =
//       List<ProductModel>.from(data.map((item) => ProductModel.fromJson(item)));
//       return productList;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }




//   getSavedPackages() async {
//     try {
//       final result = await http.get(Paths.SAVED_PACKAGES);
//       if (result is ErrorModel) {
//         print("ERROR");
//         var data = result.error;
//         print(result.error);
//         List<ProductModel> packageList = List<ProductModel>.from(
//             data.map((item) => ProductModel.fromJson(item)));
//         return ErrorModel(packageList);
//       }
//       var data = result.data['product_categories'];
//       //_packageListStore = data;
//       List<ProductModel> packageList =
//       List<ProductModel>.from(data.map((item) => ProductModel.fromJson(item)));
//       return packageList;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//     // }
//   }


//   getDetails(String id) async {
//     try {
//       final result = await http.get(Paths.SINGLE_ORDER + id);
//       if (result is ErrorModel) {
//         print("ERROR");
//         var data = result.error;
//         List<OrdersDetails> ordersList = List<OrdersDetails>.from(
//             data.map((item) => OrdersDetails.fromJson(item)));
//         return ErrorModel(ordersList);
//       }
//       var data = result.data['data']['orders'];
//       List<OrdersDetails> ordersList = List<OrdersDetails>.from(
//           data.map((item) => OrdersDetails.fromJson(item)));
//       return ordersList;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }


//   addAndRemoveFromSavedProducts(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.ADD_SAVED_PACKAGE, payload);
//       if (result is ErrorModel) {
//         print("ERROR");
//         print(result.error);
//         return ErrorModel(result.error);
//       }

//       print("RESULT");
//       print(result.data);
//       return SuccessModel(result.data);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

//   endAndReactivateBids(Map<dynamic, dynamic> payload, int bidType) async {
//     try {
//       final result = await http.post(
//           bidType == 0 ? Paths.END_AND_REACTIVATE_BUYERS_BIDS : Paths
//               .END_AND_REACTIVATE_USERS_BIDS, payload);
//       print('result: $result');
//       if (result is ErrorModel) {
//         print("ERROR");
//         print(result.error);
//         return ErrorModel(result.error);
//       }
//       return SuccessModel(result.data);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

//   getUnits() async {
//     try {
//       final result = await http.get(Paths.QUANTITIES_UNITS);
//       if (result is ErrorModel) {
//         var data = result.error;
//         List<UnitModel> quantityUnits = List<UnitModel>.from(
//             data.map((item) => UnitModel.fromJson(item)
//             ));
//         return ErrorModel(quantityUnits);
//       }
//       var data = result.data['data'];
//       List<UnitModel> quantityUnits = List<UnitModel>.from(
//           data.map((item) => UnitModel.fromJson(item)
//           ));
//       return quantityUnits;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

//   getCurrencies() async {
//     try {
//       final result = await http.get(Paths.CURRENCIES);
//       if (result is ErrorModel) {
//         var data = result.error;
//         List<CurrencyModel> currencies = List<CurrencyModel>.from(
//             data.map((item) => CurrencyModel.fromJson(item)
//             ));
//         return ErrorModel(currencies);
//       }
//       var data = result.data['data'];
//       List<CurrencyModel> currencies = List<CurrencyModel>.from(
//           data.map((item) => CurrencyModel.fromJson(item)
//           ));
//       return currencies;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

//   getProducts() async {
//     try {
//       final result = await http.get(Paths.PRODUCT_LIST);
//       if (result is ErrorModel) {
//         var data = result.error;
//         List<CurrencyModel> currencies = List<CurrencyModel>.from(
//             data.map((item) => CurrencyModel.fromJson(item)
//             ));
//         return ErrorModel(currencies);
//       }
//       var data = result.data['data'];
//       List<CurrencyModel> currencies = List<CurrencyModel>.from(
//           data.map((item) => CurrencyModel.fromJson(item)
//           ));
//       return currencies;
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }



//   createOffer(Map<dynamic, dynamic> payload) async {
//     try {
//     final result = await http.post(Paths.CREATE_OFFER, payload);
//     if (result is ErrorModel) {
//       print('Offer creation error: ${result.error}');
//       return ErrorModel(result.error);
//     }
//     return SuccessModel(result);
//     } catch (e) {
//     print(e.toString());
//     return ErrorModel('Offer creation failed, try again later.');
//     }
//   }

//   editOffer(Map<dynamic, dynamic> payload,String offerId) async {
//     try {
//       final result = await http.post(Paths.EDIT_OFFER + offerId, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }
//       return SuccessModel(result);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('Bid creation failed, try again.');
//     }
//   }




// }
