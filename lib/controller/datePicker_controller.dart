import 'package:get/get.dart';
class DatePickerController extends GetxController{

  var today=DateTime.now().obs;
  var today1=DateTime.now().obs;
  var today2=DateTime.now().obs;
  var index=0;
  var isClicked=false.obs;

  Future<DateTime> onDateSelected(DateTime day,DateTime focusDay)  async{
    if(index==0){
      return today.value=day;
    }
    else if(index==1){
      return today1.value=day;
    }
    else{
      return today2.value=day;
    }
  }
  @override
  void onClose() {
    dispose();
    super.onClose();
  }



}