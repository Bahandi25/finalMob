import 'package:http/http.dart' as http;

class YoutubeApiService {
  Future<String> fetchVideoUrl(String videoId) async {
    final response = await http.get(Uri.parse(
        'https://www.youtube.com/watch?v=$videoId&pp=ygUTbm9ib2R5IG9uZSByZXB1YmxpYw%3D%3D'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load video');
    }
  }
}
