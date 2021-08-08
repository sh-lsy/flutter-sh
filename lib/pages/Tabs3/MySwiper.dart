import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class MySwiper extends StatefulWidget {
  MySwiper({Key? key}) : super(key: key);

  @override
  _MySwiperState createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  var imagesArr = [
    'http://img5.mtime.cn/mt/2021/04/29/101639.70040839_1280X720X2.jpg',
    'http://img5.mtime.cn/mt/2021/06/28/164630.47464388_1280X720X2.jpg',
    'http://img5.mtime.cn/mt/2021/06/10/125840.78677984_1280X720X2.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('flutter_swiper'),
        ),
        body: Column(
          children: [
            Container(
              // width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      imagesArr[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: this.imagesArr.length,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                  autoplay: true,
                ),
              ),
            )
          ],
        ));
  }
}
