import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CuacaKarhutlaPotensiBulanan extends StatefulWidget{
  const CuacaKarhutlaPotensiBulanan({
    Key? key,
  }) : super(key: key);

  @override
  State<CuacaKarhutlaPotensiBulanan> createState() => _CuacaKarhutlaPotensiBulananState();
}

class _CuacaKarhutlaPotensiBulananState extends State<CuacaKarhutlaPotensiBulanan> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: window.viewPadding.top+24),
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
                                  child: Text('Indeks Iklim untuk Kesesuaian Kemunculan Titik Panas',
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
                          child: Text('Berlaku Maret 2023',
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
                            Image.asset("assets/img_cuaca_karhutla_potensi_bulanan.png",
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
                                leading: 'Bulan Ini',
                                onChanged: (value) => setState(() => _value = value!),
                              ),
                              MyRadioListTile<int>(
                                value: 2,
                                groupValue: _value,
                                leading: '+1 Bulan',
                                onChanged: (value) => setState(() => _value = value!),
                              ),
                              MyRadioListTile<int>(
                                value: 3,
                                groupValue: _value,
                                leading: '+2 Bulan',
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
