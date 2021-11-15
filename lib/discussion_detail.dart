// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.purple[200],
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      height: 40,
                                      width: 40,
                                      child: const Icon(
                                        Icons.person,
                                        size: 15,
                                        color: Colors.white,
                                      ),
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
                                          GestureDetector(
                                            child: Icon(
                                              Icons.thumb_up_outlined,
                                              size: 18,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '12 Likes',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                              // fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
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
                              Center(
                                  child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(30)),
                                height: 20,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 3),
                                  child: Text('12 November 2021 - 19:55',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey[600],
                                      )),
                                ),
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red[400],
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        height: 40,
                                        width: 40,
                                        child: const Icon(
                                          Icons.person,
                                          size: 15,
                                          color: Colors.white,
                                        ),
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
                                            'Ruby',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          ),
                                          Text('2 menit yang lalu'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempus lacinia aliquet. Integer feugiat quam consequat orci vulputate, nec hendrerit orci blandit. Aliquam consequat mi a finibus lobortis. Curabitur vulputate.',
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
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
                                        ])),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ])
                            ]))))));
  }
}
