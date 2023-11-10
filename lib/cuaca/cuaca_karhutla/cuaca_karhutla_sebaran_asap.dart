import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CuacaKarhutlaSebaranAsap extends StatelessWidget{
  const CuacaKarhutlaSebaranAsap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: window.viewPadding.top+24),
        child:
        Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xffFCFCFC),
            child:
            ListView(
              // padding: EdgeInsets.zero,
              children: [

                SizedBox(height: 20,),

                Container(//polar hotspot
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 12,
                        )
                      ]
                  ),
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20, left: 16,right: 16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text('Citra Sebaran Asap 18 Juni 2023 16.00 WIB',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(
                            padding: const EdgeInsets.only(left: 16,right: 16, bottom: 16),
                            width: MediaQuery.of(context).size.width,
                            child:
                            Image.asset("assets/img_cuaca_karhutla_sebaran_asap.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover
                            )
                        ),
                      ]
                  ),
                ),

                SizedBox(height: 20,),

              ],
            )
        )
    );
  }
}