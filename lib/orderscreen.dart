import 'package:flutter/material.dart';
import 'package:cofee_shop/constants/widgets/assets_path.dart';

class orderscreen extends StatefulWidget {
  const orderscreen({super.key});

  @override
  State<orderscreen> createState() => _orderscreenState();
}

class _orderscreenState extends State<orderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
            bottom: 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(CofeeshopAssetsPaths.DashboardArrow),
                    const Spacer(),
                    Text(
                      "Order",
                      style: TextStyle(
                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                        fontWeight: FontWeight.w600,
                         fontSize: 18),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  // width: 321,
                  // height: 48,
                  decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffDEDEDE))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width/2.3,
                        height: MediaQuery.of(context).size.height/19,
                        decoration: BoxDecoration(
                          color: Color(0xffC67C4E),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Deliver",
                            style: TextStyle(
                              fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                        ),
                        child: Center(
                          child: Text(
                            "Pick Up",
                            style: TextStyle(
                              fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: Text(
                  "Delivery Address",
                  style: TextStyle(
                    fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "Jl. Kpg Sutoyo",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                   fontSize: 14,
                   fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                ),
                child: Text(
                  "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                  style: TextStyle(
                    fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                    color: Color(0xff808080),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0xffDEDEDE))),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                children: [
                                  Image.asset(CofeeshopAssetsPaths.DashboardEdit),
                                  Center(
                                    child: Text(
                                      "Edit Address",
                                      style: TextStyle(
                                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffDEDEDE))),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(CofeeshopAssetsPaths.DashboardNote),
                            Text(
                              "Add Note",
                              style: TextStyle(
                                fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Image.asset(CofeeshopAssetsPaths.DashboardFrame3174),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cappucino",
                      style: TextStyle(
                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "With Chocolate",
                      style: TextStyle(
                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff9B9B9B)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        // height: 30,
                        // width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xffDEDEDE))),
                        child: Center(
                            child: Icon(
                          Icons.remove,
                          size: 22,
                        ))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                         fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        // height: 30,
                        // width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xffDEDEDE))),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          size: 22,
                        ))),
                  ],
                )
              ]),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width:  MediaQuery.of(context).size.width/1.2,
                    height: MediaQuery.of(context).size.height/13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEAEAEA)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset(CofeeshopAssetsPaths.DashboardDiscount),
                          ],
                        ),
                        Text(
                          "1 Discount is applied",
                          style: TextStyle(
                            fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Image.asset(CofeeshopAssetsPaths.DashboardArrowRight),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Payment Summary",
                style: TextStyle(fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Fee",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ 2.0",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$ 1.0",
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                    height: 10,
                    width:  MediaQuery.of(context).size.width,
                    child: Divider(
                        height: 4, thickness: 2, color: Color(0xffEAEAEA))),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "\$ 5.53",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                    height: 5,
                    width: MediaQuery.of(context).size.width,
                    child: Divider(
                        height: 4, thickness: 2, color: Color(0xffEAEAEA))),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(CofeeshopAssetsPaths.DashboardMoney),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(CofeeshopAssetsPaths.DashboardCash),
                      SizedBox(
                        width: 15,
                      ),
                      Text("\$ 5.53",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                      ),),
                    ],
                  ),
                  Image.asset(CofeeshopAssetsPaths.DashboardDots)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // width: 315,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffC67C4E)),
                child: Center(
                  child: Text(
                    "Order",
                    style: TextStyle(
                      fontFamily: CofeeshopAssetsPaths.OrderScreen_Sora_Font,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
