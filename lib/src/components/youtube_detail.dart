import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "youtube video review",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Row(
            children: [
              Text(
                "조회수 1000회",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const Text(" · "),
              Text(
                "2021-12-13",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _descriptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        "data",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buttonOne({required String icon, required String text}) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/${icon}.svg"),
        Text(text),
      ],
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne(icon: "like", text: "1000"),
        _buttonOne(icon: "dislike", text: "0"),
        _buttonOne(icon: "share", text: "공유"),
        _buttonOne(icon: "save", text: "저장"),
      ],
    );
  }

  Widget get line => Container(
        height: 1,
        color: Colors.black.withOpacity(0.1),
      );

  Widget _ownerZone() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              backgroundImage: Image.network(
                      "https://yt3.ggpht.com/yti/APfAmoHFe-HsMxsZgC-FWKqrDHl6p6hixuakc9TytQ=s88-c-k-c0x00ffffff-no-rj-mo")
                  .image,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "박곰희",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "구독자 100000",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: const Text(
                "구독",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            )
          ],
        ));
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _buttonZone(),
          SizedBox(height: 20),
          line,
          _ownerZone(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          )
        ],
      ),
    );
  }
}
