import 'package:ashfa/Pages/login_screen.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                _gambarLogin(),
                _textLogo(),
              ],
            ),
            _gambarLoginScreen(),
            _text1(),
            _text2(),
            _button1(context),
            _button2(),
          ],
        ),
      ),
    );
  }
}

Widget _gambarLogin() {
  return Image.asset(
    'assets/img/download.jpg',
    width: 35,
    height: 35,
    fit: BoxFit.fitWidth,
  );
}

Widget _textLogo() {
  return const Padding(
    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
    child: Text(
      'Al-Ashfa',
      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
    ),
  );
}

Widget _gambarLoginScreen() {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
    child: Container(
      width: 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/img/gambar-3d-anak-santri-5.jpg',
            width: 100,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

Widget _text1() {
  return const Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
    child: Text(
      'Selamat Datang di Al-Ashfa Mobile !',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Roboto'),
    ),
  );
}

Widget _text2() {
  return const Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
    child: Text(
      'Aplikasi yang diperuntukkan untuk para santri Pondok Pesantren Mahasiswa Al-Ashfa',
      style: TextStyle(fontFamily: 'RobotoThin', fontWeight: FontWeight.bold),
    ),
  );
}

Widget _button1(BuildContext context) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
    child: ElevatedButton(
      onPressed: ((() => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ))
          })),
      child: Text("Masuk"),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(227, 131, 42, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}

Widget _button2() {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
    child: ElevatedButton(
      onPressed: (() {}),
      child: const Text(
        "Masuk Sebagai Tamu",
        style: TextStyle(color: Color.fromRGBO(227, 131, 42, 1)),
      ),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 242, 237, 237),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          side: const BorderSide(color: Color.fromRGBO(227, 131, 42, 0.5))),
    ),
  );
}
