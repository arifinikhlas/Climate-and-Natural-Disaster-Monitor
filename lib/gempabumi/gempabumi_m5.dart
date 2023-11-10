import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gempabumi_detail.dart';

class GempaBumiM5 extends StatelessWidget{
  const GempaBumiM5({
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

                SizedBox(height: 16,),

                InkWell(
                  onTap: (){
                    _navigateToDetail(context);
                  },
                  child: Container(//item
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 182,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text('111 Km TimurLaut LABUANBAJO-NTT',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff2B7CB9),
                              ),
                              child:
                              Text('5.3',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Divider(
                          color: Color(0xffDAE1DA),
                          thickness: 1,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_waktu.svg'),
                                    SizedBox(width: 12,),
                                    Text('5 Mei 2023, 18:44:04 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_jarak.svg'),
                                    SizedBox(width: 12,),
                                    Text('1399 Km dari Dayeuhkolot',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            SvgPicture.asset(
                              "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                              width: 20,
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),

                InkWell(
                  onTap: (){
                    _navigateToDetail(context);
                  },
                  child: Container(//item
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 182,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text('111 Km TimurLaut LABUANBAJO-NTT',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff2B7CB9),
                              ),
                              child:
                              Text('5.3',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Divider(
                          color: Color(0xffDAE1DA),
                          thickness: 1,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_waktu.svg'),
                                    SizedBox(width: 12,),
                                    Text('5 Mei 2023, 18:44:04 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_jarak.svg'),
                                    SizedBox(width: 12,),
                                    Text('1399 Km dari Dayeuhkolot',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            SvgPicture.asset(
                              "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                              width: 20,
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),

                InkWell(
                  onTap: (){
                    _navigateToDetail(context);
                  },
                  child: Container(//item
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 182,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text('111 Km TimurLaut LABUANBAJO-NTT',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff2B7CB9),
                              ),
                              child:
                              Text('5.3',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Divider(
                          color: Color(0xffDAE1DA),
                          thickness: 1,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_waktu.svg'),
                                    SizedBox(width: 12,),
                                    Text('5 Mei 2023, 18:44:04 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_jarak.svg'),
                                    SizedBox(width: 12,),
                                    Text('1399 Km dari Dayeuhkolot',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            SvgPicture.asset(
                              "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                              width: 20,
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),

                InkWell(
                  onTap: (){
                    _navigateToDetail(context);
                  },
                  child: Container(//item
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 182,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text('111 Km TimurLaut LABUANBAJO-NTT',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff2B7CB9),
                              ),
                              child:
                              Text('5.3',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Divider(
                          color: Color(0xffDAE1DA),
                          thickness: 1,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_waktu.svg'),
                                    SizedBox(width: 12,),
                                    Text('5 Mei 2023, 18:44:04 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_jarak.svg'),
                                    SizedBox(width: 12,),
                                    Text('1399 Km dari Dayeuhkolot',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            SvgPicture.asset(
                              "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                              width: 20,
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),

                InkWell(
                  onTap: (){
                    _navigateToDetail(context);
                  },
                  child: Container(//item
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 182,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text('111 Km TimurLaut LABUANBAJO-NTT',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff2B7CB9),
                              ),
                              child:
                              Text('5.3',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Divider(
                          color: Color(0xffDAE1DA),
                          thickness: 1,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_waktu.svg'),
                                    SizedBox(width: 12,),
                                    Text('5 Mei 2023, 18:44:04 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons_gempabumi_jarak.svg'),
                                    SizedBox(width: 12,),
                                    Text('1399 Km dari Dayeuhkolot',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            SvgPicture.asset(
                              "assets/icons_peringatan_dini_cuaca_right_arrow.svg",
                              width: 20,
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),

              ],
            )
        )
    );
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => GempaBumiDetail(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
  }

}