import 'package:flutter/material.dart';
import 'package:mediverse_app/components/navbar.dart';
import 'package:mediverse_app/components/footer.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(title: 'Calendar'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Select a date:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TableCalendar(
            firstDay: DateTime.utc(2022),
            lastDay: DateTime.utc(2025),
            focusedDay: _selectedDate,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDate, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDate = selectedDay;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
