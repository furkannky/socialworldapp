import 'package:flutter/material.dart';
import 'package:sociaworld/main.dart';
import 'package:sociaworld/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String dogruEmail = "furkan@gmail.com";
  final String dogruSifre = "151515";

  TextEditingController emailController = TextEditingController();
  TextEditingController sifreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     // backgroundColor: Color.fromARGB(255, 88, 123, 141),
      /*   appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Kullanıcı Girişi"),
        centerTitle: true,
      ), */
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("social world", 
              style: TextStyle(fontSize: 50, 
              fontFamily: "assets/fonts/font"),
            ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                "Giriş yap veya kayıt ol",
              ),
            ),
            Icon(Icons.person_outline, size: 120, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  labelText: "E-posta",
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  hintText: "E-posta giriniz",
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: sifreController,
                obscureText: true,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  labelText: "Şifre",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(Icons.password, color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              ),
            ),
            SizedBox(height: 20),
            
               Row(
                 children: [
                  Expanded(
                    child: ElevatedButton(
                                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 20, right: 20)),
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                                  onPressed: () {
                                    _girisKontrol();
                                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnaSayfa()));
                                  },
                                  child: Text(
                                    "Giriş Yap",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                  ),
                  SizedBox(width: 5,),
                   Expanded(
                     child: ElevatedButton(
                                   style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(left: 25, right: 25)),
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                                   onPressed: () {
                      _girisKontrol();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AnaSayfa()));
                                   },
                                   child: Text(
                      "Misafir Girişi ",
                      style: TextStyle(color: Colors.black),
                                   ),
                                 ),
                   ),
                 ],
               ),
          ],
        ),
      ),
    );
  }

  void _girisKontrol() {
    String kullaniciEmail = emailController.text;
    String kullaniciSifre = sifreController.text;

    if (kullaniciEmail == dogruEmail && kullaniciSifre == dogruSifre) {
      _girisBasariliSnackbar();
    } else {
      _hataliGirisSnackbar();
    }
  }

  void _girisBasariliSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Giriş başarılı. Hoş geldiniz, $dogruEmail!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _hataliGirisSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Hatalı e-posta veya şifre. Giriş başarısız.'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
