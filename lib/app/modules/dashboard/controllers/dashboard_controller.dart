import 'dart:convert';

import 'package:alfian/app/data/entertaiment_response.dart';
import 'package:get/get.dart';

import '../../../data/headline_response.dart';
import '../../../utils/api.dart';

class DashboardController extends GetxController {
  final _getConnect = GetConnect();

  //TODO: Implement DashboardController

  final count = 0.obs;

  Future<HeadlineResponse> getHeadline() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.headline);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return HeadlineResponse.fromJson(jsonDecode(response.body));
}
  Future<EntertaimentResponse> getEntertaiment() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.headline);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return EntertaimentResponse.fromJson(jsonDecode(response.body));
}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
