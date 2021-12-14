import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_clone_app2/src/models/video.dart';

class VideoWidget extends StatefulWidget {
  final Video video;
  const VideoWidget({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.23),
      child: Image.network(
        widget.video.snippet.thumbnails.medium.url,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://yt3.ggpht.com/yti/APfAmoHFe-HsMxsZgC-FWKqrDHl6p6hixuakc9TytQ=s88-c-k-c0x00ffffff-no-rj-mo")
                .image,
          ),
          const SizedBox(width: 15),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.video.snippet.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      size: 18,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.video.snippet.channelTitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  const Text(" · "),
                  Text(
                    "조회수 1000회",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const Text(" · "),
                  Text(
                    DateFormat("yyyy-MM-dd")
                        .format(widget.video.snippet.publishedAt),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailInfo(),
        ],
      ),
    );
  }
}
