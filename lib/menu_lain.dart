import 'package:bmkg/cuaca/potensi_awan_cb.dart';
import 'package:bmkg/gempabumi/gempabumi.dart';
import 'package:bmkg/gempabumi_main.dart';
import 'package:bmkg/iklim/indeks_uv.dart';
import 'package:bmkg/radar/radar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'citra_satelit/citra_satelit.dart';
import 'cuaca/cuaca.dart';
import 'cuaca/cuaca_berbasis_dampak/cuaca_berbasis_dampak.dart';
import 'cuaca/cuaca_berbasis_dampak/cuaca_berbasis_dampak_list.dart';
import 'cuaca/cuaca_karhutla/cuaca_karhutla.dart';
import 'cuaca/cuaca_maritim/cuaca_maritim.dart';
import 'cuaca/cuaca_penerbangan/cuaca_penerbangan.dart';
import 'cuaca/peringatan_dini_cuaca/peringatan_dini_cuaca.dart';
import 'glsoarium/glosarium.dart';
import 'iklim/iklim.dart';
import 'iklim/kualitas_udara.dart';

class MenuLain extends StatelessWidget{
  const MenuLain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/navbar_illustration.png",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
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
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child:
              Column(
                children: [
                  SizedBox(height: 87),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset("assets/icons_close.svg"),
                        padding: EdgeInsets.all(8),
                        onPressed: () {
                          // Add your logic here
                          Navigator. of(context). pop();
                        },
                      ),
                    ],),
                  SizedBox(
                    height: 96,
                  ),
                  Text('Info BMKG',
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          )
                      )
                  ),
                  SizedBox(height: 64,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(left:24, top:55, right:24, bottom:55),
                    child: Column(
                      children: [
                        Row( //1st row
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return Dialog(
                                          backgroundColor: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(12.0))),
                                          child: SizedBox(
                                            height: 400,
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                children: [
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => Cuaca(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_cuaca.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Cuaca',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black,
                                                                        )
                                                                    ),
                                                                    textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => PeringatanDiniCuaca(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_peringatan_dini_cuaca.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Peringatan Dini\nCuaca',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],),
                                                  SizedBox(height: 20,),
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => CuacaBerbasisDampak(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_cuaca_berbasis_dampak.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Cuaca Berbasis\nDampak',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => CuacaKarhutla(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_cuaca_karhutla.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Cuaca Karhutla',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],),
                                                  SizedBox(height: 20,),
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => CuacaMaritim(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_cuaca_maritim.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Cuaca Maritim',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => CuacaPenerbangan(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_cuaca_penerbangan.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Cuaca Penerbangan',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],),
                                                  SizedBox(height: 20,),
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => PotensiAwanCB(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_potensi_awan_cb.svg", width: 40,)),
                                                              Container(
                                                                alignment: Alignment.topCenter,
                                                                height: 32,
                                                                child: Text('Potensi Awan\nCumolonimbus',
                                                                    style: GoogleFonts.manrope(
                                                                        textStyle: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.black
                                                                        )
                                                                    ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_cuaca.svg")),
                                      Text('Cuaca',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return Dialog(
                                          backgroundColor: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(12.0))),
                                          child: SizedBox(
                                            height: 182,
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                children: [
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => Iklim(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_iklim.svg", width: 40,)),
                                                              Text('Iklim',
                                                                  style: GoogleFonts.manrope(
                                                                      textStyle: TextStyle(
                                                                          fontSize: 12,
                                                                          fontWeight: FontWeight.w500,
                                                                          color: Colors.black
                                                                      )
                                                                  )
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => KualitasUdara(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_kualitas_udara.svg", width: 40,)),
                                                              Text('Kualitas Udara',
                                                                  style: GoogleFonts.manrope(
                                                                      textStyle: TextStyle(
                                                                          fontSize: 12,
                                                                          fontWeight: FontWeight.w500,
                                                                          color: Colors.black
                                                                      )
                                                                  )
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],),
                                                  SizedBox(height: 20,),
                                                  Row(children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation1, animation2) => IndeksUV(),
                                                                transitionDuration: Duration.zero,
                                                                reverseTransitionDuration: Duration.zero,
                                                              ));
                                                        },
                                                        child: Container(
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                                                  child: SvgPicture.asset("assets/icons_menus_indeks_uv.svg", width: 40,)),
                                                              Text('Indeks Ultra Violet',
                                                                  style: GoogleFonts.manrope(
                                                                      textStyle: TextStyle(
                                                                          fontSize: 12,
                                                                          fontWeight: FontWeight.w500,
                                                                          color: Colors.black
                                                                      )
                                                                  )
                                                              )],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],)
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_iklim.svg")),
                                      Text('Iklim',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation1, animation2) => GempaBumi(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration: Duration.zero,
                                      ));
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_gempabumi.svg")),
                                      Text('Gempabumi',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 64),
                        Row( //2nd row
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation1, animation2) => Radar(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration: Duration.zero,
                                      ));
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_radar.svg")),
                                      Text('Radar',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation1, animation2) => CitraSatelit(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration: Duration.zero,
                                      ));
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_citra_satelit.svg")),
                                      Text('Citra Satelit',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation1, animation2) => Glosarium(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration: Duration.zero,
                                      ));
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: SvgPicture.asset("assets/icons_menus_glosarium.svg")),
                                      Text('glosarium',
                                          style: GoogleFonts.manrope(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                              )
                                          )
                                      )],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }

}