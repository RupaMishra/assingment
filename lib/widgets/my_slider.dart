import 'package:assingment/models/benefits_list.dart';
import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySlider extends StatefulWidget {
  final ListBenefits data ;
  final int index;
  final int currAllocatedAmt;
  final int allocatedAmt;
  final void Function(int) onValueChanged;

  const MySlider({super.key,required this.data,required this.index,required this.allocatedAmt,required this.currAllocatedAmt,required this.onValueChanged});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {

  @override
  Widget build(BuildContext context) {

    ListBenefits data = widget.data;
    int index = widget.index;
    var myVariables = Provider.of<MyDataSet>(context);
    int allocatedAmt = widget.allocatedAmt;
    int currAllocatedAmt = widget.currAllocatedAmt;

    return Container(
      child: Column(
        children: [
          Slider(
              min: 0,
              max: data.allocationFund.toDouble(),
              value: allocatedAmt.toDouble(),
              activeColor: currAllocatedAmt==data.allocationFund?Colors.green:Color(data.secondarycolor),
              onChanged: (value) {
                widget.onValueChanged(value.toInt());
                setState(() {

                });
              }

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("0",style: TextStyle(fontWeight: FontWeight.w600),),
              Text(data.allocationFund.toString(),style: TextStyle(fontWeight: FontWeight.w600))
            ],),
          )
        ],
      ),
    );
  }
}
