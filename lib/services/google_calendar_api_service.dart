import 'package:http/http.dart' as http;

class GoogleCalendarApiService {
  Future<void> fetchEvents(DateTime date) async {
    final response = await http.get(
        Uri.parse('https://www.googleapis.com/calendar/v3/events?date=$date'));
    if (response.statusCode == 200) {
    } else {
      throw Exception('Failed to load events');
    }
  }
}
