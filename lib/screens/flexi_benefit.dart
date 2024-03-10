import 'dart:ui';

import 'package:assingment/models/benefits_list.dart';
import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:assingment/widgets/benefit_tile.dart';
import 'package:assingment/widgets/my_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlexiBenefit extends StatelessWidget {
  final ListBenefits data;
  final int index;
  const FlexiBenefit({super.key,required this.data,required this.index});
  
  @override
  Widget build(BuildContext context) {
    var myVariables = Provider.of<MyDataSet>(context);
    int modesLength = data.howItWorks.modes.length;
    int faqLength = data.faqs.length;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/back_circle_filled.png',width: 32,height: 32,),
          //replace with our own icon data.
        ),
        title: const Text('Flexi-benefits',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'Roboto'),),
      ),
      body: SafeArea(
        child:
        Padding(
            padding: const EdgeInsets.all(24),
            child:
            Stack(
              alignment: Alignment.bottomCenter,
              // scrollDirection: Axis.vertical,
              children: [
                SingleChildScrollView(
                  child:  Padding(
                    padding: const EdgeInsets.only(bottom: 48),
                    child: Column(
                      children: [
                        SizedBox(
                          child: BenefitsTile(
                            primaryColor: data.primarycolor,
                            secondaryColor: data.secondarycolor,
                            icon: data.icon,
                            title:data.title,
                            allowance: data.allocationFund,
                            index: index,
                            isClickable: false,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 12.0),
                            child:Column(
                              children: [
                                Text(
                                  "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
                                  style:TextStyle(fontSize: 16,fontFamily: 'Inter',fontWeight: FontWeight.w500,color: Colors.grey[800]),
                                ),
                                const SizedBox(height: 16,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/icons/benefit.png"),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Text("Benefits",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: 'Inter'),),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                Text(
                                  "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
                                  style:TextStyle(fontSize: 16,fontFamily: 'Inter',fontWeight: FontWeight.w500,color: Colors.grey[800]),
                                ),
                                const SizedBox(height: 16,),
                                Row(
                                  children: List.generate(300~/5, (index) => Expanded(
                                    child: Container(
                                      color: index%2==0?Colors.transparent
                                          : Colors.grey[300],
                                      height: 2,
                                    ),
                                  )),
                                ),
                                const SizedBox(height: 16,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/icons/work.png"),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Text("How does it work?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: 'Inter'),),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                Text(
                                  "This allowance can be used via $modesLength modes",
                                  style:TextStyle(fontSize: 16,fontFamily: 'Inter',fontWeight: FontWeight.w500,color: Colors.grey[800]),
                                ),
                                const SizedBox(height: 8,),
                                GridView.builder(
                                    itemCount: modesLength,
                                    shrinkWrap: true,
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        mainAxisExtent: 90.0
                                    ),
                                    itemBuilder: (context,index){
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFEEEEEE),
                                          borderRadius: BorderRadius.circular(12), // Rounded corners with radius of 12
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              data.howItWorks.modes[index].icon,
                                              Text(data.howItWorks.modes[index].title,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 12,fontFamily: 'Inter'),),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
                                  style:TextStyle(fontSize: 16,fontFamily: 'Inter',fontWeight: FontWeight.w500,color: Colors.grey[800]),
                                ),
                                const SizedBox(height: 16,),
                                Row(
                                  children: List.generate(300~/5, (index) => Expanded(
                                    child: Container(
                                      color: index%2==0?Colors.transparent
                                          : Colors.grey[300],
                                      height: 2,
                                    ),
                                  )),
                                ),
                                const SizedBox(height: 16,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/icons/question_mark.png"),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Text("Frequently asked question",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: 'Inter'),),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                ListView.builder(
                                    itemCount: faqLength,
                                    shrinkWrap: true,
                                    itemBuilder: (context,index){
                                      return Container(
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFAFAFA),
                                          borderRadius: BorderRadius.circular(12), // Rounded corners with radius of 12
                                          border: Border.all(color: const Color(0xFFFEEEEEE)), // Border properties
                                        ),
                                        child: ListTile(
                                          leading: Image.asset('assets/icons/circle_down.png'),
                                          title: Text(data.faqs[index].question,style: const TextStyle(fontSize: 12,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
                                        ),
                                      );
                                    }
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ),
                MyBottomSheet(data:data,index: index,),
              ],
            )
        ),
      ),
    );
  }
}
