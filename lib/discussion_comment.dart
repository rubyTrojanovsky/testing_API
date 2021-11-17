import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Center(
      //     child: Container(
      //   decoration: BoxDecoration(
      //       color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
      //   height: 20,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      //     child: Text('12 November 2021 - 19:55',
      //         style: GoogleFonts.montserrat(
      //           color: Colors.grey[600],
      //         )),
      //   ),
      // )),
      SizedBox(
        height: 10,
      ),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Ruby',
            style: GoogleFonts.montserrat(fontSize: 18),
          ),
          Text('2 menit yang lalu'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempus lacinia aliquet. Integer feugiat quam consequat orci vulputate, nec hendrerit orci blandit. Aliquam consequat mi a finibus lobortis. Curabitur vulputate.',
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
        ]))
      ])
    ]);
  }
}
