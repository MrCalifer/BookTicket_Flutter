import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal! * 5),
        children: [
          Gap(SizeConfig.blockSizeVertical! * 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.blockSizeHorizontal! * 20,
                height: SizeConfig.blockSizeVertical! * 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.blockSizeHorizontal! * 2),
                    image: const DecorationImage(
                        image: AssetImage("assest/images/img_1.png"),
                        fit: BoxFit.cover)),
              ),
              Gap(SizeConfig.blockSizeVertical! * 1),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Califer", style: Styles.headLineStyle1),
                  Text("India",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(SizeConfig.blockSizeHorizontal! * 1),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal! * 1.5,
                        vertical: SizeConfig.blockSizeVertical! * 0.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.blockSizeHorizontal! * 5),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(children: [
                      Container(
                        padding:
                            EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 1),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(SizeConfig.blockSizeHorizontal! * 1),
                      const Text(
                        "Premium status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ],
          ),
          Gap(SizeConfig.blockSizeVertical! * 1),
          const Divider(
            color: Colors.transparent,
          ),
          Stack(
            children: [
              Container(
                width: SizeConfig.blockSizeHorizontal! * 90,
                height: SizeConfig.blockSizeVertical! * 15,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                        SizeConfig.blockSizeHorizontal! * 5)),
              ),
              Positioned(
                left: SizeConfig.blockSizeHorizontal! * 75,
                bottom: SizeConfig.blockSizeVertical! * 5,
                child: Container(
                  padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 10),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: SizeConfig.blockSizeHorizontal! * 4,
                          color: const Color(0xFF264CD2))),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: SizeConfig.blockSizeHorizontal! * 5,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: SizeConfig.blockSizeHorizontal! * 8,
                      ),
                    ),
                    Gap(SizeConfig.blockSizeHorizontal! * 4),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You've 16 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          Gap(SizeConfig.blockSizeHorizontal! * 5),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(SizeConfig.blockSizeHorizontal! * 5),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "192802",
                      style: TextStyle(
                          fontSize: 45,
                          color: Styles.textColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 3),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: "Exuma",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How to get more miles",
                      style: Styles.headLineStyle3.copyWith(color: primary),
                    ),
                  ],
                ),
                Gap(SizeConfig.blockSizeHorizontal! * 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
