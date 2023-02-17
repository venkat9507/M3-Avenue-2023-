import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m3_avenue/constant/palette.dart';

import '../constant/lead_constants.dart';
import '../controller/lead_controller.dart';
import 'lead_member.dart';

class LeadsPage extends StatelessWidget {
  const LeadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LeadController leadController = Get.find<LeadController>();
    return Scaffold(
      backgroundColor: Palette.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SortByButton(),
                const FilterByButton(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i)=> SizedBox(height: 10,),
              shrinkWrap: true,
              itemCount: leadController.leadMembers.length,
              itemBuilder: (context, i) {
                return InkWell(
                    onTap: (){
                      Get.to(LeadMember(),duration: Duration(seconds: 1),transition: Transition.cupertino);
                    },
                    child: leadController.leadMembers[i]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LeadMembers extends StatelessWidget {
  const LeadMembers({
    Key? key,required this.greenContainerText
  }) : super(key: key);

  final String greenContainerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 150,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 15,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 142,
                    decoration: const BoxDecoration(
                        color: Palette.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    width: 30,
                    child:  RotatedBox(
                        quarterTurns: 3,
                        child: Center(child: Text(greenContainerText,
                            style:const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)
                        ))),
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 199,
                            child: Card(
                              margin: EdgeInsets.all(0.0),
                              color: Palette.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(0))),
                              elevation: 15,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(12.0),
                              // ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Prasad Kumar',
                                  style: TextStyle(
                                      color: Palette.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 199,
                            child: Card(
                              margin: EdgeInsets.all(0.0),
                              color: Palette.primaryColor,
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'M3AM30025567',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: 398,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(
                              'Deal Amount',
                              style: TextStyle(
                                  color: Palette.brown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Income',
                              style: TextStyle(
                                  color: Palette.brown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Pincode',
                              style: TextStyle(
                                  color: Palette.brown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: 398,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(
                              '10,29,00,000',
                              style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              '45,000',
                              style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              '506003',
                              style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: 398,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Icon(Icons.phone,color:Palette.brown,),
                            Icon(Icons.description,color:Palette.brown,),
                            Text(
                              'Lead status :',
                              style: TextStyle(
                                  color: Palette.brown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Docs Pending',
                              style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
