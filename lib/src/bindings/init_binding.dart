import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/controllers/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
