import 'package:bmkg/pengaturan/pengaturan.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_lain.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  CustomAppBar({
    Key? key,
    this.title = '',
    this.settingButton = true,
    required this.tabs,
    this.tabbed = false,
    this.size = 58,
    this.scrollable = false,
    this.dropdown = false
  }) : super(key: key);

  final String title;
  final bool settingButton;
  final bool tabbed;
  final List<Tab> tabs;
  final double size;
  final bool scrollable;
  final bool dropdown;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(double.maxFinite, size);
}

class _CustomAppBarState extends State<CustomAppBar> {
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
  Widget build(BuildContext context){
    // return SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(
    //         horizontal: 16,
    //         vertical: 4
    //       ),
    //       child: Stack(
    //         children: [
    //           Positioned.fill(
    //               child:
    //               Center(
    //                 child:
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     // Icon(Icons.bedtime_rounded, color: Colors.white,),
    //                     // Image.asset("assets/logo.png"),
    //                     Image.asset('assets/logo.png'),
    //                     SizedBox(width: 10),
    //                     Center(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),),
    //
    //                     ]
    //                 )
    //               )
    //           ),
    //           settingButton ?
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 IconButton(onPressed: (){}, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_list.svg")),
    //                 IconButton(onPressed: (){}, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_setting.svg"))
    //               ]
    //             ):
    //             Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   Icon(Icons.arrow_back, color: Colors.white,),
    //
    //                 ]
    //             )
    //         ],
    //       ),
    //
    //     )
    // );

    return Container(
      // alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
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
      child: Stack(
        children: [
          Image.asset(
            "assets/navbar_illustration.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          // Column(
          //   children: [
          //   ],
          // ),
          widget.tabbed ?
            AppBar(
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.bedtime_rounded, color: Colors.white,),
                    // Image.asset("assets/logo.png"),
                    Image.asset('assets/logo.png'),
                    SizedBox(width: 10),
                    Center(
                      child:
                      Text(
                          widget.title,
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              )
                          ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]
              ),
              backgroundColor: Colors.transparent,
              forceMaterialTransparency: true,
              bottom: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 16),
                isScrollable: widget.scrollable,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                tabs: this.widget.tabs,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelStyle: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    )
                ),
                labelStyle: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    )
                ),
              ),

              leading: widget.settingButton ?
              IconButton(//menu lain
                  onPressed: (){
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => MenuLain(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ));
                  },
                  padding: EdgeInsets.all(8),
                  icon: SvgPicture.asset("assets/icons_list.svg")
              )

              : IconButton(onPressed: (){Navigator. of(context). pop();}, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_back.svg")),

              actions: widget.settingButton ? <Widget>[
                IconButton(onPressed: (){
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Pengaturan(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ));
                }, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_setting.svg"))
              ] : <Widget>[IconButton(onPressed: null, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_setting.svg", color: Colors.white.withOpacity(0),))]
          ):
            Column(
              children: [
                AppBar(
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.bedtime_rounded, color: Colors.white,),
                        // Image.asset("assets/logo.png"),
                        Image.asset('assets/logo.png'),
                        SizedBox(width: 10),
                        Center(
                          child:
                          Text(
                              widget.title,
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  )
                              )
                          ),
                        ),
                      ]
                  ),
                  backgroundColor: Colors.transparent,
                  forceMaterialTransparency: true,

                  leading: widget.settingButton ?
                  IconButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => MenuLain(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ));
                      },
                      padding: EdgeInsets.all(8),
                      icon: SvgPicture.asset("assets/icons_list.svg")
                  )
                  : IconButton(onPressed: (){Navigator. of(context). pop();}, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_back.svg")),

                  actions: widget.settingButton ? <Widget>[
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation1, animation2) => Pengaturan(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ));
                        },
                        padding: EdgeInsets.all(8),
                        icon: SvgPicture.asset("assets/icons_setting.svg")
                    )
                  ] : <Widget>[
                    IconButton(onPressed: null, padding: EdgeInsets.all(8), icon: SvgPicture.asset("assets/icons_setting.svg", color: Colors.white.withOpacity(0),))]
          ),
                widget.dropdown ?
                  Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 12),
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
                      items: items.map((String item) => DropdownMenuItem<String>(
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
                      )
                      ).toList(),
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
                ):
                  Container()
              ],
            )
        ],
      ),
    );
  }

}