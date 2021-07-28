import 'package:chat/data/chat.dart';
import 'package:chat/data/user.dart';
import 'package:chat/pages/home/components/list_active.dart';
import 'package:chat/pages/home/components/list_msg.dart';
import 'package:chat/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Messages',
                          style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: primaryColor)),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            child: SvgPicture.asset('assets/ic_notif.svg'),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://scontent.fsgn5-4.fna.fbcdn.net/v/t1.6435-9/c77.0.206.206a/p206x206/128057038_518526995769985_2718336416444815185_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=da31f3&_nc_ohc=NUH_QArH1AkAX_TbFeD&tn=KqJv30vivpCvOv_L&_nc_ht=scontent.fsgn5-4.fna&oh=410ea8baf087225a9eb11078bf365cfd&oe=612644E2'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 24),
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'search...',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            color: greyColor,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: greenColor,
                          ),
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Color(0xfffcf8ec),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(color: greyColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(color: greyColor)),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Activities',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: primaryColor),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: data_user
                                    .map((e) => ListActivities(
                                        e, (e == data_user.first)))
                                    .toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Message',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          ),
                           Column(
                                  children: dataMsg
                                      .map((e) => ListMsg(e))
                                      .toList())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
