import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_app_bar.dart';

class Pengaturan extends StatefulWidget{
  const Pengaturan({
    Key? key,
  }) : super(key: key);

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  final List<String> items = [
    'Cileunyi, Kab. Bandung, Jawa Barat',
    'Cimenyan, Kab. Bandung, Jawa Barat',
    'Cilengkrang, Kab. Bandung, Jawa Barat',
    'Bojongsoang, Kab. Bandung, Jawa Barat',
    'Dayeuhkolot, Kab. Bandung, Jawa Barat',
    'Margahayu, Kab. Bandung, Jawa Barat',
  ];
  String? selectedValue;

  bool isSwitched = false;

  String languages = 'Bahasa Indonesia';

  String cuaca = 'SEMUA';
  String kualitasUdara = 'SEMUA';
  String gempaBumi = 'SEMUA';

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Pengaturan',
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
            child:
            Container(
                height: MediaQuery.of(context).size.height,
                color: Color(0xffFCFCFC),
                child:
                ListView(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ganti Lokasi',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                          SizedBox(height: 16,),
                          Text('Pilih Lokasi Manual',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black
                                  )
                              )
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
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
                              SizedBox(width: 8,),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xff2B7CB9),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text('Simpan',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                        )
                                    )
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pilih Lokasi Otomatis',
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                      )
                                  )
                              ),
                              SizedBox(width: 8,),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                // activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.white,
                                activeTrackColor: Color(0xff2B7CB9),
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffD1D1D6),
                                trackOutlineColor: MaterialStateProperty.resolveWith((Set states){
                                    return Colors.white.withOpacity(0);
                                  }
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bahasa',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                          SizedBox(height: 16,),

                          RadioListTile(
                            title: Text(
                              "Bahasa Indonesia",
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                                )
                              )
                            ),
                            value: "Bahasa Indonesia",
                            groupValue: languages,
                            onChanged: (value){
                              setState(() {
                                languages = value.toString();
                              });
                            },
                            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            selectedTileColor: Color(0xff2B7CB9),
                            activeColor: Color(0xff2B7CB9),
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          RadioListTile(
                            title: Text(
                              "English",
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black
                                  )
                              )
                            ),
                            value: "English",
                            groupValue: languages,
                            onChanged: (value){
                              setState(() {
                                languages = value.toString();
                              });
                            },
                            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            selectedTileColor: Color(0xff2B7CB9),
                            activeColor: Color(0xff2B7CB9),
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),

                        ],
                      ),
                    ),

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pemberitahuan',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                          SizedBox(height: 16,),

                          InkWell(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child:
                                                Text('Cuaca',
                                                  style: GoogleFonts.manrope(
                                                    textStyle: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black
                                                    )
                                                  )
                                                ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child:
                                              Text(cuaca,
                                                  style: GoogleFonts.manrope(
                                                      textStyle: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight: FontWeight.w400,
                                                          color: Color(0xff898E88)
                                                      )
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                SvgPicture.asset('assets/icons_peringatan_dini_cuaca_right_arrow.svg')
                              ],
                            ),
                            onTap: (){_sendDataCuaca(context);}
                          ),

                          SizedBox(height: 16,),

                          InkWell(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child:
                                                Text('Kualitas Udara',
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w400,
                                                            color: Colors.black
                                                        )
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child:
                                                Text(kualitasUdara,
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight: FontWeight.w400,
                                                            color: Color(0xff898E88)
                                                        )
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  SvgPicture.asset('assets/icons_peringatan_dini_cuaca_right_arrow.svg')
                                ],
                              ),
                              onTap: (){_sendDataKualitasUdara(context);}
                          ),

                          SizedBox(height: 16,),

                          InkWell(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child:
                                                Text('Gempabumi',
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w400,
                                                            color: Colors.black
                                                        )
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child:
                                                Text(gempaBumi,
                                                    style: GoogleFonts.manrope(
                                                        textStyle: TextStyle(
                                                            fontSize: 11,
                                                            fontWeight: FontWeight.w400,
                                                            color: Color(0xff898E88)
                                                        )
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  SvgPicture.asset('assets/icons_peringatan_dini_cuaca_right_arrow.svg')
                                ],
                              ),
                              onTap: (){_sendDataGempaBumi(context);}
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 20,),


                  ],
                )
            )
        ),
      );
  }
  void _sendDataCuaca(BuildContext context) async {
    String textToSend = cuaca;
    final result = await Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => SecondScreen(val: textToSend, title: 'Cuaca',),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
    setState(() {
      cuaca = result;
    });
  }

  void _sendDataKualitasUdara(BuildContext context) async {
    String textToSend = kualitasUdara;
    final result = await Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => SecondScreen(val: textToSend, title: 'Cuaca',),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
    setState(() {
      kualitasUdara = result;
    });
  }

  void _sendDataGempaBumi(BuildContext context) async {
    String textToSend = gempaBumi;
    final result = await Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => SecondScreen(val: textToSend, title: 'Cuaca',),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
    setState(() {
      gempaBumi = result;
    });
  }
}

class SecondScreen extends StatefulWidget {
  final String val;
  final String title;

  // receive data from the FirstScreen as a parameter

  const SecondScreen({
    Key? key,
    required this.val,
    required this.title
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState(val);
}

class _SecondScreenState extends State<SecondScreen> {

  String selected;

  _SecondScreenState(this.selected);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        settingButton: false,
        title: 'Pengaturan',
        tabbed: false,
        // size: 85,
        tabs: [
          Tab(text: "Tab One", height: 26,),
          Tab(text: "Tab Two", height: 26,),
          Tab(text: "Tab Three", height: 26,)
        ],
      ),
      body: Container(
        color: Color(0xffFCFCFC),
        child: Column(
          children: [
            SizedBox(height: 20),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pemberitahuan ' + widget.title,
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898E88)
                          )
                      )
                  ),
                  SizedBox(height: 16,),

                  RadioListTile(
                    title: Text(
                        "Semua Pemberitahuan",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            )
                        )
                    ),
                    value: "SEMUA",
                    groupValue: selected,
                    onChanged: (value){
                      setState(() {
                        selected = value.toString();
                        Navigator.pop(context, value.toString());
                      });
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    selectedTileColor: Color(0xff2B7CB9),
                    activeColor: Color(0xff2B7CB9),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  RadioListTile(
                    title: Text(
                        "Hanya di Lokasi Saya",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            )
                        )
                    ),
                    value: "LOKASI SAYA",
                    groupValue: selected,
                    onChanged: (value){
                      setState(() {
                        selected = value.toString();
                        Navigator.pop(context, value.toString());
                      });
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    selectedTileColor: Color(0xff2B7CB9),
                    activeColor: Color(0xff2B7CB9),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  RadioListTile(
                    title: Text(
                        "Nonaktif",
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            )
                        )
                    ),
                    value: "NONAKTIF",
                    groupValue: selected,
                    onChanged: (value){
                      setState(() {
                        selected = value.toString();
                        Navigator.pop(context, value.toString());
                      });
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    selectedTileColor: Color(0xff2B7CB9),
                    activeColor: Color(0xff2B7CB9),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}