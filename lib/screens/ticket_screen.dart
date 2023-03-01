import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/col_lay.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(100)),
            Text("Tickets", style: Styles.headerStyle,),
            Gap(AppLayout.getHeight(30)),
            const TicketTab(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(30)),
            /*holds the main ticket*/
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor:true,),
            ),
            const SizedBox(height: 1,),
            /* holds the lower part of ticket*/
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(upper: "Ticket DB", lower: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout(upper: "78DXY2564", lower: "Passport",alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutBuilderWidget(sections: 15, isColor:false, width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(upper: "3564759 038346", lower: "Number of E-Ticket", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout(upper: "8934792", lower: "Booking Code",alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutBuilderWidget(sections: 15, isColor:true, width: 6,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png", scale: 10,),
                              Text(
                                " *** 36572", style: Styles.headerStyle3.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                          const Gap(5),
                          Text("Payment Method", style: Styles.headerStyle4,),
                        ],
                      ),
                      const ColumnLayout(upper: "\$210.55", lower: "Price", alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),

                ],
              ),
            ),
            /* holds the barcode */
            const SizedBox(height: 1,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)))
              ),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(22), bottom: AppLayout.getHeight(22)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(22)) ,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(22)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 90,
                  ),
                ),
              ),
            ),
            /* holds the original ticket*/
            Gap(AppLayout.getHeight(30)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],),
            ),

          ],
        ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(350),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(350),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ]),
    );
  }
}
