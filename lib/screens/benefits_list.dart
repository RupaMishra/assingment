import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:assingment/screens/flexi_benefit.dart';
import 'package:assingment/widgets/benefit_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BenefitsList extends StatelessWidget {

  const BenefitsList({super.key});

  @override
  Widget build(BuildContext context) {
    var myVariables = Provider.of<MyDataSet>(context);
    var flexiDataList =myVariables.flexiDataList;

    double allocatedAmtProgress = myVariables.allocatdMoney / 10000;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF4EA),
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
      body: Container(
        color:const Color(0xFFFAF4EA),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 150),
                child: Column(
                  children: [
                    Text(
                      "Explore various tax-saving allowances available to you and opt for those that make the most sense for you",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Inter', color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 16,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: flexiDataList.length,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Color(flexiDataList[index].secondarycolor),
                              borderRadius: BorderRadius.circular(12), // Rounded corners with radius of 12
                              border: Border.all(color: const Color(0xFFFEEEEEE)), // Border properties
                            ),
                            child: BenefitsTile(
                              primaryColor: flexiDataList[index].primarycolor,
                              secondaryColor: flexiDataList[index].secondarycolor,
                              icon: flexiDataList[index].icon,
                              title:flexiDataList[index].title,
                              allowance: flexiDataList[index].allocationFund,
                              index: index,
                              isClickable: true,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FlexiBenefit(data: flexiDataList[index],index: index,)));
                              },
                            )
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 150,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\u20B9 ${myVariables.allocatdMoney} allocated",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey[900]),),
                      Text("\u20B9 10,000 available",style: TextStyle(color: Colors.grey[400],fontFamily: 'Inter'),)
                    ],
                  ),
                  const SizedBox(height: 12,),
                  LinearProgressIndicator(
                    value: allocatedAmtProgress > 0.01 ? allocatedAmtProgress : 0.01,
                    semanticsLabel: 'Linear progress indicator',
                    color: Color(0xFFF42D499),
                    borderRadius: BorderRadius.circular(16),
                    minHeight: 7,
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    width: double.infinity,
                    height: 62,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Text("Continue",style: TextStyle(color: Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF191919),
                      ),
                      label: const Icon(Icons.arrow_circle_right,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
