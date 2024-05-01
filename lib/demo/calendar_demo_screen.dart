import 'package:flutter/material.dart';

class CalendarDemoScreen extends StatefulWidget {
  @override
  _CalendarDemoScreenState createState() => _CalendarDemoScreenState();
}

class _CalendarDemoScreenState extends State<CalendarDemoScreen> {
  // Dummy data for meetings
  final List<Map<String, dynamic>> meetings = [
    {
      'date': '2024-04-24',
      'time': '09:00',
      'title': 'Team Meeting',
      'description': 'Discuss project progress',
    },
    {
      'date': '2024-04-25',
      'time': '11:00',
      'title': 'Client Presentation',
      'description': 'Present new product features',
    },
    // Add more meetings as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Time slots
          Container(
            width: 100.0,
            child: ListView.builder(
              itemCount: 24, // 24 hours
              itemBuilder: (context, index) {
                final hour = index.toString().padLeft(2, '0');
                final time = '$hour:00';
                return ListTile(
                  title: Text(time),
                );
              },
            ),
          ),
          // Right side - Calendar and Meetings
          Expanded(
            child: ListView.builder(
              itemCount: 7, // 7 days
              itemBuilder: (context, index) {
                // Dummy date - starting from today
                final currentDate = DateTime.now().add(Duration(days: index));
                final formattedDate =
                    '${currentDate.year}-${currentDate.month.toString().padLeft(2, '0')}-${currentDate.day.toString().padLeft(2, '0')}';
                final meetingsOnDate = meetings
                    .where((meeting) => meeting['date'] == formattedDate)
                    .toList();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Date
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${currentDate.day}/${currentDate.month}/${currentDate.year}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Meetings on this date
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: meetingsOnDate.length,
                      itemBuilder: (context, index) {
                        final meeting = meetingsOnDate[index];
                        return ListTile(
                          title: Text(meeting['title']),
                          subtitle: Text(meeting['description']),
                          trailing: Text(meeting['time']),
                        );
                      },
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
