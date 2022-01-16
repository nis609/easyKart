import 'dart:convert';
import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:ecoomerce_app/module/home_screen/models/category_modal/category_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_data.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_type.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as secure;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app_state/errormodel.dart';
import '../../../app_state/sucess_model.dart';
import '../../../config/dio_client.dart';
import '../../../config/error.dart';


final HomeProvider = Provider((ref) {
  return HomeRepository();
});

class HomeRepository {
  final dioClient = DioClient.client;

  final _secureStorage = const secure.FlutterSecureStorage();

  //category list
  Future<List<CategoryModal>> getCategoryList() async {
    final product = <CategoryModal>[];
    dioClient.dio.options.headers['Authorization'] =
    'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'categories',

      );
   
      response.data['data'].forEach((category) {
        product.add(CategoryModal.fromJson(category));

      });
      return product;
    } on DioError catch (dioError) {
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }



  Future<List<BannerModal>> getBanner() async {
    final product = <BannerModal>[];
    // ReceivePort receivePort = ReceivePort();
    //
    // await Isolate.spawn(isolateEntry, receivePort.sendPort);
    //
    // SendPort sendPort = await receivePort.first;
    //
    // sendPort.send([message, responsePort.sendPort]);
    // return responsePort.first;
    dioClient.dio.options.headers['Authorization'] =
    'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'banners',

      );

      response.data['data'].forEach((category) {
        product.add(BannerModal.fromJson(category));

      });
      return product;
    } on DioError catch (dioError) {
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }
  Future<ProductData> getListOfProducts() async {
    final product = <ProductModal>[];
    // ReceivePort receivePort = ReceivePort();
    //
    // await Isolate.spawn(isolateEntry, receivePort.sendPort);
    //
    // SendPort sendPort = await receivePort.first;
    //
    // sendPort.send([message, responsePort.sendPort]);
    // return responsePort.first;
    dioClient.dio.options.headers['Authorization'] =
    'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'products',

      );


      return ProductData.fromJson(response.data);
    } on DioError catch (dioError) {
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }
  // static isolateEntry(SendPort sendPort) async {
  //   ReceivePort port = ReceivePort();
  //
  //   sendPort.send(port.sendPort);
  //
  //   await for (var msg in port) {
  //     String data = msg[0];
  //     SendPort replyPort = msg[1];
  //
  //     String url = data;
  //
  //     http.Response response = await http.get(Uri.parse(url));
  //
  //     replyPort.send(json.decode(response.body));
  //   }
  // }

// Future<List<HomeProductModel>> pickForYouProduct(int page, String url) async {
  //   final product = <HomeProductModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.get(
  //         url,
  //         queryParameters:{'limit': 3, 'type': 'eshop'}
  //
  //     );
  //     print("adjabdkad");
  //     response.data['data'].forEach((category) {
  //       product.add(HomeProductModel.fromJson(category));
  //     });
  //
  //     print(response.statusMessage);
  //     print("adknadn");
  //     return product;
  //   } catch (e) {
  //
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  // Future<List<HomeProductModel>> getEssentailProduct(int page, String url) async {
  //   final product = <HomeProductModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       url,
  //       data: FormData.fromMap({'limit': 10, 'type': 'eshop'}),
  //     );
  //     response.data['data'].forEach((category) {
  //       product.add(HomeProductModel.fromJson(category));
  //     });
  //     return product;
  //   } catch (e) {
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  // Future<List<ProductDetailModel>> getProductByCateory(
  //     {required int page, required int cat_id}) async {
  //   final product = <ProductDetailModel>[];
  //   print(cat_id);
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.get(
  //       'eshop/category-product/$cat_id?limit=5&type=eshop',
  //     );
  //     if (response.data['data']['products']['data'] == null) {
  //       return product;
  //     }
  //     response.data['data']['products']['data'].forEach((category) {
  //       product.add(ProductDetailModel.fromJson(category));
  //     });
  //     return product;
  //   } on DioError catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  // Future<List<ProductDetailModel>> getProductByEssentail(
  //     ) async {
  //   final product = <ProductDetailModel>[];
  //
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'eshop/essential-products?limit=5&type=eshop',
  //     );
  //     if (response.data['data']['products']['data'] == null) {
  //       return product;
  //     }
  //     response.data['data']['products']['data'].forEach((category) {
  //       product.add(ProductDetailModel.fromJson(category));
  //     });
  //     return product;
  //   } on DioError catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  // Future<ProductDetailModel> getProductDetails(
  //     {required int product_id}) async {
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'eshop/product-detail',
  //       data: FormData.fromMap({
  //         'product_id': product_id,
  //       }),
  //     );
  //     return ProductDetailModel.fromJson(response.data['data']);
  //   } catch (e) {
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<Either<SucessModel, ErrorModel>> addToCart(
  //     {required int product_id, required int quantity}) async {
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'cart/add',
  //       data: FormData.fromMap({
  //         'productId': product_id,
  //         'quantity': quantity,
  //       }),
  //     );
  //     return Left(SucessModel.fromJson(response.data));
  //   } on DioError catch (dioError) {
  //     if (dioError.response?.statusCode == 422) {
  //       return Right(ErrorModel.fromJson(dioError.response?.data));
  //     }
  //     throw DioExceptionError.fromDioError(dioError);
  //   } catch (e) {
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<List<CartModel>> getCartList() async {
  //   final product = <CartModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'cart/list',
  //       data: FormData.fromMap({'limit': 10, 'type': 'eshop'}),
  //     );
  //     print(response.data);
  //     response.data['data'].forEach((category) {
  //       product.add(CartModel.fromJson(category));
  //     });
  //     return product;
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<List<CuopanModel>> getCuopan() async {
  //   final product = <CuopanModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.get(
  //       'coupons',
  //     );
  //     print(response.data);
  //     response.data['coupons'].forEach((category) {
  //       product.add(CuopanModel.fromJson(category));
  //     });
  //     return product;
  //   } catch (e) {
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<String> applyCoupanToCart(int id) async {
  //   final product = <CuopanModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'cart/apply-coupon/$id',
  //     );
  //
  //     return response.data['message'];
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<String> addAddressToCart(int id) async {
  //   final _formData = {
  //     'addressId': id,
  //   };
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'cart/add-address-to-cart',
  //       options: Options(
  //         contentType: Headers.formUrlEncodedContentType,
  //       ),
  //       data: _formData,
  //     );
  //
  //     return response.data['message'];
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  // Future<String> placeOrder() async {
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       'order/place',
  //     );
  //
  //     return response.data['message'];
  //   } catch (e) {
  //     print(e);
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
}