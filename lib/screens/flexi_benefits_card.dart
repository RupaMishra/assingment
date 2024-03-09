import 'package:flutter/material.dart';

class FlexiBenefitCard extends StatelessWidget {
  const FlexiBenefitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        color: const Color(0xFFFAF4EA),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
              child: Image.asset(
                'assets/icons/card.png',
                width: 32,
                height: 32,
                color: const Color(0xFFF2AC393),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
                child: Text(
                  "Flexi-benefits card",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'Roboto',color: Colors.grey[900]),
                ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'Inter',color: Colors.grey[500]),
                    children: const [
                      TextSpan(
                        text: "Allocate a part of your salary against tax-saving allowances and access them with a Rupay card that is ",
                      ),
                      TextSpan(
                        text: "accepted online ",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: "and "
                      ),
                      TextSpan(
                        text: "across 5 lakh merchants",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                      ),
                    ]
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
              child: Image.asset('assets/images/cardimg.png'),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
                child: Text(
                  "You can allocate upto",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'Inter',color: Colors.grey[600]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
              child: Text(
                "\u20B9 10,000 / month",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'Inter',color: Colors.grey[900]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
              child: Text(
                textAlign: TextAlign.center,
                "in flexi-benefits and reduce your taxable income by ₹ 1,20,000 every year",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter',color: Colors.grey[600]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/flexi-benefits');
                  },
                  icon: const Text("Explore flexi-benefits",style: TextStyle(color: Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF191919),
                  ),
                  label: const Icon(Icons.arrow_circle_right,color: Colors.white,),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton(
                  onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Text("Setup later",style: TextStyle(color: Colors.black,fontFamily: 'Inter',fontWeight: FontWeight.w600),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
