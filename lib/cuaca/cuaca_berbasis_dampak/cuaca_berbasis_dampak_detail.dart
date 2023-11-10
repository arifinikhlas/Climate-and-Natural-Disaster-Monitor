import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../custom_app_bar.dart';

class CuacaBerbasisDampakDetail extends StatefulWidget {
  // receive data from the FirstScreen as a parameter

  const CuacaBerbasisDampakDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<CuacaBerbasisDampakDetail> createState() => _CuacaBerbasisDampakDetail();
}

class _CuacaBerbasisDampakDetail extends State<CuacaBerbasisDampakDetail> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: CustomAppBar(
        settingButton: false,
        title: 'Cuaca Berbasis Dampak',
        tabbed: false,
        // size: 85,
        tabs: [
          Tab(text: "Tab One", height: 26,),
          Tab(text: "Tab Two", height: 26,),
          Tab(text: "Tab Three", height: 26,)
        ],
      ),
      body: Container(//bg
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(//dashboard
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child:
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 156,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    Color(0xff5EA6EA),
                                    Color(0xff3572B9),
                                  ],
                                )
                            ),
                          ),
                          Positioned(
                            left: -91,
                            top: 25,
                            child: Container(
                              width: 235, height: 235,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Color(0xff4B91DC),
                                      Color(0xff355AB9),
                                    ],
                                  )
                              ),
                            ),
                          ),
                          Positioned(
                            right: -71,
                            top: 107,
                            child: Container(
                              width: 110, height: 110,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Color(0xff55A1F3),
                                      Color(0xff6EAEEE),
                                    ],
                                  )
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Kalimantan Timur',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white
                                                  )
                                              )
                                          ),
                                          SizedBox(height: 4,),
                                          Text('Valid hingga Rabu, 21 Juni 2023 07:00',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white
                                                  )
                                              )
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: Color(0xffFFEB3C),
                                          border: Border.all(color: Colors.white, width: 1)
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
                                  SizedBox(height: 24,),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Colors.white,
                                    ),
                                    child:
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/icons_warning.svg', width: 24,),
                                        SizedBox(width: 16,),
                                        Text('Waspada',
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff898E88)
                                                )
                                            )
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            border: Border.all(
                                              color: Color(0xffFFEB3C),
                                            )
                                          ),
                                          child:
                                            Text('Hujan Lebat',
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),

                  ]
              ),
            ),
            SizedBox(height: 24,),
            Container(margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(text: "Wilayah", height: 25,),
                        Tab(text: "Dampak", height: 25,),
                        Tab(text: "Penanganan", height: 25,)
                      ],
                      unselectedLabelColor: Color(0xff898E88),
                      indicatorColor: Color(0xff2B7CB9),
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelStyle: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                          )
                      ),
                      labelStyle: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                          )
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 300,
                    child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Text('Kabupaten/Kota',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black
                                      )
                                  )
                              ),
                              SizedBox(height: 12,),
                              Text('Kota Bontang, Kutai Timur',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff898E88)
                                      )
                                  )
                              ),
                              SizedBox(height: 24,),
                              Text('Kecamatan',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black
                                      )
                                  )
                              ),
                              SizedBox(height: 12,),
                              Flexible(
                                child: Text('Bontang Utara, Bontang Selatan, Bontang Barat, Teluk Pandan, Sangatta Selatan',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff898E88)
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xff2B7CB9),
                                    ),
                                    child:
                                    Text('1',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            )
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Flexible(
                                    child: Text('Jalanan basah, licin, atau jarak pandang berkurang.',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(0xff2B7CB9),
                                    ),
                                    child:
                                    Text('2',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            )
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Flexible(
                                    child: Text('Gangguan skala kecil dan jangka pendek pada layanan air bersih/minum, listrik, dan gas.',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons_checklist.svg'),
                                  SizedBox(width: 12,),
                                  Flexible(
                                    child: Text('Tetap tenang dan waspada.',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons_checklist.svg'),
                                  SizedBox(width: 12,),
                                  Flexible(
                                    child: Text('Berbagi/bertukar informasi dengan tetangga sekitar rumah.',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}