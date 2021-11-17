// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apitestign2/discussion_comment.dart';
import 'package:like_button/like_button.dart';
import 'package:apitestign2/discussion_comment_box.dart';

class DiscussPage extends StatelessWidget {
  const DiscussPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Discussion',
        home: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
                title: Text('Discussion'),
                backgroundColor: const Color(0xFF2995B2),
                leading: GestureDetector(
                    onTap: () {
                      print("asd");
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                        ),
                      )),
                ]),
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/profile.png"),
                                      radius: 25.0,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Wizli',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 18),
                                      ),
                                      Text('12 November 2021'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Bagaimana cara membuat masker?',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Hallo teman teman saya mau menanyakan bagaimana cara membuat masker untuk melembabkan kulit? Karena kulit area mulut saya kering sehingga banyak kulit yang agak terkelupas',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          LikeButton(
                            size: 20,
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.favorite,
                                color: isLiked ? Colors.red : Colors.grey,
                                size: 20,
                              );
                            },
                            likeCount: 0,
                            countBuilder: (count, bool isLiked, String text) {
                              var color = isLiked ? Colors.black : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "Suka",
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 12,
                                  ),
                                );
                              } else {
                                result = Text(
                                  text + " " + "suka",
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 12,
                                  ),
                                );
                              }
                              return result;
                            },
                          ),
                                          SizedBox(width: 20),
                                          GestureDetector(
                                            child: Icon(
                                              Icons.mode_comment_outlined,
                                              size: 18,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '4 Komentar',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                              // fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          GestureDetector(
                                            child: Icon(
                                              Icons.reply_outlined,
                                              size: 18,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Reply',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                              // fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  )),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.more_vert,
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 2,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.grey[350])),
                              ),

                              //COMMENT SECTION

                              SizedBox(
                                height: 10,
                              ),
                              
                              //GANTI ANTARA COMMENT() YG STATIC ATAU BOXCOMMENT() YANG BISA INPUT COMMENT (TAPI BELOMAN BISA)

                              Comment(),
                              // Expanded(child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     BoxComment(),
                              //   ],
                              // )),
                            ]))))));
  }
}
