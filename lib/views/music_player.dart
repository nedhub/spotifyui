import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;

  MusicPlayer(
      {Key? key,
      required this.title,
      required this.description,
      required this.color,
      required this.img,
      required this.songUrl})
      : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
              ),
              child: Container(
                  width: size.width - 100,
                  height: size.height - 500,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: widget.color,
                        blurRadius: 50,
                        spreadRadius: 5,
                        offset: Offset(-10, 40)),
                  ], borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
              ),
              child: Container(
                  width: size.width - 60,
                  height: size.height - 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(widget.img)),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20))),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: size.width - 80,
                height: 70,
                child: Row(children: [
                  Icon(Icons.folder, color: Colors.white),
                  Column(
                    children: [
                      Text(widget.title,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),

                      Container(
                        width: 150,
                        child: Text(widget.description, style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5),
                          

                        ))

                      )
                          
                          
                          
                          
                          )
                    ],
                  )
                ])),
          )
        ])));
  }
}
