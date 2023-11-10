import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'glosarium_detail.dart';

class GlosariumList extends StatelessWidget{
  const GlosariumList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: window.viewPadding.top),
        child:
        Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xffFCFCFC),
            child:
            ListView(
              // padding: EdgeInsets.zero,
              children: [

                SizedBox(height: 20,),

                Container(//item
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(20),
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
                      Container(
                        padding: EdgeInsets.all(24),
                        child: Image.asset('assets/logo_large.png'),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            border: Border.all(color: Color(0xff0033CC))
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Info BMKG',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      SizedBox(height: 4,),
                      Text('Cuaca, Iklim, dan Gempabumi Indonesia',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff898E88)
                              )
                          )
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 28,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/glosarium/icons_glosarium_cuaca.svg'),
                        SizedBox(width: 16,),
                        Text('Glosari Cuaca',
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                )
                            )
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                          width: 20,
                        )
                      ],
                    )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          Image.asset('assets/glosarium/icons_glosarium_iklim.png'),
                          SizedBox(width: 16,),
                          Text('Glosari Iklim',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_kualitas_udara.svg'),
                          SizedBox(width: 16,),
                          Text('Glosari Kualitas Udara',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_gempabumi.svg'),
                          SizedBox(width: 16,),
                          Text('Glosari Gempabumi',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_cuaca_maritim.svg'),
                          SizedBox(width: 16,),
                          Text('Glosari Cuaca Maritim',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_cuaca_penerbangan.svg'),
                          SizedBox(width: 16,),
                          Text('Glosari Cuaca Penerbangan',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_cuaca_karhutla.svg'),
                          SizedBox(width: 16,),
                          Text('Glosari Cuaca Karhutla',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 28,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          Image.asset('assets/glosarium/icons_glosarium_bmkg.png'),
                          SizedBox(width: 16,),
                          Text('Website BMKG',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_twitter.svg'),
                          SizedBox(width: 16,),
                          Text('Twitter @infoBMKG',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_facebook.svg'),
                          SizedBox(width: 16,),
                          Text('Facebook @infoBMKG',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          Image.asset('assets/glosarium/icons_glosarium_instagram.png'),
                          SizedBox(width: 16,),
                          Text('Instagram @infoBMKG',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 8,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_youtube.svg'),
                          SizedBox(width: 16,),
                          Text('Youtube @infoBMKG',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 28,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
                  child: Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/glosarium/icons_glosarium_versi.svg'),
                          SizedBox(width: 16,),
                          Text('Versi 0.0.0',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  )
                              )
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                            width: 20,
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: 28,),

              ],
            )
        )
    );
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => GlosariumDetail(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
  }
}