import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotel_view.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/double_text_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //container holding the ui WHICH IS THE FIRST CHILD
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            //column to hold the various sections so they appear after each other
            child: Column(
              children: [
                const Gap(100),
                //THIS ROW HOLDS THE VARIOUS COMPONENTS OF SECTION 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //THIS COLUMN HOLD THE TWO TEXTS THAT SHOULD APPEAR IN DIFFERENT LINES
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                            "Good Morning", style: Styles.headerStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Your Ticket", style: Styles.headerStyle,
                        ),
                      ],
                    ),
                    //THIS CONTAINER HOLDS THE IMAGE APPEARING IN SECTION 1
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(40),
                //THIS CONTAINER HOLDS THE SEARCH BAR
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFE8F5E9)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style:Styles.headerStyle4 ,
                      )
                    ],
                  ),
                ),
                const Gap(50),
                const AppTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket:singleTicket)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppTextWidget(bigText: "Hotels", smallText: "View all")
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: hotelList.map((singleHotel) => HotelView(hotel:singleHotel)).toList()
              )
          ),
        ],
      )
    );
  }
}
