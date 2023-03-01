import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';



class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.5,
      height: AppLayout.getHeight(400),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color:Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/${hotel["image"]}")
              )
            ),
          ),
          const Gap(10),
          Text(
            hotel["place"], style: Styles.headerStyle2.copyWith(color: Styles.kkColor ),
          ),
          const Gap(10),
          Text(
            hotel["destination"],  style: Styles.headerStyle3.copyWith(color: Colors.white ),
          ),
          const Gap(10),
          Text(
            "${hotel["price"]}/night", style: Styles.headerStyle.copyWith(color: Styles.kkColor ),
          ),
        ],
      ),
    );
  }
}
