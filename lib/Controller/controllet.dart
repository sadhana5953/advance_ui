import 'package:get/get.dart';

class HomeController extends GetxController
{
  RxInt tabBarButton=0.obs;
  RxString name=''.obs;
  void tabBar(int value)
  {
    tabBarButton.value=value;
  }
}