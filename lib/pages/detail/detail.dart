import 'package:chat/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  DetailScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: primaryColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: greyColor,
                              size: 24,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(data['photo']),
                                    fit: BoxFit.cover)),
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
                                      color: greyColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Online',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: greyColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              child: Center(
                                child: SvgPicture.asset('assets/ic_call.svg'),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              child: Center(
                                child: SvgPicture.asset('assets/ic_video.svg'),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(24),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              '28/07/2021',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        topLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16)),
                                  ),
                                  child: Text('I need a help with my Computer',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, color: primaryColor)),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '09.43AM',
                                  style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      color: primaryColor.withOpacity(0.3)),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                        bottomLeft: Radius.circular(16)),
                                  ),
                                  child: Text(
                                    "What's going on with your computer?",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, color: greyColor),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/ic_double_tick.svg'),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '09.44AM',
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          color: primaryColor.withOpacity(0.3)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        height: 45,
                        child: TextFormField(  
                          style:  GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff79a3b1)),
                          decoration: InputDecoration(  
                             hintText: 'Type your message ...',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff79a3b1)),
                           prefixIcon: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(  
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('assets/ic_emot.svg'),
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset('assets/ic_attach.svg'),
                                ],
                              ),
                           ),
                          contentPadding: EdgeInsets.all(12),
                          filled: true,
                          fillColor: primaryColor.withOpacity(0.1),
                           focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(
                                  color: primaryColor.withOpacity(0.1))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(
                                  color: primaryColor.withOpacity(0.1))),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset('assets/ic_send.svg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
