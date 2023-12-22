 
 /*
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
 */

import 'package:flutter/material.dart';

class Gonderiler extends StatefulWidget {
  const Gonderiler({super.key});

  @override
  State<Gonderiler> createState() => _GonderilerState();
}

class _GonderilerState extends State<Gonderiler> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Expanded(
                child: Container(
                  height: 100,
                  width: 110,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_1280.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/15/16/57/tree-569275_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/12/22/11/09/schilthorn-3033448_640.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Expanded(
                child: Container(
                  height: 100,
                  width: 110,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2019/09/02/09/52/lake-4446923_640.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/15/16/57/tree-569275_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2018/10/19/12/14/train-3758523_640.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Expanded(
                child: Container(
                  height: 100,
                  width: 110,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/01/07/11/31/tigers-591359_640.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/15/16/57/tree-569275_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Expanded(
                child: Container(
                  height: 100,
                  width: 110,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_1280.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 110,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/15/16/57/tree-569275_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        )
      ],
    );
  }
}