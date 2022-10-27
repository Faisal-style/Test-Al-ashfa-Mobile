import 'package:ashfa/data/users.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class one extends StatefulWidget {
  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
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
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/img/" + args.foto),
                            radius: 20,
                          ),
                          Text(
                            args.username,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                _ImagesSlider(),
                _iconHome(),
                _iconHome2()
              ],
            ),
          ),
        )),
      ),
    );
  }
}

Widget _ImagesSlider() {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
    child: CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://pict-c.sindonews.net/dyn/850/pena/news/2022/01/12/12/655047/disambangi-ulama-zulhas-harus-dekat-dengan-kiai-minimal-ketularan-wanginya-uru.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //2nd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.ytimg.com/vi/m2QKtu8BV7I/maxresdefault.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //3rd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://blogger.googleusercontent.com/img/a/AVvXsEjL3ukjzenXPAvtgBY5nlJTqPr8QCrrT4WVnKh13RrMvVxFRvDnsx38Vl8rG9Uu_0iwcVv79A6EfoJcdxti_5CHiJ1XJgr2QRECkSE0kC3shEyxPmc17hCtBS197feuWBZzi3BmwzP1yMG3nq-FRuXqxBNVWETem4yOj_Aa7rmuYnqBJUWURgQLYYwL=w1200-h630-p-k-no-nu"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //4th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://2.bp.blogspot.com/-2yKRYG5k2vs/W5HwjV2QBaI/AAAAAAAAAGI/uz9gmqJCz4Qsjgi3JFnb7NsPjVQjewndQCEwYBhgL/s1600/WhatsApp%2BImage%2B2018-09-02%2Bat%2B17.25.36.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //5th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/lis-permusyawaratan-pengasuh-pondok-pesan.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        )),
  );
}

Widget _iconHome() {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Berita
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Color.fromARGB(255, 160, 255, 64),
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.newspaper), // <-- Icon
                    Text("Berita"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
        //jadwal
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Color.fromARGB(255, 84, 115, 225),
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.schedule), // <-- Icon
                    Text("Jadwal"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
        //Iuran
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Colors.amberAccent,
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.attach_money_sharp), // <-- Icon
                    Text("Iuran"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _iconHome2() {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Absensi
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Color.fromARGB(255, 179, 28, 193),
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.co_present), // <-- Icon
                    Text("Absensi"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
        //Kitab
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Color.fromARGB(255, 218, 190, 14),
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.menu_book), // <-- Icon
                    Text("Kitab"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
        //Piket
        SizedBox.fromSize(
          size: Size(75, 75),
          child: ClipOval(
            child: Material(
              color: Color.fromARGB(255, 38, 180, 220),
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.cleaning_services), // <-- Icon
                    Text("Piket"), // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
