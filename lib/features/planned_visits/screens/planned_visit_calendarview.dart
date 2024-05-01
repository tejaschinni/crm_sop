import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class PlannedVisitCalendarViewScreen extends StatefulWidget {
  const PlannedVisitCalendarViewScreen({super.key});

  @override
  State<PlannedVisitCalendarViewScreen> createState() =>
      _PlannedVisitCalendarViewScreenState();
}

class _PlannedVisitCalendarViewScreenState
    extends State<PlannedVisitCalendarViewScreen> {
  @override
  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));

    meetings.add(Meeting(
        'Meeting 1',
        DateTime(2024, 04, 23, 12, 0, 0),
        DateTime(2024, 04, 23, 12, 0, 0).add(const Duration(hours: 2)),
        const Color(0xFF0F0644),
        false));

    meetings.add(Meeting(
        'Meeting 2',
        DateTime(2024, 04, 24, 16, 0, 0),
        DateTime(2024, 04, 24, 16, 0, 0).add(const Duration(hours: 2)),
        const Color(0xFF0F0644),
        false));
    meetings.add(Meeting(
        'Meeting 3',
        DateTime(2024, 04, 26, 16, 0, 0),
        DateTime(2024, 04, 26, 16, 0, 0).add(const Duration(hours: 2)),
        const Color(0xFF0F0644),
        false));
    return meetings;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: SfCalendar(
                view: CalendarView.day,
                dataSource: MeetingDataSource(_getDataSource()),
                // allowedViews: [CalendarView.day],

                monthViewSettings: MonthViewSettings(
                    agendaItemHeight: 500,
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
