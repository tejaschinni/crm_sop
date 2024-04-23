import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarMeetingSchedule extends StatefulWidget {
  @override
  _CalendarMeetingScheduleState createState() =>
      _CalendarMeetingScheduleState();
}

class _CalendarMeetingScheduleState extends State<CalendarMeetingSchedule> {
  DateTime selectedDate = DateTime.now();
  Map<DateTime, List<Meeting>> meetingSchedule =
      {}; // Map dates to their meetings

  // Sample meeting data (replace with your actual data source)
  List<Meeting> getSampleMeetings(DateTime date) {
    return [
      Meeting(
          title: 'Meeting 1',
          startTime: DateTime(2024, 4, 23, 10, 0),
          endTime: DateTime(2024, 4, 23, 11, 0)),
      if (date.day == 25) // Add a meeting for April 25 only
        Meeting(
            title: 'Meeting 2',
            startTime: DateTime(2024, 4, 25, 14, 0),
            endTime: DateTime(2024, 4, 25, 15, 0)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Calendar with Meeting Schedule'),
      // ),
      body: Column(
        children: [
          // Calendar view
          Container(
            height: 200, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DateUtils.getDaysInMonth(
                  selectedDate.year, selectedDate.month),
              itemBuilder: (context, index) {
                final date =
                    DateTime(selectedDate.year, selectedDate.month, index + 1);
                return GestureDetector(
                  onTap: () => setState(() => selectedDate = date),
                  child: Container(
                    width: 100, // Adjust width as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedDate == date ? Colors.blue : Colors.grey,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${date.day}'),
                          Text(DateFormat('EEE')
                              .format(date)), // Day of week abbreviation
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Meeting schedule view
          Expanded(
            child: meetingSchedule[selectedDate] == null
                ? Center(child: Text('No meetings scheduled for this date'))
                : ListView.builder(
                    itemCount: meetingSchedule[selectedDate]!.length,
                    itemBuilder: (context, index) {
                      final meeting = meetingSchedule[selectedDate]![index];
                      return ListTile(
                        title: Text(meeting.title),
                        subtitle: Text(
                          '${DateFormat('h:mm a').format(meeting.startTime)} - ${DateFormat('h:mm a').format(meeting.endTime)}',
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class Meeting {
  final String title;
  final DateTime startTime;
  final DateTime endTime;

  Meeting(
      {required this.title, required this.startTime, required this.endTime});
}
