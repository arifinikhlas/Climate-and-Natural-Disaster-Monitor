import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CuacaPenerbanganPanel extends StatefulWidget{

  final ScrollController controller;

  const CuacaPenerbanganPanel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CuacaPenerbanganPanel> createState() => _CuacaPenerbanganPanelState();
}

class _CuacaPenerbanganPanelState extends State<CuacaPenerbanganPanel> {
  final searchController = TextEditingController();
  static const allBandaras = [
    const Bandara(title: 'Soekarno–Hatta - WIII'),
    const Bandara(title: 'Ngurah Rai - WADD'),
    const Bandara(title: 'Juanda - WARR'),
    const Bandara(title: 'Sultan Hasanuddin - WAAA'),
    const Bandara(title: 'Kualanamu - WIMM'),
    const Bandara(title: 'Adisutjipto - WAHH'),
    const Bandara(title: 'Halim Perdanakusuma - WIHH'),
    const Bandara(title: 'Hang Nadim - WIDD'),
    const Bandara(title: 'Sultan Mahmud Badaruddin II - WIPP'),
    const Bandara(title: 'Jenderal Ahmad Yani - WAHS'),
    const Bandara(title: 'Husein Sastranegara - WICC'),
    const Bandara(title: 'Supadio - WIOO'),
    const Bandara(title: 'Zainuddin Abdul Madjid - WADL'),
    const Bandara(title: 'Sultan Syarif Kasim II - WIBB'),
    const Bandara(title: 'Minangkabau - WIEE'),
  ];
  List<Bandara> bandaras = allBandaras;

  int _value = 1;

  int _activeWidget = 1;

  Widget _body(){
    switch (_activeWidget) {
      case 0:
        return
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 24),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 134,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Color(0xffDAE1DA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(4),
                        onPressed: (){setState(() {_activeWidget = 1;});},
                        icon: SvgPicture.asset('assets/icons_left_arrow.svg')
                    ),
                    Expanded(
                      child: Text('Soekarno-Hatta \n- WIII',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              )
                          ),
                          textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                        padding: EdgeInsets.all(4),
                        onPressed: null,
                        icon: SvgPicture.asset(
                          'assets/icons_left_arrow.svg',
                          color: Colors.white.withOpacity(0),
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
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
                      MyRadioListTile<int>(
                        value: 4,
                        groupValue: _value,
                        leading: '+3 Jam',
                        onChanged: (value) => setState(() => _value = value!),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.blue,
                    border: Border.all(
                      color: Color(0xff5C7CAD),
                      width: 4,
                    )
                  ),
                  child: Column(
                    children: [
                      // Image.asset('assets/img_cuaca_penerbangan_hujan.png'),
                      SizedBox(height: 8,),
                      SvgPicture.asset('assets/icons_cuaca_penerbangan_hujan.svg'),
                      // SizedBox(height: 8,),
                      Text('23\u00B0',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            )
                        ),
                      ),
                      Text('Hujan Sedang',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            )
                        ),
                      ),
                      SizedBox(height: 12,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_hpa.svg"),
                            SizedBox(height: 8,),
                            Text(
                                "1011\nhPa",
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff393939)
                                    )
                                ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_jarak_pandang.svg"),
                            SizedBox(height: 8,),
                            Text(
                                "7.0\nKM",
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff393939)
                                    )
                                ),
                                textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_kec_angin.svg"),
                            SizedBox(height: 8,),
                            Text(
                                "5.6\nKm/Jam",
                                style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff393939)
                                    )
                                ),
                                textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_arah_angin.svg"),
                            SizedBox(height: 8,),
                            Text(
                              "Angin\nSelatan",
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393939)
                                  )
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

          );

      default:
        return
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 24),
          child:
          Column(
            children: [
              Container(
                width: 134,
                height: 3,
                decoration: BoxDecoration(
                  color: Color(0xffDAE1DA),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 16,),
              Text('Bandar Udara',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      )
                  )
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xffECECEC),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: SvgPicture.asset('assets/icons_search.svg'),
                      width: 21,
                      height: 21,
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: TextField(
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )
                        ),
                        controller: searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cari Wilayah Bandar Udara',
                          hintStyle: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898E88),
                              )
                          ),
                        ),
                        onChanged: searchBandara,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: bandaras.length,
                    controller: widget.controller,
                    itemBuilder: (context, index){
                      final bandara = bandaras[index];

                      return ListTile(
                        onTap: (){setState(() {_activeWidget = 0;});},
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                child: Text(
                                  bandara.title,
                                  style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                      )
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SvgPicture.asset('assets/icons_right_arrow.svg'),
                            )
                          ],
                        ),
                        // onTap: (){return SecondPanel()},
                      );
                    }
                ),
              ),
            ],
          ),

        );


    }
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: _body(),
    );
  }

  void searchBandara(String query){
    final suggestions = allBandaras.where((bandara) {
      final bandaraTitle = bandara.title.toLowerCase();
      final input = query.toLowerCase();

      return bandaraTitle.contains(input);
    }).toList();

    setState(() => bandaras = suggestions);
  }

}

class Bandara{
  final String title;

  const Bandara({
    required this.title
  });
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
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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