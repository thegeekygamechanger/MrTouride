import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrtouride/responsive_button.dart';
import 'package:mrtouride/widgets/app_buttons.dart';
import 'package:mrtouride/widgets/app_large_text.dart';
import 'package:mrtouride/widgets/app_text.dart';

import 'misc/colors.dart';

class PilgrimagePage extends StatefulWidget {
  PilgrimagePage({Key? key}) : super(key: key);

  @override
  State<PilgrimagePage> createState() => _PilgrimagePageState();
}

class _PilgrimagePageState extends State<PilgrimagePage> {
  int gottenStars = 3;
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/mountain.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppLargeText(
                                  text: "Amritsar",
                                  color: Colors.black.withOpacity(0.8)),
                              AppLargeText(
                                  text: " \$ 250 ",
                                  color: AppColors.textColor1),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(
                                text: "Panjab, India",
                                color: AppColors.textColor1),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStars
                                      ? AppColors.starColor
                                      : AppColors.textColor2);
                            })),
                            AppText(text: "(4.0)", color: AppColors.textColor2),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                            text: "People",
                            color: Colors.black.withOpacity(0.8)),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: "Number of people in your group",
                          color: AppColors.mainTextColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButtons(
                                  size: 50,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  text: (index + 1).toString(),
                                  //icon:Icons.favorite_border,
                                  //isIcon: true,
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppLargeText(
                            text: "Description",
                            color: Colors.black.withOpacity(0.8),
                            size: 20),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                            text:
                                "Amritsar is a city in the northwestern Indian state of Punjab, 28 kilometers from the border with Pakistan. At the center of its walled old town, the gilded Golden Temple (Harmandir Sahib) is the holiest gurdwara (religious complex) of the Sikh religion.",
                            color: AppColors.mainTextColor)
                      ],
                    ))),
            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
