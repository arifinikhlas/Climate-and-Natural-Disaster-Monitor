import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_app_bar.dart';

class GlosariumDetail extends StatelessWidget{
  const GlosariumDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        settingButton: false,
        title: 'Glsoari Cuaca',
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
                padding: EdgeInsets.zero,
                children: [

                  SizedBox(height: 20,),

                  Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Keterangan Cuaca',
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff898E88)
                                )
                            )
                          ),
                          SizedBox(height: 16,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_cerah.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Cerah ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'langit tidak tertutup awan atau bagian langit yang tertutup awan hanya 1 oktas¹',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_cerah_berawan.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Cerah Berawan ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'bagian langit yang tertutup awan antara 2-3 oktas¹',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_berawan.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Berawan ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'bagian langit yang tertutup awan antara 4-6 oktas¹',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_berawan_tebal.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Berawan Tebal ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'bagian langit yang tertutup awan antara 7-8 oktas¹ atau seluruh bagian langit tertutup awan',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_hujan_ringan.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Hujan Ringan ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'akumulasi curah hujan antara 5-20 mm/hari atau 0.1-5 mm/jam',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_hujan_sedang.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Hujan Sedang ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'akumulasi curah hujan antara 20-50 mm/hari atau 5-20 mm/jam',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_hujan_lebat.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Hujan Lebat ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'akumulasi curah hujan &gt',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_hujan_petir.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Hujan Petir ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'hujan disertai kilat/petir dan angin kencang',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_kabut.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Kabut ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'uap air yang berada dekat permukaan tanah berkondensasi dan menjadi mirip awan',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),

                  SizedBox(height: 20,),

                  Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Arah Angin',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_selatan.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                  'Arah Angin dari Selatan (S)',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_timur.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Timur (T)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_utara.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Utara (U)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_barat.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Barat (B)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_timur_laut.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Timur Laut (TL)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_barat_laut.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Barat Laut (BL)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_barat_daya.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Barat Daya (BD)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_angin_tenggara.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Text(
                                    'Arah Angin dari Tenggara (Tg)',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),

                  SizedBox(height: 20,),

                  Container(//item
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Zona Waktu',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_wib.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'WIB ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Waktu Indonesia Barat (UTC+7)',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_wita.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'WITA ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Waktu Indonesia Tengah (UTC+8)',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/glosarium/glosarium_cuaca/icons_glosarium_wit.svg'),
                              SizedBox(width: 16,),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'WIT ',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Waktu Indonesia Timur (UTC+9)',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),

                  SizedBox(height: 20,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              '¹ Oktas merupakan satuan dalam pengukuran untuk mendeskripsikan jumlah awan yang menutupi langit pada suatu lokasi',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 28,),

                ],
              )
          )
      ),
    );
  }
}