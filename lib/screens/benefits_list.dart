import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:assingment/screens/flexi_benefit.dart';
import 'package:assingment/widgets/benefit_tile.dart';
import 'package:flutter/material.dart';

class BenefitsList extends StatelessWidget {

  const BenefitsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        color: const Color(0xFFFAF4EA),
        child: ListView(
          children: [
            Text(
              "Flexi-benefits",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'Roboto',color: Colors.grey[900]),
            ),
            const SizedBox(height: 12,),
            Text(
              textAlign: TextAlign.center,
              "Explore various tax-saving allowances available to you and opt for those that make the most sense for you",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',color: Colors.grey[500]),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height:450,
              child: ListView.builder(
                itemCount: flexiDataList.length,
                  itemBuilder:(context,index){
                    return //Text(index.toString());
                      BenefitsTile(
                        color: flexiDataList[index].color,
                        icon: flexiDataList[index].icon,
                        title:flexiDataList[index].title,
                        allowance: flexiDataList[index].allocationFund,
                        index: index,
                        isClickable: true,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FlexiBenefit(data: flexiDataList[index],index: index,)));
                        },
                      );
                  }
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\u20B9 0 allocated",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey[900]),),
                  Text("\u20B9 10,000 available",style: TextStyle(color: Colors.grey[400],fontFamily: 'Inter'),)
                ],
              ),
              const SizedBox(height: 12,),
              SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton.icon(
                  onPressed: () {
                  },
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
      ),
    );
  }
}
