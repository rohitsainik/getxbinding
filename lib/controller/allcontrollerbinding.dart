import 'package:get/get.dart';
import 'package:getxbinding/controller/homecontroller.dart';
import 'package:getxbinding/controller/mycontroller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {

    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());

  }



}