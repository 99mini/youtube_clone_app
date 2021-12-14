/// viewCount : "337933"
/// likeCount : "7904"
/// dislikeCount : "58"
/// favoriteCount : "0"
/// commentCount : "575"

class Statistics {
  Statistics({
    String? viewCount,
    String? likeCount,
    String? dislikeCount,
    String? favoriteCount,
    String? commentCount,
    String? subscriberCount,
  }) {
    _viewCount = viewCount;
    _likeCount = likeCount;
    _dislikeCount = dislikeCount;
    _favoriteCount = favoriteCount;
    _commentCount = commentCount;
    _subscriberCount = subscriberCount;
  }

  Statistics.fromJson(dynamic json) {
    _viewCount = json['viewCount'];
    _likeCount = json['likeCount'];
    _dislikeCount = json['dislikeCount'];
    _favoriteCount = json['favoriteCount'];
    _commentCount = json['commentCount'];
    _subscriberCount = json['subscriberCount'];
  }
  String? _viewCount;
  String? _likeCount;
  String? _dislikeCount;
  String? _favoriteCount;
  String? _commentCount;
  String? _subscriberCount;

  String? get viewCount => _viewCount;
  String? get likeCount => _likeCount;
  String? get dislikeCount => _dislikeCount;
  String? get favoriteCount => _favoriteCount;
  String? get commentCount => _commentCount;
  String? get subscriberCount => _subscriberCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['viewCount'] = _viewCount;
    map['likeCount'] = _likeCount;
    map['dislikeCount'] = _dislikeCount;
    map['favoriteCount'] = _favoriteCount;
    map['commentCount'] = _commentCount;
    map['subscriberCount'] = _subscriberCount;
    return map;
  }
}
