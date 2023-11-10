import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GempaBumiTerkiniPanel extends StatefulWidget{

  final ScrollController controller;

  const GempaBumiTerkiniPanel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<GempaBumiTerkiniPanel> createState() => _GempaBumiTerkiniPanelState();
}

class _GempaBumiTerkiniPanelState extends State<GempaBumiTerkiniPanel> {

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 24),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 134,
            height: 3,
            decoration: BoxDecoration(
              color: Color(0xffDAE1DA),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: 16,),
          Text('Gempabumi Dirasakan',
            style: GoogleFonts.manrope(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                )
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_magnitude.svg"),
                    SizedBox(height: 8,),
                    Text(
                        "Magnitude",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        )
                    ),
                    SizedBox(height: 4,),
                    Text(
                        "4.4",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            )
                        )
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_kedalaman.svg"),
                    SizedBox(height: 8,),
                    Text(
                        "Kedalaman",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        )
                    ),
                    SizedBox(height: 4,),
                    Text(
                        "29 Km",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            )
                        )
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_koordinat.svg"),
                    SizedBox(height: 8,),
                    Text(
                        "Koordinat",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        )
                    ),
                    SizedBox(height: 4,),
                    Text(
                        "8.07 LS 107.88 BT",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            )
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20,bottom: 24),
            child:
            Divider(
              color: Color(0xffDAE1DA),
              thickness: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_waktu.svg"),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Waktu",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff898E88)
                                )
                            )
                        ),
                        SizedBox(height: 4,),
                        Text(
                            "7 Mei 2023, 01:57:00 WIB",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                )
                            )
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_lokasi.svg"),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Lokasi Gempa",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff898E88)
                                )
                            )
                        ),
                        SizedBox(height: 4,),
                        Text(
                            "27 Km Barat Daya Aceh Besar",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                )
                            )
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_wilayah.svg"),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Wilayah Dirasakan (Skala MMI)",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff898E88)
                                )
                            )
                        ),
                        SizedBox(height: 4,),
                        Text(
                            "II Pangandaran, II Ciamis",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                )
                            )
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons_dashboard_jarak.svg"),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Jarak",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff898E88)
                                )
                            )
                        ),
                        SizedBox(height: 4,),
                        Text(
                            "1894 Km dari Dayeuhkolot",
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                )
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),

    );
  }

}