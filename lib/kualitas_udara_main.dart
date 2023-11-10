import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../custom_app_bar.dart';
import 'glsoarium/glosarium_detail.dart';

class KualitasUdaraMain extends StatefulWidget{
  const KualitasUdaraMain({
    Key? key,
  }) : super(key: key);

  @override
  State<KualitasUdaraMain> createState() => _KualitasUdaraMainState();
}

class _KualitasUdaraMainState extends State<KualitasUdaraMain> {
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
        title: 'Kualitas Udara',
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
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 218,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                      ),
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
                                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Konsentrasi PM 2.5',
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w700,
                                                            color: Colors.white
                                                        )
                                                    )
                                                ),
                                                SizedBox(height: 4,),
                                                Text('Kab. Bandung, 5 Mei 2023',
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
                                            IconButton(
                                                onPressed: (){
                                                  Navigator.push(
                                                      context,
                                                      PageRouteBuilder(
                                                        pageBuilder: (context, animation1, animation2) => GlosariumDetail(),
                                                        transitionDuration: Duration.zero,
                                                        reverseTransitionDuration: Duration.zero,
                                                      ));
                                                },
                                                icon: SvgPicture.asset("assets/icons_kualitas_udara_info.svg")
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 16,),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.1),
                                                      spreadRadius: 0,
                                                      blurRadius: 12,
                                                    )
                                                  ]
                                              ),
                                              child: CircularPercentIndicator(
                                                radius: 50.0,
                                                lineWidth: 6.0,
                                                percent: 0.391,
                                                center: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('39.1',
                                                        style: GoogleFonts.manrope(
                                                            textStyle: TextStyle(
                                                                fontSize: 24,
                                                                fontWeight: FontWeight.w700,
                                                                color: Colors.black
                                                            )
                                                        )
                                                    ),
                                                    Text('μg/m³',
                                                        style: GoogleFonts.manrope(
                                                            textStyle: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w700,
                                                                color: Color(0xff7E9387)
                                                            )
                                                        )
                                                    ),
                                                  ],
                                                ),
                                                progressColor: Color(0xff6EB0E2),
                                                backgroundColor: Color(0xffDAE1DA),
                                                circularStrokeCap: CircularStrokeCap.round,
                                              ),
                                            ),
                                            SizedBox(width: 26,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                      text: 'Debu Mikro / PM 2.5\n',
                                                      style: GoogleFonts.manrope(
                                                          textStyle: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.white
                                                          )
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: '(Materi partikulat\nkurang dari 2,5 mikron)',
                                                          style: GoogleFonts.manrope(
                                                              textStyle: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: Colors.white
                                                              )
                                                          ),
                                                        )
                                                      ]
                                                  ),
                                                ),
                                                SizedBox(height: 12,),
                                                Container(
                                                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color: Colors.white,
                                                  ),
                                                  child:
                                                  GradientText('Sedang',
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.blue
                                                        )
                                                    ),
                                                    colors: [
                                                      Color(0xff3572B9),
                                                      Color(0xff5EA6EA),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      "Particulate Matter (PM 2.5) adalah partikel udara yang berukuran lebih kecil dari 2.5 mikron (mikrometer). Nilai Ambang Batas (NAB) adalah batas konsentrasi polusi udara yang diperbolehkan berada dalam udara ambien. NAB PM 2.5 = 65μg/m³.",
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff898E88)
                                          )
                                      )
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(//tabel pm2.5
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
                                child: Text('Tabel PM 2.5',
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
                                          width: 74,
                                          child: Text(
                                              "00:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "01:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffC3FFC2),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Baik",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff38C05C)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "14.8 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "02:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "03:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "04:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "05:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "06:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "07:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "08:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                                          width: 74,
                                          child: Text(
                                              "09:00",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xffDDEDF9),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                              "Sedang",
                                              style: GoogleFonts.manrope(
                                                  textStyle: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2B7CB9)
                                                  )
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        Text(
                                            "39.1 μg/m³",
                                            style: GoogleFonts.manrope(
                                                textStyle: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
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
                ],
              )
          )
      ),
    );
  }
}

