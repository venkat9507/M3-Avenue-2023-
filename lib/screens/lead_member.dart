import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/palette.dart';
import 'lead_info.dart';

class LeadMember extends StatelessWidget {
  const LeadMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.primaryColor,
            automaticallyImplyLeading: true,
            title:  Text('Leads - M3AM30025567',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // title: const Text('Tabs Demo'),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: TabBar(
                  indicatorColor: Palette.primaryColor,
                  indicatorWeight: 2,
                  unselectedLabelColor: Palette.secondary,
                  labelColor: Palette.primaryColor,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const   Text('Leads Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    Text('Documents',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                    Text('Remarks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    LeadInfo(),
                    Icon(Icons.person),
                    Icon(Icons.person),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
