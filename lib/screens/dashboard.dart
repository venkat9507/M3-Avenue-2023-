import 'package:flutter/material.dart';
import 'package:m3_avenue/constant/palette.dart';
import 'package:m3_avenue/screens/leads.dart';



class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.primaryColor,
            toolbarHeight: 5,
            bottom:  TabBar(
              indicatorColor: Palette.amberAccent,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      const  Icon(Icons.arrow_back,color: Palette.white,),
                      const   Text('Leads',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Icon(Icons.add,color: Palette.black,))
                    ],
                  ),
                ),
                Text('Team Leads',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            // title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              LeadsPage(),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}