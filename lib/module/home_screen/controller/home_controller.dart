import 'package:dio/dio.dart';
import 'package:ecoomerce_app/config/dio_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app_state/appstate.dart';
import '../repository/home_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as secure;

class HomeController extends StateNotifier<AppState> {
  HomeController(this._homeRepository) : super(AppState.initial());
  final HomeRepository _homeRepository;
  // Future cartAddOrChange(
  //     {required int product_id, required int quantity}) async {
  //   try {
  //     state = AppState.loading();
  //     final _response = await _homeRepository.addToCart(
  //         product_id: product_id, quantity: quantity);
  //     state = AppState.data(_response);
  //   } catch (e) {
  //     state = AppState.error(e);
  //   }
  // }
  //
  //  Future applyCoupanProvider(
  //     {required int cuopanId, }) async {
  //   try {
  //     state = AppState.loading();
  //     final _response = await _homeRepository.applyCoupanToCart(cuopanId);
  //     state = AppState.data(_response);
  //   } catch (e) {
  //     state = AppState.error(e);
  //   }
  // }
  //
  // final dioClient = DioClient.client;
  //
  // final _secureStorage = const secure.FlutterSecureStorage();
  // Future<List<FMNProductModel>> getProductList(int page, String url) async {
  //   final product = <FMNProductModel>[];
  //
  //   dioClient.dio.options.headers['Authorization'] =
  //   'Bearer ${await _secureStorage.read(key: 'Token')}';
  //   try {
  //     final response = await dioClient.dio.post(
  //       url,
  //       data: FormData.fromMap({'limit': 10, 'type': 'eshop'}),
  //     );
  //
  //
  //     response.data['data'].forEach((category) {
  //       product.add(FMNProductModel.fromJson(category));
  //     });
  //     return product;
  //   } catch (e) {
  //     throw DioExceptionError.fromDioError(e);
  //   }
  // }
  //
  //
  // Future addAddressToCart(
  //     {required int addressId, }) async {
  //   try {
  //     state = AppState.loading();
  //     final _response = await _fmnRepository.addAddressToCart(addressId);
  //     state = AppState.data(_response);
  //   } catch (e) {
  //     state = AppState.error(e);
  //   }
  // }
  // Future placeOrderProvider() async {
  //   try {
  //     state = AppState.loading();
  //     final _response = await _fmnRepository.placeOrder();
  //     state = AppState.data(_response);
  //   } catch (e) {
  //     state = AppState.error(e);
  //   }
  // }

}
