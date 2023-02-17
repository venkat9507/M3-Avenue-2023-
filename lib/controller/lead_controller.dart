import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/leads.dart';

class LeadController extends GetxController {

  List<String> sortBy = ['Sort By', 'Name','Age','Phone','Income','PinCode','Amount'];
  List<String> filterBy = ['Filter By', 'Name','Age','Phone','Income','PinCode','Amount'];
  List<Widget> leadMembers = [const LeadMembers(greenContainerText: 'Personal Loan',),
    const LeadMembers(greenContainerText: 'Business Loan',),
    const LeadMembers(greenContainerText: 'Property Loan',),
    const LeadMembers(greenContainerText: 'Vehicle Loan',),

  ];
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}
