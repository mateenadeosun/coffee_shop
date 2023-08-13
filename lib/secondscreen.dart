import 'package:cofee_shop/constants/widgets/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cofee_shop/cappucinoscreen.dart';
import 'package:cofee_shop/constants/widgets/assets_path.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  List<String> items = [
    "Cappucino",
    "Machiato",
    "Latte",
    "Americano",
  ];
  int current = 0;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 3,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height/3.0,
                    color: Color(0xff131313),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                    ),
                                    child: Container(
                                      child: Text(
                                        "Location",
                                        style: TextStyle(
                                            fontFamily: CofeeshopAssetsPaths
                                                .DashboardScreen_Sora_Font,
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Bilzen,Tanjugbalai",
                                      style: TextStyle(
                                          fontFamily: CofeeshopAssetsPaths
                                              .DashboardScreen_Sora_Font,
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 62,
                                bottom: 40,
                                right: 20,
                              ),
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                    CofeeshopAssetsPaths.DashboardProfile),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 29, right: 29, bottom: 50),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  isCollapsed: true,
                                  labelText: 'Search coffee',
                                  labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: CofeeshopAssetsPaths
                                        .DashboardScreen_Sora_Font,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff989898),
                                  ),
                                  prefixIcon: Image.asset(
                                    CofeeshopAssetsPaths.DashboardSearch,
                                  ),
                                  suffixIcon: Image.asset(
                                      CofeeshopAssetsPaths.DashboardFrame10),
                                  filled: true,
                                  fillColor: Color(0xff313131),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -100,
                    child: Container(
                      child: Image.asset(CofeeshopAssetsPaths.DashboardFrame8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    SizedBox(
                      height: 38,
                      width: double.infinity,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: Center(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.all(5),
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: current == index
                                        ? Color(0xffC67C4E)
                                        : Color(0xffF3F3F3),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: GoogleFonts.sora(
                                        fontWeight: current == index
                                            ? FontWeight.w600
                                            : FontWeight.w400,
                                        fontSize: 14,
                                        color: current == index
                                            ? Color(0xffffffff)
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),

              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (BuildContext context) => cappucinoscreen()));
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //       left: 30,
              //       right: 30,
              //       top: 7,
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Container(
              //               height: MediaQuery.of(context).size.height/6.0,
              //               width: MediaQuery.of(context).size.width/.7,
              //               decoration: BoxDecoration(
              //                 image: DecorationImage(fit: BoxFit.fill,
              //                   image: AssetImage(CofeeshopAssetsPaths.DashboardCapuccino1
              //                   ),
              //                 ),
              //               ),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Padding(
              //                     padding:
              //                         const EdgeInsets.only(left: 23.0, top: 8.0,
              //                         ),
              //                     child: Image.asset(
              //                       CofeeshopAssetsPaths.DashboardStar,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding:
              //                         const EdgeInsets.only(left: 10.0, top: 8.0),
              //                     child: Text(
              //                       '4.8',
              //                       style: TextStyle(
              //                         fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 13,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Container(
              //               child:
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 8, bottom:5,),
              //                 child: Text(
              //                   "Cappucino",
              //                   style: TextStyle(
              //                     fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left: 8),
              //               child: Container(
              //                 child: Text(
              //                   "with Chocolate",
              //                   style: TextStyle(
              //                     fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 12,
              //                       color: Color(0xff9B9B9B)),
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

              //                 children: [
              //                   SizedBox(width:10),
              //                   Text("\$ 4.53",
              //                   style: TextStyle(
              //                     fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                   ),),
              //                   SizedBox(width: 60,),
              //                   Image.asset(CofeeshopAssetsPaths.DashboardFrame17),
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //         Column(crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Container(
              //              height: MediaQuery.of(context).size.height/6.0,
              //               width: MediaQuery.of(context).size.width/2.7,
              //               decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                   image: AssetImage(CofeeshopAssetsPaths.DashboardCapuccino2),
              //                 ),
              //               ),
              //               child: Row(
              //                  mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Padding(
              //                     padding:
              //                         const EdgeInsets.only(left: 23.0, top: 8.0),
              //                     child: Image.asset(
              //                       CofeeshopAssetsPaths.DashboardStar,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding:
              //                         const EdgeInsets.only(left: 10.0, top: 8.0),
              //                     child: Text(
              //                       '4.8',
              //                       style: TextStyle(
              //                         fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 13,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Container(
              //               child: Padding(
              //                 padding: const EdgeInsets.only(left: 8,bottom: 5,),
              //                 child: Container(
              //                   child: Text(
              //                     "Cappucino",
              //                     style: TextStyle(
              //                       fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 16,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left:8.0),
              //               child: Container(
              //                 child: Text(
              //                   "with Chocolate",
              //                   style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 12,
              //                       color: Color(0xff9B9B9B)),
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   SizedBox(width: 10,),
              //                   Text("\$ 4.53",
              //                   style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,),),
              //                   SizedBox(width: 60,),
              //                   Image.asset(CofeeshopAssetsPaths.DashboardFrame17),
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 30,
              //     right: 30,
              //     top: 7,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Container(
              //             height: MediaQuery.of(context).size.height/6.0,
              //               width: MediaQuery.of(context).size.width/2.7,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: AssetImage(CofeeshopAssetsPaths.DashboardCapuccino2),
              //               ),
              //             ),
              //             child: Row(
              //               // mainAxisAlignment: MainAxisAlignment.start,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.only(left: 23.0, top: 8.0),
              //                   child: Image.asset(
              //                     CofeeshopAssetsPaths.DashboardStar,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.only(left: 10.0, top: 8.0),
              //                   child: Text(
              //                     '4.5',
              //                     style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 13,
              //                       color: Colors.white,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(left:8, bottom: 5 ),
              //             child: Container(
              //               child: Text(
              //                 "Cappucino",
              //                 style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                   fontWeight: FontWeight.w600,
              //                   fontSize: 16,
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(
              //               left: 8,
              //             ),
              //             child: Container(
              //               child: Text(
              //                 "with Chocolate",
              //                 style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                     fontWeight: FontWeight.w400,
              //                     fontSize: 12,
              //                     color: Color(0xff9B9B9B)),
              //               ),
              //             ),
              //           ),
              //           Container(
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 SizedBox(width: 10,),
              //                 Text("\$4.53",
              //                 style: TextStyle(
              //                   fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font
              //                 ),),
              //                 SizedBox(width: 60,),
              //                 Image.asset(CofeeshopAssetsPaths.DashboardFrame17),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Container(
              //            height: MediaQuery.of(context).size.height/6.0,
              //               width: MediaQuery.of(context).size.width/2.7,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: AssetImage(CofeeshopAssetsPaths.DashboardCapuccino2),
              //               ),
              //             ),
              //             child: Row(
              //               // mainAxisAlignment: MainAxisAlignment.start,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.only(left: 23.0, top: 8.0),
              //                   child: Image.asset(
              //                     CofeeshopAssetsPaths.DashboardStar,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.only(left: 10.0, top: 8.0),
              //                   child: Text(
              //                     '4.0',
              //                     style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 13,
              //                       color: white,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           Container(
              //             child: Padding(
              //               padding: const EdgeInsets.only(left: 8, bottom: 5,),
              //               child: Text(
              //                 "Cappucino",
              //                 style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                   fontWeight: FontWeight.w600,
              //                   fontSize: 16,
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(left: 8.0,),
              //             child: Container(
              //               child: Text(
              //                 "with Chocolate",
              //                 style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,
              //                     fontWeight: FontWeight.w400,
              //                     fontSize: 12,
              //                     color: Color(0xff9B9B9B)),
              //               ),
              //             ),
              //           ),
              //           Container(
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 SizedBox(width: 10,),
              //                 Text("\$4.53",
              //                 style: TextStyle(fontFamily: CofeeshopAssetsPaths.DashboardScreen_Sora_Font,),),
              //                 SizedBox(width: 60,),
              //                 Image.asset(CofeeshopAssetsPaths.DashboardFrame17),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              //// // GridView.count(
              // ////  crossAxisSpacing: 10,
              //  //// crossAxisCount: 2,
              //   ////children: [],)
              Container(
                child: alignedLayout(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              CofeeshopAssetsPaths.DashboardHome,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(CofeeshopAssetsPaths.DashboardHeart2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              CofeeshopAssetsPaths.DashboardBag2,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(CofeeshopAssetsPaths.DashboardNotification),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget alignedLayout(BuildContext context) {
    return AlignedGridView.builder(
      gridDelegate:
      SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(CofeeshopAssetsPaths.DashboardCapuccino2),
          );
        },
        );
  }
}
