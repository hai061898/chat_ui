import 'package:chat/pages/detail/detail.dart';
import 'package:chat/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListMsg extends StatelessWidget {
  final Map<String, dynamic> data;
  ListMsg(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(data)));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(data['photo']),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 1),
                              color: (data['online']) ? greenColor : greyColor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['name'],
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: primaryColor,
                              fontWeight: (data['unread'])
                                  ? FontWeight.w500
                                  : FontWeight.w300),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 + 70,
                          child: Text(
                            data['last_msg'],
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: (data['unread'])
                                    ? primaryColor
                                    : primaryColor.withOpacity(0.5)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          data['last_msg_dtm'],
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: primaryColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        (data['unread'])
                            ? Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text('1',
                                        style: GoogleFonts.poppins(
                                            fontSize: 8, color: Colors.white))),
                              )
                            : SizedBox()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
