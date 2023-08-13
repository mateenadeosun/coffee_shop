import 'package:cofee_shop/constants/widgets/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:cofee_shop/secondscreen.dart';
import 'package:cofee_shop/constants/widgets/assets_path.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xffFFFF),
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.7,
              child: Image.asset( CofeeshopAssetsPaths.onboardingCoffee    
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20.0,
              right: 20.0,
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.3,
                      child: Text(
                        'Coffee so good, your taste buds will love it.',
                        style: TextStyle(
                          fontFamily:  CofeeshopAssetsPaths.OnboardingScreen_Sora,
                            color: white,
                            fontSize: 34.0,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.3,
                      child: Text(
                        'The best grain, the finest roast, the powerful flavor.',
                        style: TextStyle(
                          fontFamily: CofeeshopAssetsPaths.OnboardingScreen_Sora,
                            color: Color(0xffA9A9A9),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => secondscreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 54.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Center(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Image.asset(CofeeshopAssetsPaths.onboardingGoogle),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Container(
                                    child: Text(
                                      'Continue With Google',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        // fontFamily: CofeeshopAssetsPaths.Sora,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
     ),
);
}
}