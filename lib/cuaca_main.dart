import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../custom_app_bar.dart';

class CuacaMain extends StatefulWidget{
  const CuacaMain({
    Key? key,
  }) : super(key: key);

  @override
  State<CuacaMain> createState() => _CuacaMainState();
}

class _CuacaMainState extends State<CuacaMain> {
  final List<String> items = [
    'Cileunyi, Kab. Bandung, Jawa Barat',
    'Cimenyan, Kab. Bandung, Jawa Barat',
    'Cilengkrang, Kab. Bandung, Jawa Barat',
    'Bojongsoang, Kab. Bandung, Jawa Barat',
    'Dayeuhkolot, Kab. Bandung, Jawa Barat',
    'Margahayu, Kab. Bandung, Jawa Barat',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        settingButton: true,
        title: 'Cuaca',
        tabbed: false,
        scrollable: true,
        // size: 85, //comment this if not tabbed
        tabs: [
          Tab(text: "Polar Hotspot", height: 26,),
          Tab(text: "Sebaran Asap", height: 26,),
          Tab(text: "Potensi (Harian)", height: 26,),
          Tab(text: "Potensi (Bulanan)", height: 26,)
        ],
      ),
      body: Container(
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

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_kecamatan.svg"),
                            SizedBox(width: 16,),
                            Text(
                              'Kecamatan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff898E88),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        items: items
                            .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff898E88),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 45,
                          padding: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Color(0xffECECEC),
                          ),
                        ),
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset("assets/icons_cuaca_arrow_down.svg"),
                          iconSize: 14,
                          iconEnabledColor: Color(0xff898E88),
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          offset: Offset(0, -8),
                          maxHeight: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffFCFCFC),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 12
                                )
                              ]
                          ),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                            thickness: MaterialStateProperty.all(6),
                            thumbVisibility: MaterialStateProperty.all(true),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(left: 16, right: 16),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

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
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                            ),
                            child:
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                  ),
                                  child: Image.asset("assets/img_illustration_cuaca.png",
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.04),
                                                spreadRadius: 0,
                                                blurRadius: 16,
                                              )
                                            ]
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "23 \u00B0",
                                                style: GoogleFonts.manrope(
                                                    textStyle: TextStyle(
                                                        fontSize: 48,
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.white
                                                    )
                                                )
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                                "Hujan Sedang",
                                                style: GoogleFonts.manrope(
                                                    textStyle: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.white
                                                    )
                                                )
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                                "Senin, 16:00 WIB\nDayeuhkolot",
                                                style: GoogleFonts.manrope(
                                                    textStyle: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.white
                                                    )
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(48),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.2),
                                                    spreadRadius: 0,
                                                    blurRadius: 16,
                                                  )
                                                ]
                                            ),
                                            width: 100,
                                            height: 100,
                                          ),
                                          SvgPicture.asset("assets/icons_dashboard_cuaca.svg")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset("assets/icons_dashboard_kelembaban.svg"),
                                    SizedBox(height: 8,),
                                    Text(
                                        "Kelembaban",
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
                                        "90%",
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
                                    SvgPicture.asset("assets/icons_dashboard_kec_angin.svg"),
                                    SizedBox(height: 8,),
                                    Text(
                                        "Kec. Angin",
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
                                        "0 Km/Jam",
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
                                    SvgPicture.asset("assets/icons_dashboard_kondisi_angin.svg"),
                                    SizedBox(height: 8,),
                                    Text(
                                        "Kondisi Angin",
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
                                        "Tenang",
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
                          )
                        ]
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(//prakiraan cuaca
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:20, left: 16,right: 16, bottom: 16),
                                child: Text('Prakiraan Cuaca',
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
                          Container(
                            padding: EdgeInsets.only(left:16,right:16,top:16,bottom:30),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Senin",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "16:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Senin",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "19:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Senin",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "22:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "01:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "04:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "07:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "10:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "13:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 64,
                                          child: Text(
                                              "Selasa",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SvgPicture.asset("assets/icons_cuaca_prakiraan.svg"),
                                        SizedBox(height: 20),
                                        Text(
                                            "16:00",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                )
                                            )
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffD9D9D9),
                                      thickness: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(//siaran pers
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Color(0xff2B7CB9),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 12,
                          )
                        ]
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/img_cuaca_report.png'),
                          SizedBox(width: 12,),
                          Text('Ikut Partisipasi\nPengamatan Fenomena Cuaca',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                ],
              )
          )
      ),
    );
  }
}

