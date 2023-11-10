import 'dart:ui';

import 'package:bmkg/cuaca/peringatan_dini_cuaca/peringatan_dini_cuaca_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import '../../custom_app_bar.dart';

class CitraSatelit extends StatelessWidget{
  const CitraSatelit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
            settingButton: false,
            title: 'Citra Satelit',
            tabbed: false,
            scrollable: true,
            // size: 128, //comment this if not tabbed 85
            tabs: [
              Tab(text: "Polar Hotspot", height: 26,),
              Tab(text: "Sebaran Asap", height: 26,),
              Tab(text: "Potensi (Harian)", height: 26,),
              Tab(text: "Potensi (Bulanan)", height: 26,)
            ],
            // dropdown: true
        ),
        body: Container(
            // margin: EdgeInsets.only(top: 48),
            child:
            Stack(
              children: [
                PhotoView(
                  imageProvider: AssetImage(
                    'assets/img_maps_citra_satelit.png',
                    // width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fitWidth,
                  ),
                  minScale: PhotoViewComputedScale.contained * 2.7,
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
                            Text('2023-06-13T15:00:00Z',
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
                            Spacer(),
                            Row(
                              children: [
                                Text('Source',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                      )
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('Himawari 9',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child:
                                            ClipRRect(
                                              child: Container(color: Color(0xffEA3D39), height: 21,),
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                            ),
                                        ),
                                        Expanded(
                                          child: Container(color: Color(0xffE85554), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                            Container(color: Color(0xffF4D5B8), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xffF2C294), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xffF3A737), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xffE99A23), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xffD29C30), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xffC3BB27), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff9DCF0C), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff86F400), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff77EA8C), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff63C692), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff3FB2F5), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff4A89F3), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff3765BA), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          Container(color: Color(0xff0F4A84), height: 21,),
                                        ),
                                        Expanded(
                                          child:
                                          ClipRRect(
                                            child: Container(color: Color(0xff000300), height: 21,),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 18,
                                        child: Text('-100',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-80',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-75',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-69',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-62',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-56',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-48',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-41',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-34',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-28',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-21',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-13',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('-7',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('0',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('8',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('14',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('21',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                        child: Text('60',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ],
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