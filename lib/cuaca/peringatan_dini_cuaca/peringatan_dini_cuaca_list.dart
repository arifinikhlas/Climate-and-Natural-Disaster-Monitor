import 'dart:ui';

import 'package:bmkg/cuaca/peringatan_dini_cuaca/peringatan_dini_cuaca_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PeringatanDiniCuacaList extends StatelessWidget{
  const PeringatanDiniCuacaList({
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

                InkWell(
                  onTap: (){_navigateToDetail(context);},
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
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Peringatan Dini Cuaca Bengkulu',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      )
                                  )
                                ),
                                SizedBox(height: 4,),
                                Text('2023-06-19 01:00:00 WIB',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff898E88)
                                        )
                                    )
                                ),
                              ]
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 12,
                                  )
                                ]
                              ),
                              child: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_warning.svg"),
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
                            Container( child:
                              Flexible(
                                child: Text('Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 17:00 berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu',
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
                              ),
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

                SizedBox(height: 20,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
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
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Peringatan Dini Cuaca Bengkulu',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                  SizedBox(height: 4,),
                                  Text('2023-06-19 01:00:00 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff898E88)
                                          )
                                      )
                                  ),
                                ]
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 12,
                                    )
                                  ]
                              ),
                              child: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_warning.svg"),
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
                            Container( child:
                            Flexible(
                              child: Text('Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 17:00 berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu',
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
                            ),
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

                SizedBox(height: 20,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
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
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Peringatan Dini Cuaca Bengkulu',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                  SizedBox(height: 4,),
                                  Text('2023-06-19 01:00:00 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff898E88)
                                          )
                                      )
                                  ),
                                ]
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 12,
                                    )
                                  ]
                              ),
                              child: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_warning.svg"),
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
                            Container( child:
                            Flexible(
                              child: Text('Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 17:00 berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu',
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
                            ),
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

                SizedBox(height: 20,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
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
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Peringatan Dini Cuaca Bengkulu',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                  SizedBox(height: 4,),
                                  Text('2023-06-19 01:00:00 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff898E88)
                                          )
                                      )
                                  ),
                                ]
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 12,
                                    )
                                  ]
                              ),
                              child: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_warning.svg"),
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
                            Container( child:
                            Flexible(
                              child: Text('Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 17:00 berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu',
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
                            ),
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

                SizedBox(height: 20,),

                InkWell(
                  onTap: (){_navigateToDetail(context);},
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
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Peringatan Dini Cuaca Bengkulu',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                  SizedBox(height: 4,),
                                  Text('2023-06-19 01:00:00 WIB',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff898E88)
                                          )
                                      )
                                  ),
                                ]
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 12,
                                    )
                                  ]
                              ),
                              child: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_warning.svg"),
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
                            Container( child:
                            Flexible(
                              child: Text('Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 17:00 berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu',
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
                            ),
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

                SizedBox(height: 20,),

              ],
            )
        )
    );
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => PeringatanDiniCuacaDetail(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
  }
}