import 'package:ashfa/Pages/home_screen.dart';
import 'package:ashfa/data/users.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Row(
                children: [
                  _BackButton(context),
                  Spacer(),
                  _gambarLogin(),
                ],
              ),
              _text1(),
              _text2(),
              _input1(),
              _input2()
            ],
          ),
        ),
        floatingActionButton: _LoginButton(context),
      ),
    );
  }
}

Widget _BackButton(BuildContext context) {
  return IconButton(
      onPressed: (() => {Navigator.pop(context)}),
      icon: const Icon(Icons.arrow_back));
}

Widget _text1() {
  return const Padding(
    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
    child: Text("Masuk",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Roboto')),
  );
}

Widget _text2() {
  return const Padding(
    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
    child: Text(
      'Silahkan Masuk Menggunakan NIS yang terdaftar',
      style: TextStyle(fontFamily: 'RobotoThin', fontWeight: FontWeight.bold),
    ),
  );
}

Widget _LoginButton(BuildContext context) {
  return FloatingActionButton(
    backgroundColor: const Color.fromRGBO(227, 131, 42, 1),
    onPressed: () {
      String kalimat = "";
      String username = "";
      String password = _passwordController.text;
      String nis = _usernameController.text;
      String foto = "";
      String alamat = "Tidak Ada Data";
      String ibu = "Tidak Ada Data";
      String univ = "Tidak Ada Data";
      if (nis == "12345" && password == "123") {
        kalimat = "Login Berhasil";
        username = "Muhammad Ibnu Aqil";
        alamat = "Yogyakarta";
        ibu = "Sulastri";
        univ = "Universitas Gadjah Mada";
        foto = "foto1.jpg";
        Navigator.pushNamed(context, '/loginscren/home',
            arguments: users(username, foto, nis, alamat, ibu, univ));
      } else if (nis == "12346" && password == "122") {
        kalimat = "Login Berhasil";
        username = "Muhammad Khoirul Anam";
        alamat = "Sulawesi Selatan";
        ibu = "Khumaeroh";
        univ = "UPN \"Veteran\" Yogyakarta";
        foto = "foto2.jpg";
        Navigator.pushNamed(context, '/loginscren/home',
            arguments: users(username, foto, nis, alamat, ibu, univ));
      } else {
        kalimat = "Login Gagal";
      }
      SnackBar snackbar = SnackBar(content: Text(kalimat));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    },
    tooltip: 'Login',
    child: const Icon(
      Icons.arrow_right_alt,
      size: 40,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  );
}

Widget _input1() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: TextFormField(
      controller: _usernameController,
      decoration: const InputDecoration(
          labelText: "NIS",
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEF5A0C)))),
    ),
  );
}

Widget _input2() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        decoration: const InputDecoration(
            labelText: "Password",
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xFFEF5A0C),
            )))),
  );
}

Widget _gambarLogin() {
  return Image.asset(
    'assets/img/download.jpg',
    width: 35,
    height: 35,
    fit: BoxFit.fitWidth,
  );
}
