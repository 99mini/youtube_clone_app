import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.23),
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
          SizedBox(width: 15),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "단기금융상품들 이해하기 (RP/MMF/발행어음)",
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
                    "박곰희",
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
                    "2021-12-13",
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
