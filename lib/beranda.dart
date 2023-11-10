import 'dart:async';
import 'dart:ui';

import 'package:bmkg/gempabumi/gempabumi.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../custom_app_bar.dart';
import 'cuaca/cuaca.dart';
import 'cuaca/peringatan_dini_cuaca/peringatan_dini_cuaca_detail.dart';

class Beranda extends StatefulWidget{
  const Beranda({
    Key? key,
  }) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final List<String> items = [
    'Cileunyi, Kab. Bandung, Jawa Barat',
    'Cimenyan, Kab. Bandung, Jawa Barat',
    'Cilengkrang, Kab. Bandung, Jawa Barat',
    'Bojongsoang, Kab. Bandung, Jawa Barat',
    'Dayeuhkolot, Kab. Bandung, Jawa Barat',
    'Margahayu, Kab. Bandung, Jawa Barat',
  ];
  String? selectedValue;

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-5.948006, 100.532251),
    zoom: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        settingButton: true,
        title: 'Beranda',
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

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => PeringatanDiniCuacaDetail(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color(0xffF3C532),
                              width: 2
                          ),
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
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons_warning.svg")),
                          SizedBox(width: 4),
                          Text('Waspada hujan lebat di daerah Bandung',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff676767)
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => Cuaca(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    child: Container(//dashboard cuaca
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
                  ),

                  SizedBox(height: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => GempaBumi(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    child: Container(//dashboard gempabumi
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
                                  child: Text('Gempabumi Terkini',
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
                              width: MediaQuery.of(context).size.width,
                              child:

                                  // Image.asset("assets/img_map_dashboard_gempa.png",
                                  //     width: MediaQuery.of(context).size.width,
                                  //     fit: BoxFit.cover
                                  // ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 172,
                                    child: GoogleMap(
                                      mapType: MapType.terrain,
                                      initialCameraPosition: _kGooglePlex,
                                      onMapCreated: (GoogleMapController controller) {
                                        _controller.complete(controller);
                                      },
                                      markers: {
                                        Marker(
                                          markerId: const MarkerId("marker2"),
                                          position: const LatLng(-5.948006, 100.532251),
                                        ),
                                      },
                                    ),
                                  ),
                                  // Positioned(
                                  //   left: 77,
                                  //   top: 98,
                                  //   child: Container(
                                  //     width: 12, height: 12,
                                  //     decoration: BoxDecoration(
                                  //         color: Color(0xffE24B42),
                                  //         shape: BoxShape.circle
                                  //     ),
                                  //   ),
                                  // )

                            ),
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
                                  SizedBox(height: 32,)
                                ],
                              ),
                            )
                          ]
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(//siaran pers
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
                                child: Text('Siaran Pers',
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
                            width: MediaQuery.of(context).size.width,
                            child:
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.asset("assets/img_siaran_pers.png",
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover),
                                ),
                                Column(
                                  children: [
                                    Text(
                                        "Informasi Prakiraan Hilal saat Matahari\nTerbenam Tanggal 18 Juni 2023 ...",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            )
                                        )
                                    ),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                  ),

                  SizedBox(height: 20,)
                ],
              )
          )
      ),
    );
  }
}

