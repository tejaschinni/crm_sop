// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';

// class CalendarMeetingSchedule extends StatefulWidget {
//   @override
//   _CalendarMeetingScheduleState createState() =>
//       _CalendarMeetingScheduleState();
// }

// class _CalendarMeetingScheduleState extends State<CalendarMeetingSchedule> {
//   late final ValueNotifier<List<Event>> _selectedEvents;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _selectedDay = _focusedDay;
//     _selectedEvents = ValueNotifier([
//       Event(date: DateTime(2024, 04, 23, 14, 30), title: 'Meeting 1'),
//       Event(date: DateTime(2024, 04, 23, 16, 30), title: 'Meeting 2'),
//       Event(date: DateTime(2024, 04, 25, 14, 30), title: 'Meeting 1')
//     ]);
//   }

//   @override
//   void dispose() {
//     _selectedEvents.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Calendar with Meeting Schedule'),
//       // ),
//       body: Column(
//         children: [
//           // Calendar view
//           TableCalendar(
//             firstDay: DateTime.utc(2010, 10, 16),
//             lastDay: DateTime.utc(2030, 3, 14),
//             focusedDay: _focusedDay,
//             headerStyle: const HeaderStyle(
//                 formatButtonVisible: false, decoration: BoxDecoration()),
//             calendarFormat: CalendarFormat.week,
//             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//             onDaySelected: (selectedDay, focusedDay) {
//               setState(() {
//                 _selectedDay = selectedDay;
//                 _focusedDay = focusedDay;
//               });
//             },
//           ),
//           Expanded(
//             child: ValueListenableBuilder(
//               valueListenable: _selectedEvents,
//               builder: (context, value, _) {
//                 final selectedEvents = value
//                     .where((event) => isSameDay(event.date, _selectedDay))
//                     .toList();
//                 return selectedEvents.isNotEmpty
//                     ? ListView.builder(
//                         itemCount: selectedEvents.length,
//                         itemBuilder: (context, index) {
//                           final event = selectedEvents[index];
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.16,
//                               child: Card(
//                                 elevation: 05,
//                                 shape: BeveledRectangleBorder(),
//                                 color: Colors.white,
//                                 child: Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 10, vertical: 10),
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         event.title,
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             color: Color(0xff045CA6),
//                                             fontWeight: FontWeight.w500),
//                                       ),
//                                       //DateFormat('dd MMM yy | hh:mm a')
//                                       Text(
//                                         DateFormat('hh:mm a | dd MMM yy')
//                                             .format(event.date),
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             color: Color(0xff757575)),
//                                       ),
//                                       // SizedBox(
//                                       //   child: Row(
//                                       //     mainAxisAlignment:
//                                       //         MainAxisAlignment.spaceBetween,
//                                       //     children: [
//                                       //       Text(
//                                       //         "+919999999999",
//                                       //         style: TextStyle(
//                                       //             fontSize: 14,
//                                       //             color: Color(0xff6B6B6B)),
//                                       //       ),
//                                       //       Text(
//                                       //         "example@gmail.com",
//                                       //         style: TextStyle(
//                                       //             fontSize: 14,
//                                       //             color: Color(0xff6B6B6B)),
//                                       //       ),
//                                       //     ],
//                                       //   ),
//                                       // ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       )
//                     : Center(
//                         child: Text("No Events Found"),
//                       );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Event {
//   final DateTime date;
//   final String title;

//   // Add a constructor to initialize the properties
//   Event({required this.date, required this.title});

//   // Define a method to format the event time (replace with your desired formatting)
//   String getTimeString() {
//     final formatter = DateFormat('hh:mm a'); // Example formatting for time
//     return formatter.format(date);
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Meeting data structure (replace with your actual data source)
  List<Meeting> _meetings = [];

  @override
  void initState() {
    super.initState();
    // Fetch or initialize meeting data here
    _meetings.add(Meeting(DateTime(2024, 4, 24, 10, 0),
        DateTime(2024, 4, 24, 11, 0), 'Staff Meeting'));
    _meetings.add(Meeting(DateTime(2024, 4, 25, 14, 0),
        DateTime(2024, 4, 25, 15, 0), 'Client Call'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Timeslot colum
        // Calendar with week view
        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          onDaySelected: _onDaySelected,
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            decoration: BoxDecoration(),
          ),
          // eventDaySymbols:
          //     _getEventDaySymbols,
          // Function to display meeting indicators
        ),
        // Meeting list (update based on selected day's meetings)
        Expanded(
          child: Container(
            width: 100,
            child: ListView.builder(
              itemCount: 24, // Adjust for desired time range
              itemBuilder: (context, index) {
                final hour = index + 1; // Start from 1 AM
                final minute = 0;
                final time = DateTime(_focusedDay.year, _focusedDay.month,
                    _focusedDay.day, hour, minute);
                return Text(
                  '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}',
                  style: TextStyle(fontSize: 16.0),
                );
              },
            ),
          ),
        ),
        // Expanded(
        //   child: _selectedDay != null
        //       ? ListView.builder(
        //           itemCount: _getMeetingsForDay(_selectedDay!).length,
        //           itemBuilder: (context, index) {
        //             final meeting = _getMeetingsForDay(_selectedDay!)[index];
        //             return ListTile(
        //               title: Text(meeting.title),
        //               subtitle: Text(
        //                   '${meeting.startTime.toString().substring(10, 16)} - ${meeting.endTime.toString().substring(10, 16)}'),
        //             );
        //           },
        //         )
        //       : const Center(child: Text('Select a date to view meetings')),
        // ),
      ],
    );
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  List<Widget> _getEventDaySymbols(DateTime day) {
    final meetingList = _getMeetingsForDay(day);
    return meetingList.isEmpty
        ? []
        : [
            Container(
                child: Text('•'), margin: const EdgeInsets.only(bottom: 5.0))
          ];
  }

  List<Meeting> _getMeetingsForDay(DateTime day) {
    return _meetings
        .where((meeting) => isSameDay(meeting.startTime, day))
        .toList();
  }
}

class Meeting {
  final DateTime startTime;
  final DateTime endTime;
  final String title;

  const Meeting(this.startTime, this.endTime, this.title);
}
