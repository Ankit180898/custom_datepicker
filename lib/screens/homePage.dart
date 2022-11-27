import 'package:custom_datepicker/controller/datePicker_controller.dart';
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

  @override
  Widget build(BuildContext context) {
    // final controller=Get.put(DatePickerController());
    var date = Get.arguments;
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
                            Get.to(DatePickerPage(index: 0,));
                          },
                        )),
                    SizedBox(height: 16,),
                       date==null?Text(""):Container(

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

                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Color(0xFF1DA1F2),
                                    ),
                                  ),

                                ],
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
                          child: Text("With 4 preset",style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500,color: Colors.white),),
                          onPressed: () {
                            Get.to(DatePickerPage(index: 1,));
                          },
                        )),
                    SizedBox(height: 16,),

                    date==null?Text(""):Container(

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
                                  DateFormat('d MMM yyyy').format(date["second"]),
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

                                },
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xFF1DA1F2),
                                ),
                              ),

                            ],
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
                            Get.to(DatePickerPage(index: 2,));
                          },
                        )),
                    SizedBox(height: 16,),

                    date==null?Text(""):Container(

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
                              DateFormat('d MMM yyyy').format(date["third"]),
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

                              },
                              child: Icon(
                                Icons.close,
                                color: Color(0xFF1DA1F2),
                              ),
                            ),

                          ],
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