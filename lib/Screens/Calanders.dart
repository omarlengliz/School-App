

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Calendar Demo',
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  String dropdownvalue="2022";

       late DateTime selectedDay;

  late List <CleanCalendarEvent> selectedEvent;

  final Map<DateTime,List<CleanCalendarEvent>> events = {
    DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day):
        [
          CleanCalendarEvent('Event A',
          startTime: DateTime(
              DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
            endTime:  DateTime(
                DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
            description: 'A special event',
            color: Colors.blue),
        ],

    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
    [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
    ],
  };
  
  var items=[
    "2022",
    "2021",
    "2020",
    "2019",
  ];

  void _handleData(date){
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }
  @override
  void initState() {
            selectedDay=    DateTime (DateTime.now().year+3,DateTime.now().month,DateTime.now().day);

    // TODO: implement initState
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  SafeArea(
          child: Column(
          children: [
            ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF473f97),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const BackButton(
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 50,
                            width: 60,
                            child: DropdownButton(
                              value: dropdownvalue.isNotEmpty
                                  ? dropdownvalue
                                  : null, // guard it with null if empty
                              items: items.map((item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),

                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                 dropdownvalue = newValue!;
                                 selectedDay=
                                    DateTime(int.parse(dropdownvalue), DateTime.now().month, DateTime.now().day);
  
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      ],
                      ),)),
                      calendarBuild(selectedDay),

            ],
          ),
        ),
      
    );
  }
  Widget calendarBuild(DateTime date)
  {
     return Expanded(
                child: Calendar(
                  initialDate: date,
                  startOnMonday: true,
                  selectedColor: Colors.blue,
                  todayColor: Colors.red,
                  eventColor: Colors.green,
                  eventDoneColor: Colors.amber,
                  bottomBarColor: Colors.deepOrange,
                  onRangeSelected: (range) {
                    print('selected Day ${range.from},${range.to}');
                  },
                  onDateSelected: (date){
                    return _handleData(date);
                  },
                  events: events,
                  isExpanded: true,
                  // ignore: prefer_const_constructors
                  dayOfWeekStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black12,
                    fontWeight: FontWeight.w100,
                  ),
                  bottomBarTextStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  hideBottomBar: true,
                  hideArrows: true,
                  weekDays: const ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
                ),
              );
  }
}


