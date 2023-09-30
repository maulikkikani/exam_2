import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quote_app_exam/models/fevorite_model.dart';
import 'package:quote_app_exam/models/quotes_model.dart';

class fevoriteController extends GetxController {
  fevorite_model fevorite_list = fevorite_model(fevorite_list: []);

  void add_fevorite({required Quote data}) {
    fevorite_list.fevorite_list.add(data);
    update();
  }
}
