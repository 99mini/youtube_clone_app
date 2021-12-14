import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/models/statistics.dart';
import 'package:youtube_clone_app2/src/models/youtube_video_result.dart';
import 'package:youtube_clone_app2/src/models/youtuber.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult> loadVideos() async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UCcQ3rsk3vO-qaJkWYva5-KQ&maxResults=10&order=date&type=video&videoDefinition=high&key=AIzaSyC1ZDwHV97_xsLhsEosSN-L9bJHbrmXZCM&pageToken=CAoQAA";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error("${response.statusText}");
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
    }
    return Future.error(Error);
  }

  Future<Statistics> getVideoInfoById(String videoId) async {
    String url =
        "/youtube/v3/videos?part=snippet, statistics&key=AIzaSyC1ZDwHV97_xsLhsEosSN-L9bJHbrmXZCM&id=${videoId}";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error("${response.statusText}");
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Statistics.fromJson(data["statistics"]);
      }
    }
    return Future.error(Error);
  }

  Future<Youtuber> getYoutuberInfoById(String channelId) async {
    String url =
        "/youtube/v3/channels?part=statistics, snippet&id=${channelId}&key=AIzaSyC1ZDwHV97_xsLhsEosSN-L9bJHbrmXZCM";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error("${response.statusText}");
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Youtuber.fromJson(data);
      }
    }
    return Future.error(Error);
  }
}
