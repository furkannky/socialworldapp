import 'package:flutter/material.dart';

class Gonderiler extends StatefulWidget {
  const Gonderiler({Key? key}) : super(key: key);

  @override
  State<Gonderiler> createState() => _GonderilerState();
}

class _GonderilerState extends State<Gonderiler> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 1,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: <Widget>[
        _buildResimWidget(
            "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg"),
        _buildResimWidget(
            "https://cdn.pixabay.com/photo/2016/11/22/23/00/landscape-1850046_640.jpg"),
        _buildResimWidget(
            "https://cdn.pixabay.com/photo/2019/11/03/05/36/portrait-4597853_640.jpg"),
        _buildResimWidget(
            "https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445_640.jpg"),
      ],
    );
  }

  Widget _buildResimWidget(String imageUrl) {
    return Image.network(
      imageUrl,
      fit: BoxFit
          .cover, // veya BoxFit.contain, BoxFit.fill, gibi istediğiniz fit modunu seçebilirsiniz
      width: double.infinity, // İstediğiniz genişlik
      height: double.infinity, // İstediğiniz yükseklik
    );
  }
}
