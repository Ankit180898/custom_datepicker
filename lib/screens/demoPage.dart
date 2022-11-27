import 'package:custom_datepicker/screens/homePage.dart';
import 'package:custom_datepicker/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controller/datePicker_controller.dart';
class DatePickerPage extends StatelessWidget {
  int index;
  DatePickerPage({super.key, required this.index});
  final controller =Get.put(DatePickerController());

  @override
  Widget build(BuildContext context) {
    print("index $index");
    controller.index=index;
    print("firstdate ${controller.today.value} SeconDate ${controller.today1.value}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Something"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          (index==0)?Text(""):(index==1)?Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(

                    children: [

                      Container(
                        width:174,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.blue
                        ),
                        child:  RawMaterialButton(onPressed: () {  },
                          child: Text("Never ends",style: TextStyle(color: Colors.white),),

                        ),
                      ),
                      SizedBox(height: 16,),

                      Container(
                        width:174,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.blue
                        ),
                        child:
                          RawMaterialButton(onPressed: () {
                            controller.today1.value=controller.today1.value.add(Duration(days: 30));
                          },
                            child: Text("30 days later",style: TextStyle(color: Style.white_color),),

                        ),
                      ),


                    ],
                  ),
                  SizedBox(width: 16,),
                  Column(

                    children: <Widget>[
                      Container(
                        width:174,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.blue
                        ),
                        child:  RawMaterialButton(onPressed: () {
                          controller.today1.value=controller.today1.value.add(Duration(days: 15));
                        },
                          child: Text("15 days later",style: TextStyle(color: Colors.white),),

                        ),
                      ),

                      SizedBox(height: 16,),

                      Container(
                        width:174,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.blue
                        ),
                        child:  RawMaterialButton(onPressed: () {
                          controller.today1.value=controller.today1.value.add(Duration(days: 60));
                        },
                          child: Text("60 days later",style: TextStyle(color: Colors.white),),

                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ):Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 40),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),
                        SizedBox(width: 16,),

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(

                      children: <Widget>[

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),
                        SizedBox(width: 16,),

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(

                      children: <Widget>[

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),
                        SizedBox(width: 16,),

                        Container(
                          width:174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blue
                          ),
                          child:  RawMaterialButton(onPressed: () {  },
                            child: Text("Never ends",style: TextStyle(color: Colors.white),),

                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
            index==0?Obx(()=> TableCalendar(
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                  formatButtonVisible: false,
                  leftChevronIcon: Icon(
                    Icons.arrow_left,
                    color: Color(0xFF949C9E),
                  ),
                  leftChevronPadding: EdgeInsets.only(left: 50),
                  rightChevronIcon: Icon(
                    Icons.arrow_right,
                    color: Color(0xFF949C9E),
                  ),
                  rightChevronPadding: EdgeInsets.only(right: 50),
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) =>
                    isSameDay(day, controller.today.value),
                firstDay: DateTime.utc(2010, 8, 18),
                lastDay: DateTime.utc(2030, 3, 14),
                rowHeight: 43,
                onDaySelected: controller.onDateSelected, focusedDay: controller.today.value,
              ),
            ):index==1?
            Obx(()=> TableCalendar(
              headerStyle: HeaderStyle(
                titleCentered: true,
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
                formatButtonVisible: false,
                leftChevronIcon: Icon(
                  Icons.arrow_left,
                  color: Color(0xFF949C9E),
                ),
                leftChevronPadding: EdgeInsets.only(left: 50),
                rightChevronIcon: Icon(
                  Icons.arrow_right,
                  color: Color(0xFF949C9E),
                ),
                rightChevronPadding: EdgeInsets.only(right: 50),
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day1) =>
                  isSameDay(day1, controller.today1.value),
              firstDay: DateTime.utc(2010, 8, 18),
              lastDay: DateTime.utc(2030, 3, 14),
              rowHeight: 43,
              onDaySelected: controller.onDateSelected, focusedDay: controller.today1.value,
            ),
            ):Obx(()=> TableCalendar(
              headerStyle: HeaderStyle(
                titleCentered: true,
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
                formatButtonVisible: false,
                leftChevronIcon: Icon(
                  Icons.arrow_left,
                  color: Color(0xFF949C9E),
                ),
                leftChevronPadding: EdgeInsets.only(left: 50),
                rightChevronIcon: Icon(
                  Icons.arrow_right,
                  color: Color(0xFF949C9E),
                ),
                rightChevronPadding: EdgeInsets.only(right: 50),
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day2) =>
                  isSameDay(day2, controller.today2.value),
              firstDay: DateTime.utc(2010, 8, 18),
              lastDay: DateTime.utc(2030, 3, 14),
              rowHeight: 43,
              onDaySelected: controller.onDateSelected, focusedDay: controller.today2.value,
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xFF1DA1F2),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                     Obx(()=>
                        Text(
                          index==0?DateFormat('d MMM yyyy').format(controller.today.value):index==1?DateFormat('d MMM yyyy').format(controller.today1.value):DateFormat('d MMM yyyy').format(controller.today2.value),
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                     )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Color(0xFFEDF8FF),
                        ),
                        width: MediaQuery.of(context).size.height * 0.10,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextButton(
                          onPressed: () {
                              Get.back();
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Color(0xFF1DA1F2)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Style.primary_color,
                        ),
                        width: MediaQuery.of(context).size.height * 0.10,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextButton(
                          onPressed: () {
                            Get.offAll(HomePage(),arguments: {"first":controller.today.value,"second":controller.today1.value,"third":controller.today2.value});
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(color: Style.white_color),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// addressModel.city = Get.arguments["city"];