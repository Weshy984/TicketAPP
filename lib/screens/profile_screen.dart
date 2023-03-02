import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/home_screen.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/widgets/col_lay.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';

import '../utils/app_style.dart';
import 'bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20) ),
        children: [
          Gap(AppLayout.getHeight(100)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/img_1.png"
                      ))
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headerStyle,),
                  Gap(AppLayout.getHeight(3)),
                  Text("Nairobi", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Colors.white
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(4), vertical: AppLayout.getHeight(6)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(4)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text("Premium Status", style: TextStyle(
                          color: Color(0XFF526799),
                          fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (_) =>const BottomBar()));
                      },
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300 ),))
                ],
              )
            ],
          ),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20))
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2) )
                ),
              )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(35),vertical: AppLayout.getHeight(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27,),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'ve got a new award", style: Styles.headerStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You had 49 Flights so far", style: Styles.headerStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.8), fontSize: 17),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Text("Accumulated Miles", style: Styles.headerStyle2,),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5,
                    spreadRadius: 3,
                  )
                ]
              ),
              child: Column(
                children: [
                  Text("567382",  style: TextStyle(
                    fontSize: 40, color: Styles.textColor, fontWeight: FontWeight.w600
                  ),),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued", style: Styles.headerStyle4.copyWith(fontSize: 16),),
                      Text("1 March 2023", style: Styles.headerStyle4.copyWith(fontSize: 16),)
                    ],
                  ),
                  Gap(AppLayout.getHeight(30)),
                  Divider(color: Colors.grey.shade300,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(upper: "23 043", lower: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout(upper: "Airlines Co", lower: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutBuilderWidget(sections: 12, isColor: false,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(upper: "24", lower: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout(upper: "Alibaba", lower: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutBuilderWidget(sections: 12, isColor: false,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(upper: "73 504", lower: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout(upper: "KQ", lower: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                    ],
                  ),
                ],
              )),
          Gap(AppLayout.getHeight(20)),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                      builder: (_) =>const BottomBar()));
              },
              child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),)))
        ],
      ),
    );
  }
}


