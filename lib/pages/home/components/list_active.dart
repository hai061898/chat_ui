import 'package:chat/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListActivities extends StatelessWidget {
 final Map<String, dynamic> data;
  final bool isFirst;

  ListActivities(this.data, this.isFirst);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: isFirst ? 0 : 24),
      child: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: isFirst ? Colors.white : primaryColor),
                        shape: BoxShape.circle),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(data['photo']),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
              (isFirst)
                  ? Positioned(
                      bottom: 0,
                      right: 5,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor,
                            border: Border.all(color: Colors.white)),
                        child: Icon(
                          Icons.add_rounded,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : SizedBox()
            ],
          ),
            SizedBox(
            height: 8,
          ),
          Container(
            child: Text(data['name'],
                style: GoogleFonts.poppins(fontSize: 14, color: primaryColor)),
          )
        ],
      ),
    );
  }
}
