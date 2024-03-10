import 'package:assingment/models/benefits_list.dart';
import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyBottomSheet extends StatefulWidget {
  final ListBenefits data;
  final int index;
  const MyBottomSheet({super.key,required this.data,required this.index});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {

  void maxOutExp() {
    Fluttertoast.showToast(
      msg: "Max out",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    ListBenefits data = widget.data;
    int index = widget.index;
    var myVariables = Provider.of<MyDataSet>(context);
    var allocatedAmt = data.allocatedFund;
    var currAllocatedAmt = 0;
    double allocatedAmtProgress = allocatedAmt /  data.allocatedFund;

    return SizedBox(
      width: double.infinity,
      height: 62,
      child:
      ElevatedButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (BuildContext contex){
            return StatefulBuilder(builder: (BuildContext context,StateSetter setState){
              return  Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 6,bottom: 24),
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xFFFEEEEEE)),
                          ),
                          const Text('SETTING ALLLOWANCE AMOUNT',style: TextStyle(color: Color(0xFFFCBCBCB),fontSize: 14,fontWeight: FontWeight.w600),),
                          const SizedBox(height: 30,),
                          Image.asset(data.icon,height: 24,width: 24,color: Color(data.secondarycolor),),
                          const SizedBox(height: 10,),
                          Text(data.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,fontFamily: 'Roboto'),),
                          const SizedBox(height: 10,),
                          Text(
                            "Click on plus icon to set the desired monthly amount for this allowance",
                            textAlign: TextAlign.center,
                            style:TextStyle(fontSize: 16,fontFamily: 'Inter',fontWeight: FontWeight.w500,color: Colors.grey[800]),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  if(allocatedAmt>100) {
                                    allocatedAmt -= 100;
                                    currAllocatedAmt -= 100;
                                  }else{
                                    print("exception");
                                    allocatedAmt = data.allocatedFund;
                                    maxOutExp();
                                  }
                                });
                              }, icon: Icon(Icons.remove_circle)),
                              Text("\u20B9 $allocatedAmt",style: const TextStyle(fontSize: 28,fontWeight: FontWeight.w600,fontFamily: 'Roboto'),),
                              IconButton(onPressed: (){
                                setState(() {
                                  if(allocatedAmt<10000) {
                                    allocatedAmt += 100;
                                    currAllocatedAmt += 100;
                                  }else{
                                    print("exception");
                                    allocatedAmt = data.allocatedFund;
                                    maxOutExp();
                                  }
                                });
                              }, icon: Icon(Icons.add_circle)),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          SizedBox(
                            width: double.infinity,
                            height: 62,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF191919),
                              ),
                              onPressed: (){
                                // updateAllocation(myVariables,currAllocatedAmt,index);
                                try {
                                  myVariables.updateAllocatedFund(currAllocatedAmt , index);
                                } catch (e) {
                                  setState(() {
                                    allocatedAmt = data.allocatedFund;
                                  });
                                  // Show toast message with the exception message
                                  Fluttertoast.showToast(
                                    msg: e.toString(),
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0,
                                  );
                                }
                                Navigator.pop(context);
                              },
                              child: const Text("Done",style: TextStyle(color: Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
                            ),
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF191919),
        ),
        child: const Text("Select allowance amount",style: TextStyle(color: Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
      ),
    );
  }
}
