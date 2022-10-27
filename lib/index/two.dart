import 'package:ashfa/data/users.dart';
import 'package:flutter/material.dart';

class two extends StatefulWidget {
  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFE07219),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF9C1818),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NIS                    : ' + args.nis,
                            ),
                            Text('Alamat              : ' + args.alamat),
                            Text('Nama Ibu          : ' + args.ibu),
                            Text('Universitas        : ' + args.univ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
