import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/models/youtube_video_result.dart';

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
}
