import 'package:custom_datepicker/controller/datePicker_controller.dart';
import 'package:custom_datepicker/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'demoPage.dart';
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }
  bool isClicked=false;
  bool isClicked1=false;
  bool isClicked2=false;
  bool afterDate=false;
  bool afterDate1=false;
  bool afterDate2=false;

  @override
  Widget build(BuildContext context) {
    // final controller=Get.put(DatePickerController());
    var date = Get.arguments;
    if((date!=null && isClicked==false)){
      afterDate=true;

    }
    else{
      afterDate=false;
    }
    if(date!=null && isClicked1==false){
      afterDate1=true;
    }
    else{
      afterDate1=false;
    }
    if(date!=null && isClicked2==false){
      afterDate2=true;
    }
    else{
      afterDate2=false;
    }
    // print("firstdate ${date["first"]} secondDate ${date["second"]} thirdDate ${date["third"]}");
    return Scaffold(
        appBar: AppBar(
          title: Text("DatePicker in Flutter"),
          backgroundColor: Colors.redAccent, //background color of app bar
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: Text(
                      "Calendar widgets",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Color(0xFF1DA1F2),),
                        height: MediaQuery.of(context).size.height * 0.07,

                        child: RawMaterialButton(
                          elevation: 0,
                          child: Text("Without preset",style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500,color: Colors.white),),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Style.white_color,
                                    //this right here
                                    child: DatePickerPage(index:0),
                                  );
                                });
                          },
                        )),
                    SizedBox(height: 16,),
                       date==null?Text(""):Visibility(
                         visible: afterDate,
                         child: Container(

                              decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(68.0),color: Color(0xFFEDF8FF),),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: Color(0xFF1DA1F2),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      DateFormat('d MMM yyyy').format(date["first"]),
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if(isClicked==true){
                                            isClicked=false;
                                          }else{
                                            isClicked=true;
                                          }

                                        });
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: Style.primary_color,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                       ),

                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Color(0xFF1DA1F2),),
                        height: Get.height * 0.07,

                        child: RawMaterialButton(
                          elevation: 0,
                          child: Text("With 4 preset",style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500,color: Colors.white),),
                          onPressed: () {
                            // Get.to(DatePickerPage(index: 1,));
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Style.white_color,
                                  //this right here
                                    child: DatePickerPage(index:1),
                                  );
                                });

                          },
                        )),
                    SizedBox(height: 16,),

                    date==null?Text(""):Visibility(
                      visible: afterDate1,
                      child: Container(

                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(68.0),color: Color(0xFFEDF8FF),),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xFF1DA1F2),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                date["second"]==null?"":DateFormat('d MMM yyyy').format(date["second"]),
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(isClicked1==true){
                                      isClicked1=false;
                                    }else{
                                      isClicked1=true;
                                    }

                                  });
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Style.primary_color,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Color(0xFF1DA1F2),),
                        height: MediaQuery.of(context).size.height * 0.07,

                        child: RawMaterialButton(
                          elevation: 0,
                          child: Text("With 6 preset",style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500,color: Colors.white),),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Style.white_color,
                                    //this right here
                                    child: DatePickerPage(index:2),
                                  );
                                });
                          },
                        )),
                    SizedBox(height: 16,),

                    date==null?Text(""):Visibility(
                      visible: afterDate2,
                      child: Container(

                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(68.0),color: Color(0xFFEDF8FF),),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xFF1DA1F2),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                date["third"]==null?"":DateFormat('d MMM yyyy').format(date["third"]),
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(isClicked2==true){
                                      isClicked2=false;
                                    }else{
                                      isClicked2=true;
                                    }

                                  });
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Style.primary_color,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}