import 'package:custom_datepicker/screens/homePage.dart';
import 'package:custom_datepicker/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controller/datePicker_controller.dart';
import '../dateExtension.dart';

class DatePickerPage extends StatelessWidget {
  int index;
  DatePickerPage({super.key, required this.index});
  final controller = Get.put(DatePickerController());

  @override
  Widget build(BuildContext context) {
    var tue = DateTime.now();
    print("index $index");
    controller.index = index;
    print(
        "firstdate ${controller.today.value} SeconDate ${controller.today1.value}");
    print("tuesday ${(tue.day - tue.weekday) % DateTime.daysPerWeek}");
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      // appBar: AppBar(
      //   title: Text("Something"),
      //   centerTitle: true,
      // ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              (index == 0)
                  ? Text("")
                  : (index == 1)
                      ? Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Never ends',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today1.value=controller.today1.value.add(Duration(days: 15));
                                        },
                                        child: Text('15 days later',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today1.value=controller.today1.value.add(Duration(days: 60));
                                        },
                                        child: Text('60 days later',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today1.value=controller.today1.value.add(Duration(days: 30));
                                        },
                                        child: Text('30 days later',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value = controller
                                              .today2.value
                                              .subtract(Duration(days: 1));

                                        },
                                        child: Text('Yesterday',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value = DateTime.now();
                                        },
                                        child: Text('Today',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value = controller
                                              .today2.value
                                              .add(Duration(days: 1));
                                        },
                                        child: Text('Tomorrow',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value =
                                              controller.today2.value.add(Duration(
                                                  days: (controller.today2.value
                                                      .weekday +
                                                      controller
                                                          .today2.value.day) %
                                                      DateTime.daysPerWeek));
                                        },
                                        child: Text('This Saturday',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value = controller
                                              .today2.value
                                              .subtract(Duration(
                                              days: controller
                                                  .today2.value.weekday));                                        },
                                        child: Text('This Sunday',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.today2.value = controller
                                              .today2.value
                                              .next(DateTime.tuesday);
                                        },
                                        child: Text('Next Tuesday',style: TextStyle(color: Style.white_color,fontSize: 14,fontFamily: "Roboto"),),
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4), // <-- Radius
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
              index == 0
                  ? Obx(
                      () => TableCalendar(
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
                        onDaySelected: controller.onDateSelected,
                        focusedDay: controller.today.value,
                      ),
                    )
                  : index == 1
                      ? Obx(
                          () => TableCalendar(
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
                            onDaySelected: controller.onDateSelected,
                            focusedDay: controller.today1.value,
                          ),
                        )
                      : Obx(
                          () => TableCalendar(
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
                            onDaySelected: controller.onDateSelected,
                            focusedDay: controller.today2.value,
                          ),
                        ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
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
                          Obx(
                            () => Text(
                              index == 0
                                  ? DateFormat('d MMM yyyy')
                                      .format(controller.today.value)
                                  : index == 1
                                      ? DateFormat('d MMM yyyy')
                                          .format(controller.today1.value)
                                      : DateFormat('d MMM yyyy')
                                          .format(controller.today2.value),
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0xFFEDF8FF),
                              ),
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
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Style.primary_color,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Get.offAll(HomePage(), arguments: {
                                    "first": controller.today.value,
                                    "second": controller.today1.value,
                                    "third": controller.today2.value
                                  });
                                },
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Style.white_color),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// addressModel.city = Get.arguments["city"];
