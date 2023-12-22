import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String? profilResimLinki;
  final String? isimSoyad;
  final String? gecenSure;
  final String? gonderiResimLinki;
  final String? aciklama;

  const GonderiKarti(
      {Key? key,
      this.profilResimLinki,
      this.isimSoyad,
      this.gecenSure,
      this.gonderiResimLinki,
      this.aciklama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(profilResimLinki!),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            isimSoyad!,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            gecenSure!,
                            style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(aciklama!,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  )),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                gonderiResimLinki!,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IkonluButonum(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  IkonluButonum(
                    ikonum: Icons.comment,
                    yazi: "Yorum Yap",
                    fonksiyonum: () {
                      print("Yorum");
                    },
                  ),
                   IkonluButonum(
                    ikonum: Icons.share,
                    yazi: "paylaş",
                    fonksiyonum: () {
                      print("paylaş");
                    },
                  ),                
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FlatButton {
  static icon(
      {required Null Function() onPressed,
      required Icon icon,
      required Text label}) {}
}

class IkonluButonum extends StatelessWidget {
  final IconData? ikonum;
  final String? yazi;
  final fonksiyonum;

   IkonluButonum({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(yazi!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
