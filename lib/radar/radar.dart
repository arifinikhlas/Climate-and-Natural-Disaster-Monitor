import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import '../../custom_app_bar.dart';

class Radar extends StatelessWidget{
  const Radar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Radar',
          tabbed: false,
          scrollable: true,
          size: 128, //comment this if not tabbed 85
          tabs: [
            Tab(text: "Polar Hotspot", height: 26,),
            Tab(text: "Sebaran Asap", height: 26,),
            Tab(text: "Potensi (Harian)", height: 26,),
            Tab(text: "Potensi (Bulanan)", height: 26,)
          ],
          dropdown: true
        ),
        body: Container(
            // margin: EdgeInsets.only(top: window.viewPadding.top+68),
            child:
            Stack(
              children: [
                PhotoView(
                  imageProvider: AssetImage(
                    'assets/img_maps_radar.png',
                    // width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fitWidth,
                  ),
                  minScale: PhotoViewComputedScale.contained * 3.7,
                  maxScale: PhotoViewComputedScale.covered * 6,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 24, top: 12, left: 16, right: 16),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                              child: Text('Time',
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black
                                    )
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text('2023-06-13 22:05 WIB',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black
                                  )
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                              child: Text('dBZ',
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black
                                    )
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(child:
                                    Column(
                                      children: [
                                        ClipRRect(
                                          child: Container(color: Color(0xff07C2EF), height: 21,),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                        ),
                                        SizedBox(height: 2,),
                                        Text('10',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(child:
                                    Column(
                                      children: [
                                        Container(color: Color(0xff004BF3), height: 21,),
                                        SizedBox(height: 2,),
                                        Text('15',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xff008083), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('20',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xff02E10A), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('25',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xff01AD00), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('30',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xff82CD01), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('35',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffFFE200), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('40',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffFDA305), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('45',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffFF3900), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('50',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffE50000), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('55',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffAC0001), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('60',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      Container(color: Color(0xffC4007E), height: 21,),
                                      SizedBox(height: 2,),
                                      Text('65',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  Expanded(child:
                                  Column(
                                    children: [
                                      ClipRRect(
                                        child: Container(color: Color(0xffB209E0), height: 21,),
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6)),
                                      ),
                                      SizedBox(height: 2,),
                                      Text('70',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}