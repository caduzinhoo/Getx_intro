import 'package:get/get.dart';

class ValueController extends GetxController {
  String definedvalue = '';

  bool isLoading = false;

  Future<void> setValue(String value) async {
    isLoading = true;
    update();

    await Future.delayed(Duration(seconds: 2));

    definedvalue = value;

    isLoading = false;
    update();
  }
}
