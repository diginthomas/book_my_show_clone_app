import 'package:book_my_show_clone/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class Slides extends StatelessWidget {
  const Slides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: MediaQuery.of(context).size.height / 3,
      color: const Color(0xffEBEBEB),
      padding: const EdgeInsets.only(left: 3, right: 3, top: 6, bottom: 6),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          return Image.asset(
            banners[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        autoplay: true,
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.white60, activeColor: Colors.white),
        ),
        control: const SwiperControl(color: Colors.white70),
      ),
    );
  }
}
