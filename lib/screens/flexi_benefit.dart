import 'package:assingment/models/benefits_list.dart';
import 'package:assingment/widgets/benefit_tile.dart';
import 'package:flutter/material.dart';

class FlexiBenefit extends StatelessWidget {
  final ListBenefits data;
  final int index;
  const FlexiBenefit({super.key,required this.data,required this.index});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child:  Column(
            children: [
              SizedBox(
                height: 160,
                child: BenefitsTile(
                  color: data.color,
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
                      SizedBox(
                        height: 200,
                        child: GridView.builder(
                          itemCount: modesLength,
                          itemBuilder:(context,index){
                            return Container(
                              color: Colors.grey[100],
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    data.howItWorks.modes[index].icon,
                                    Text(data.howItWorks.modes[index].title)
                                  ],
                                ),
                              ),
                            );

                          },
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of items in each row
                            crossAxisSpacing: 8.0, // spacing between columns
                          ),
                        ),
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
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: faqLength,
                          itemBuilder:(context,index){
                            return Container(
                              height: 60,
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              padding: EdgeInsets.all(12.0),
                              color: Colors.grey[100],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.arrow_drop_down_circle),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(data.faqs[index].question,overflow: TextOverflow.ellipsis,maxLines: 1,),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        )

      ),
      // appBar: AppBarTheme(
      //   centerTitle: Text("data")
      // ),
    );
  }
}
