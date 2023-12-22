import 'package:flutter/material.dart';

class Gonderiler extends StatelessWidget {
  final List<String> imageUrls = [
    "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/12/15/16/57/tree-569275_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/12/22/11/09/schilthorn-3033448_640.jpg",
    "https://cdn.pixabay.com/photo/2019/09/02/09/52/lake-4446923_640.jpg",
    "https://cdn.pixabay.com/photo/2018/10/19/12/14/train-3758523_640.jpg",
    "https://cdn.pixabay.com/photo/2015/01/07/11/31/tigers-591359_640.jpg",
     "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_1280.jpg",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow(0),
        buildRow(3),
        buildRow(6),
        buildRow(9),
      ],
    );
  }

  Widget buildImage(String imageUrl) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 100,
          width: 110,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildRow(int startIndex) {
    if (startIndex >= imageUrls.length) {
      return Container(); // veya başka bir hata durumu widget'ı
    }

    return Row(
      children: List.generate(
        3,
        (index) {
          final imageIndex = startIndex + index;
          if (imageIndex < imageUrls.length) {
            return buildImage(imageUrls[imageIndex]);
          } else {
            return Container(); // veya başka bir hata durumu widget'ı
          }
        },
      ),
    );
  }
}
