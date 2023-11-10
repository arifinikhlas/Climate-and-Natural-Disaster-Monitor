import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IklimPanel extends StatefulWidget{

  final ScrollController controller;

  const IklimPanel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<IklimPanel> createState() => _IklimPanelState();
}

class _IklimPanelState extends State<IklimPanel> {

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
          Text('Legenda',
              style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  )
              )
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff898E88)
                              )
                          ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff257600),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Masih ada hujan s/d updating',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('1 - 5',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff9DFF6E),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Sangat Pendek (Very Short)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('6 - 10',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFCFC01),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Pendek (Short)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('11 - 20',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEB9900),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Setengah (Moderate)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('21 - 30',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff754D01),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Panjang (Long)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('31 - 60',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFDC2BF),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Sangat Panjang (Very Long)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(
                width: 38,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('> 60',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88)
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFE0700),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Text('Extrem Panjang (Extremely Long)',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898E88)
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }

}

