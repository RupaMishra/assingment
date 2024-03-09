import 'package:assingment/widgets/clickable_container.dart';
import 'package:flutter/material.dart';

class BenefitsTile extends StatelessWidget {

  final String icon;
  final int color;
  final String title;
  final int allowance;
  final int index;
  final bool isClickable;
  final void Function()? onPressed;

   const BenefitsTile({
     super.key,
     required this.color,
     required this.icon,
     required this.title,
     required this.allowance,
     required this.index,
     required this.isClickable,
     this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    String i;
    if(index<5) {
      i = index.toString();
    }else{
      i = (index%5).toString();
    }
    return ClickableContainer(
      onTap: onPressed,
      child:  Container(
          height: 160,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/card$i.png"),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(icon,height: 24,width: 24,),
                Text(title,style:TextStyle(color: Color(color),fontSize: 24,fontWeight: FontWeight.w600,fontFamily: "Roboto"),),
                Row(
                  children: List.generate(300~/5, (index) => Expanded(
                    child: Container(
                      color: index%2==0?Colors.transparent
                          :isClickable? Colors.white:Color(color),
                      height: 2,
                    ),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Allocate upto \u20B9 $allowance/ month",style: TextStyle(fontSize: 14,fontFamily: "Inter",fontWeight: FontWeight.w600,color: i=="4"?Colors.white:Colors.grey[900]),),
                    Container(
                      child:isClickable? Image.asset(
                        'assets/icons/next_circle_filled.png',
                        width: 16,
                        height: 16,
                        color: i=="4"?Colors.white:Colors.grey[900],
                      ):const SizedBox(),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
