import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Recomment extends StatefulWidget {
  @override
  _RecommentState createState() => _RecommentState();
}

class _RecommentState extends State<Recomment> {
  @override
  Widget build(BuildContext context) {
    final List<String> list = <String>[
      "http://i0.hdslb.com/bfs/archive/3c9b2a255036c72d99f09ee9292f19c327dfd62d.jpg@480w_270h",
      "http://i0.hdslb.com/bfs/archive/e1e32a6b900e02912c56d16ce437785e1508e915.jpg@480w_270h",
      "http://i0.hdslb.com/bfs/archive/24ec47b3b790b4784129d2d33d0fd1bc31c1a7a4.png@480w_270h"
    ];
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.295,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              alignment: Alignment.topCenter,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    list[index],
                    fit: BoxFit.contain,
                  );
                },
                loop: true,
                itemCount: list.length,
                pagination:
                    new SwiperPagination(alignment: Alignment.bottomRight),
              ),
            ),
            // GridView.builder(
            //   gridDelegate:
            //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            //   itemCount: 8,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text('$index}'),
            //     );
            //   },
            // ),
          ],
        ));
  }
}
