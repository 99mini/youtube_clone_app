import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheat extends StatelessWidget {
  const YoutubeBottomSheat({Key? key}) : super(key: key);

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "만들기",
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.close))
      ],
    );
  }

  Widget _itemButton(
      {required String icon,
      required String label,
      required double iconSize,
      required Function ontap}) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: Container(
                width: iconSize,
                height: iconSize,
                child: SvgPicture.asset("assets/svg/icons/${icon}.svg"),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(height: 10),
            _itemButton(
                icon: "upload",
                label: "동영상 업로드",
                iconSize: 17,
                ontap: () {
                  print("동영상 업로드 기능");
                }),
            SizedBox(height: 10),
            _itemButton(
                icon: "broadcast",
                label: "실시간 스트리밍 시작",
                iconSize: 25,
                ontap: () {
                  print("동영상 스트리밍 기능");
                }),
          ],
        ),
      ),
    );
  }
}
