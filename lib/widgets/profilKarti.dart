import 'package:flutter/material.dart';
import 'package:sociaworld/profilsayfasi.dart';

class ProfilKarti extends StatefulWidget {
  final String resimLinki;
  final String isimSoyad;

  ProfilKarti({
    required this.resimLinki,
    required this.isimSoyad,
  });

  @override
  _ProfilKartiState createState() => _ProfilKartiState();
}

class _ProfilKartiState extends State<ProfilKarti> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.resimLinki),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(widget.isimSoyad,
                style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
