import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/gonderi.dart';
import 'package:sociaworld/widgets/profilKarti.dart';

class Profilpage extends StatefulWidget {
  const Profilpage({Key? key}) : super(key: key);

  @override
  _ProfilpageState createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "furkankayaa_._",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.lock,
          size: 20,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/img/x.jpeg"),
                  ),
                  _buildStatColumn("9", "Gönderi"),
                  _buildStatColumn("136", "Takipçi"),
                  _buildStatColumn("169", "Takip"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 4),
              child: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "Furkan KAYA",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          "ComputerEng.",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Profili Düzenle",
                        style: TextStyle(color: Colors.black),
                      ),
                      // butonun rengini değiş
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade400),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Profili Paylaş",
                        style: TextStyle(color: Colors.black),
                      ),
                      // butonun rengini değiş
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade400),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.person_add,
                      color: Colors.black,
                    ),
                    // butonun rengini değiş
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade400),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2015/01/08/18/25/desk-593327_640.jpg",
                    isimSoyad: "👨🏻‍💻",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2013/04/13/18/42/tower-103417_640.jpg",
                    isimSoyad: "🤌",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_640.jpg",
                    isimSoyad: "🤠",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2015/06/22/08/38/siblings-817369_640.jpg",
                    isimSoyad: "💙",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_640.jpg",
                    isimSoyad: "🫶",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ProfilKarti(
                    resimLinki:
                        "https://cdn.pixabay.com/photo/2016/03/27/16/54/face-1283106_640.jpg",
                    isimSoyad: "me",
                  ),
                ),
              ]),
            ),
          Gonderiler(),
          ],
        ),
        ]
      ),
      
    );
  }

  Widget _buildStatColumn(String value, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
