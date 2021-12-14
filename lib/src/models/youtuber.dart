import 'statistics.dart';
import 'video.dart';

class Youtuber {
  Youtuber({
    this.snippet,
    this.statistics,
  });

  late Snippet? snippet;
  late Statistics? statistics;

  factory Youtuber.fromJson(Map<String, dynamic> json) => Youtuber(
        snippet: Snippet.fromJson(json["snippet"]),
        statistics: Statistics.fromJson(json["statistics"]),
      );
}
