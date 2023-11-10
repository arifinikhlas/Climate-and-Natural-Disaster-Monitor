import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'cuaca_berbasis_dampak_detail.dart';

class CuacaBerbasisDampakList extends StatelessWidget{
  const CuacaBerbasisDampakList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                                    Text('Kalimantan Timur',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Rabu, 21 Juni 2023 07:00',
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
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffFFEB3C),
                                ),
                                child:
                                  Text('1',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
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
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  Text('Kota Bontang, Kutai Timur',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 12,),
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  SizedBox(
                                    width: 224,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child:
                                            Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                                style: GoogleFonts.manrope(
                                                    textStyle: TextStyle(
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black
                                                    )
                                                ),
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                              )
                                        ),
                                      ],
                                    ),
                                  )
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
                    onTap: (){_navigateToDetail(context);},
                  ),

                  SizedBox(height: 20,),

                  InkWell(
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
                                    Text('Kalimantan Timur',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Rabu, 21 Juni 2023 07:00',
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
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFEB3C),
                                ),
                                child:
                                Text('1',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
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
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  Text('Kota Bontang, Kutai Timur',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 12,),
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  SizedBox(
                                    width: 224,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child:
                                            Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black
                                                  )
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                        ),
                                      ],
                                    ),
                                  )
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
                    onTap: (){_navigateToDetail(context);},
                  ),

                  SizedBox(height: 20,),

                  InkWell(
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
                                    Text('Kalimantan Timur',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Rabu, 21 Juni 2023 07:00',
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
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFEB3C),
                                ),
                                child:
                                Text('1',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
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
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  Text('Kota Bontang, Kutai Timur',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 12,),
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  SizedBox(
                                    width: 224,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child:
                                            Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black
                                                  )
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                        ),
                                      ],
                                    ),
                                  )
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
                    onTap: (){_navigateToDetail(context);},
                  ),

                  SizedBox(height: 20,),

                  InkWell(
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
                                    Text('Kalimantan Timur',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Rabu, 21 Juni 2023 07:00',
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
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFEB3C),
                                ),
                                child:
                                Text('1',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
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
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  Text('Kota Bontang, Kutai Timur',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 12,),
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  SizedBox(
                                    width: 224,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child:
                                            Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black
                                                  )
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                        ),
                                      ],
                                    ),
                                  )
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
                    onTap: (){_navigateToDetail(context);},
                  ),

                  SizedBox(height: 20,),

                  InkWell(
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
                                    Text('Kalimantan Timur',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Rabu, 21 Juni 2023 07:00',
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
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFEB3C),
                                ),
                                child:
                                Text('1',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
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
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  Text('Kota Bontang, Kutai Timur',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 12,),
                                  Text('Kabupaten/Kota',
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
                                  SizedBox(height: 4,),
                                  SizedBox(
                                    width: 224,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child:
                                            Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black
                                                  )
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                        ),
                                      ],
                                    ),
                                  )
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
                    onTap: (){_navigateToDetail(context);},
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
          pageBuilder: (context, animation1, animation2) => CuacaBerbasisDampakDetail(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
  }
}