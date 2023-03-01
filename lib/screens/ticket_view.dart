import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/col_lay.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
import 'package:ticket_booking/widgets/thick_container.dart';
import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.75,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 169:167),
      /*This container holds the ticket section*/
      child: Container(
        margin:EdgeInsets.only(right: AppLayout.getHeight(16)),
        /* This column holds the ticket */
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* this container holds blue part of ticket*/
            Container(
              decoration:  BoxDecoration(
                color: isColor==null? Color(0xFF526799): Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight:Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],style: isColor==null? Styles.headerStyle3.copyWith(color: Colors.white):Styles.headerStyle3.copyWith(color: Colors.black),),

                      const Spacer(),
                      const ThickContainer( isColor: true),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const LayoutBuilderWidget(sections: 6)
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white: const Color(0xFF8ACCF8)))),
                        ],
                      )),

                      const ThickContainer(isColor: true),
                      const Spacer(),

                      Text(ticket['to']['code'],textAlign: TextAlign.end, style: isColor==null? Styles.headerStyle3.copyWith(color: Colors.white):Styles.headerStyle3.copyWith(color: Colors.black),)
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'], style: isColor==null? Styles.headerStyle4.copyWith(color: Colors.white):Styles.headerStyle4 ),
                      ),

                      Text(
                        ticket['flying_time'],textAlign: TextAlign.center, style: isColor==null? Styles.headerStyle4.copyWith(color: Colors.white): Styles.headerStyle4.copyWith(color: Colors.black)),

                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                            ticket['to']['name'],textAlign: TextAlign.end, style: isColor==null? Styles.headerStyle4.copyWith(color: Colors.white): Styles.headerStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*this container holds orange part of ticket*/
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                children:  [
                  SizedBox(
                    height: AppLayout.getWidth(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),

                    child: LayoutBuilder(
                      builder: (BuildContext context , BoxConstraints constraints ) {
                       return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5, height: 1,
                              child:  DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor==null? Colors.white: Colors.grey.shade300
                                ),
                              ),
                            ))
                        );
                      },
                    ),
                  )),
                 const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /* lower orange part of ticket*/
            Container(
              decoration:BoxDecoration(
                  color: isColor==null? Styles.orangeColor: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular( isColor==null? 21:0),
                      bottomRight:Radius.circular(isColor==null?21:0))
              ),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(upper: ticket['date'], lower:"Date", alignment:CrossAxisAlignment.start, isColor: isColor,),
                      ColumnLayout(upper: ticket['departure_time'], lower:"Departure Time", alignment:CrossAxisAlignment.center, isColor: isColor, ),
                      ColumnLayout(upper: ticket['number'].toString(), lower:"Number", alignment:CrossAxisAlignment.end, isColor: isColor, ),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
