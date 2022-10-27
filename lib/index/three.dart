import 'package:ashfa/Pages/opening_screen.dart';
import 'package:ashfa/data/users.dart';
import 'package:flutter/material.dart';

class three extends StatefulWidget {
  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as users;
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/img/hand-painted-background-violet-orange-colours_23-2148427578.webp"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: SafeArea(
                    child: Center(
                      child: CircleAvatar(
                        radius: 82,
                        backgroundColor: Color.fromRGBO(227, 131, 42, 1),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/img/" + args.foto),
                          radius: 80,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Muhammad Ibnu Aqil',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                _keluar(context),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

Widget _keluar(BuildContext context) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
    child: ElevatedButton(
      onPressed: ((() => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OpeningScreen(),
                ))
          })),
      child: Text("Keluar"),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(227, 131, 42, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}
