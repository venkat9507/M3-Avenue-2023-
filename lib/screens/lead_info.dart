import 'package:flutter/material.dart';

import '../constant/palette.dart';

class LeadInfo extends StatelessWidget {
  const LeadInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 15,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            // bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            // bottomRight: Radius.circular(12),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            const Text('Lead Details',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(
                              Icons.edit,
                              color: Palette.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Palette.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LeadDetails(
                            t1: 'Lead Name',
                            t2: 'Service type',
                            t3: 'Company Name',
                            t4: 'Designation',
                            t5: 'Address',
                            st1: 'Test',
                            st2: 'Personal Loan',
                            st3: 'HCL Technologies pvt ltd',
                            st4: 'Developer',
                            st5: 'Hyd',
                          ),
                          LeadDetails(
                            t1: 'Mobile Number',
                            t2: 'Salary',
                            t3: 'Deal Amount',
                            t4: 'Obligations',
                            t5: 'Follow Up',
                            st1: '9998887774',
                            st2: '₹45000.0',
                            st3: '₹678900.0',
                            st4: '₹68900.0',
                            st5: '18 sep 2021',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 250,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 15,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            // bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            // bottomRight: Radius.circular(12),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            const Text('Employee Details',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Palette.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              child: Icon(Icons.phone_in_talk,size: 30,),
                            ),
                          ),
                          SizedBox(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                EmployeeDetails(
                                  t1: 'Employee Code',
                                  t2: 'Reporting Manager',
                                  st1: '2132SAS',
                                  st2: 'Manager',
                                ),
                                EmployeeDetails(
                                  t1: 'Employee Name',
                                  t2: 'Designation',
                                  st1: 'Naveen',
                                  st2: 'Developer',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Palette.unitBoxColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12) )
                      ),
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.phone_in_talk,color: Palette.white,size: 22,),
                            Text(
                              '|',
                              style: TextStyle(
                                  color: Palette.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal),
                            ),
                            Icon(Icons.maps_ugc,color: Palette.white,size: 22,),
                            Text(
                              '|',
                              style: TextStyle(
                                  color: Palette.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal),
                            ),
                            Icon(Icons.mail_outline,color: Palette.white,size: 22,),
                          ],
                        ),
                      ),
                    )
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


class EmployeeDetails extends StatelessWidget {
  const EmployeeDetails({
    Key? key,
    this.t1,
    this.t2,
    this.st1, this.st2,
  }) : super(key: key);

  final String? t1;
  final String? t2;
  final String? st1;
  final String? st2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LeadInfoText(
          title: t1!,
          subtitle: st1!,
        ),
        SizedBox(
          height: 20,
        ),
        LeadInfoText(
          title: t2!,
          subtitle: st2!,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


class LeadDetails extends StatelessWidget {
  const LeadDetails({
    Key? key,
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5, this.st1, this.st2, this.st3, this.st4, this.st5,
  }) : super(key: key);

  final String? t1;
  final String? t2;
  final String? t3;
  final String? t4;
  final String? t5;
  final String? st1;
  final String? st2;
  final String? st3;
  final String? st4;
  final String? st5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LeadInfoText(
          title: t1!,
          subtitle: st1!,
        ),
        SizedBox(
          height: 20,
        ),
        LeadInfoText(
          title: t2!,
          subtitle: st2!,
        ),
        SizedBox(
          height: 20,
        ),
        LeadInfoText(
          title: t3!,
          subtitle: st3!,
        ),
        SizedBox(
          height: 20,
        ),
        LeadInfoText(
          title: t4!,
          subtitle: st4!,
        ),
        SizedBox(
          height: 20,
        ),
        LeadInfoText(
          title: t5!,
          subtitle: st5!,
        ),
      ],
    );
  }
}

class LeadInfoText extends StatelessWidget {
  const LeadInfoText({Key? key, required this.subtitle, required this.title})
      : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Palette.brown,
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        Text(
          subtitle,
          style: TextStyle(
              color: Palette.black,
              fontSize: 14,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
