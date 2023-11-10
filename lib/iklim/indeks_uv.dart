import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_app_bar.dart';

class IndeksUV extends StatefulWidget{
  const IndeksUV({
    Key? key,
  }) : super(key: key);

  @override
  State<IndeksUV> createState() => _IndeksUVState();
}

class _IndeksUVState extends State<IndeksUV> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        settingButton: false,
        title: 'Indeks Ultra Violet',
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

                  Container(//polar hotspot
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top:20, left: 16,right: 16),
                            child: Row(
                              children: [
                                Container(
                                  child: Flexible(
                                    child: Text('Indeks Ultraviolet Sinar Matahari',
                                        style: GoogleFonts.manrope(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black
                                            )
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text('20 Juni 2023 07:00 WIB',
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff898E88)
                                    )
                                )
                            ),
                          ),
                          SizedBox(height: 24,),
                          Container(
                              padding: const EdgeInsets.only(left: 16,right: 16),
                              width: MediaQuery.of(context).size.width,
                              child:
                              Image.asset("assets/img_indeks_uv.png",
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover
                              )
                          ),
                          SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(left: 16,right: 16,),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyRadioListTile<int>(
                                  value: 1,
                                  groupValue: _value,
                                  leading: 'Aktual',
                                  onChanged: (value) => setState(() => _value = value!),
                                ),
                                MyRadioListTile<int>(
                                  value: 2,
                                  groupValue: _value,
                                  leading: '+1 Jam',
                                  onChanged: (value) => setState(() => _value = value!),
                                ),
                                MyRadioListTile<int>(
                                  value: 3,
                                  groupValue: _value,
                                  leading: '+2 Jam',
                                  onChanged: (value) => setState(() => _value = value!),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24,),
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

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _customRadioButton,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff2B7CB9) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
          leading,
          style: GoogleFonts.manrope(
              textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? Colors.white : Color(0xff393939)
              )
          )
      ),
    );
  }
}
