import 'package:cofee_shop/constants/widgets/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:cofee_shop/orderscreen.dart';
import 'package:cofee_shop/constants/widgets/assets_path.dart';

class cappucinoscreen extends StatefulWidget {
  const cappucinoscreen({super.key});

  @override
  State<cappucinoscreen> createState() => _cappucinoscreenState();
}

class _cappucinoscreenState extends State<cappucinoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(CofeeshopAssetsPaths.DashboardArrow),
                  Text("Detail",
                  style: TextStyle(
                    fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),),
                  Image.asset(CofeeshopAssetsPaths.DashboardHeart)
                ],
              ),
            ),
            Center(              
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 35,
                  right: 30
                ),
                child: Image.asset(CofeeshopAssetsPaths.DashboardBigCup),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text("Cappucino",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top:10, 
                          bottom:15,
                        ),
                        child: Text("with Chocolate",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          color: Color(0xff9B9B9B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Row(
                       children: [
                        Image.asset(CofeeshopAssetsPaths.DashboardStar,
                        ),
                        Text("4.8",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        Text("(230)",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                       ],
                      ),
                    ],
                  ),
                  
                  Image.asset(CofeeshopAssetsPaths.DashboardFrame20),
                  Image.asset(CofeeshopAssetsPaths.DashboardFrame19)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,left:35,bottom:20 , 
              ),
              child: Text("Description",
              style: TextStyle(
                fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 35,bottom: 20, right: 35),
            //   child: Container(width: MediaQuery.of(context).size.width,
            //   //  height:MediaQuery.of(context).size.height/11,
            //     child: Text("A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
            //     style:TextStyle(
            //       fontFamily: 'Sora',
            //       fontWeight: FontWeight.w400,
            //       fontSize: 14,
            //       color: Color(0xff9B9B9B),
            //     ) ,),
            //     ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
               
                child: RichText(
                  text: TextSpan(
                    style: 
                       TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff9b9b9b),
                        height: 1.5,
                      ),
                    
                    children: [
                      TextSpan(
                        text:
                            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          color: Color(0xff9b9b9b),
                        ),
                      ),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                          color: Color(
                              0xffC67C4E), // Assuming this is the desired color for "Read More"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 35,
                bottom: 25,
              ),
              child: Text("Size",
              style: TextStyle(
                fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                          width: MediaQuery.of(context).size.width/4,
                          // height: MediaQuery.of(context).size.height/18,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffDEDEDE))),
                          child: Center(
                            child: Text(
                              "S",
                              style: TextStyle(
                                  fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                         Container(
                          width: MediaQuery.of(context).size.width/4,
                          // height: MediaQuery.of(context).size.height/18,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffDEDEDE))),
                          child: Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                  fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                         Container(
                          width: MediaQuery.of(context).size.width/4,
                          // height: MediaQuery.of(context).size.height/18,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffDEDEDE))),
                          child: Center(
                            child: Text(
                              "L",
                              style: TextStyle(
                                  fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),                     
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,
              left: 0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price",style: TextStyle(
                        fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9B9B9B),
                        ),
                        ),
                      Text("\$ 4.53",
                      style: TextStyle(
                        fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                        color: Color(0xffC67C4E),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => orderscreen()));
                },
                    child: Container(
                       height: MediaQuery.of(context).size.height/14,
                       width:MediaQuery.of(context).size.width/1.8,
                  
                      padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Color(0xffC67C4E),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xffDEDEDE))),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0 ),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    fontFamily: CofeeshopAssetsPaths.DetailScreen_Sora_Font,
                                    color: white,                                
                                      fontWeight: FontWeight.w500),
                                    
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            )
      
          ],
        ),
      ),
    );
  }
}