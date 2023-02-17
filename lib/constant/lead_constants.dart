


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m3_avenue/controller/lead_controller.dart';

import 'palette.dart';




class FilterByButton extends StatefulWidget {
  const FilterByButton({super.key});

  @override
  State<FilterByButton> createState() => _FilterByButtonState();
}

class _FilterByButtonState extends State<FilterByButton> {
  LeadController leadController = Get.find<LeadController>();
  late String   dropdownValue;
  @override
  void initState() {
    // TODO: implement initState
    dropdownValue  = leadController.filterBy.first;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      decoration: BoxDecoration(color: Palette.dropdownColor,borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
          underline: SizedBox(),
          iconSize: 24,
          elevation: 16,
          style:const TextStyle(color:  Palette.black, letterSpacing: .5,fontWeight: FontWeight.normal,fontSize:14 ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: leadController.filterBy.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}












class SortByButton extends StatefulWidget {
  const SortByButton({super.key});

  @override
  State<SortByButton> createState() => _SortByButtonState();
}

class _SortByButtonState extends State<SortByButton> {
  LeadController leadController = Get.find<LeadController>();
  late String   dropdownValue;
  @override
  void initState() {
    // TODO: implement initState
       dropdownValue  = leadController.sortBy.first;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      decoration: BoxDecoration(color: Palette.dropdownColor,borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
          underline: SizedBox(),
          iconSize: 24,
          elevation: 16,
          style:const TextStyle(color:  Palette.black, letterSpacing: .5,fontWeight: FontWeight.normal,fontSize:14 ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: leadController.sortBy.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}




