import 'package:flutter/material.dart';

class ListBenefits {
  int primarycolor;
  int secondarycolor;
  String icon;
  String title;
  int allocationFund;
  int allocatedFund;
  String desc;
  String benefits;
  HowItWorks howItWorks;
  List<FAQs> faqs;

  ListBenefits({required this.primarycolor,required this.secondarycolor,required this.icon,required this.title,required this.allocationFund,required this.allocatedFund,required this.desc,required this.benefits,required this.howItWorks,required this.faqs});
}


class HowItWorks{
  List<Modes> modes;
  String desc;
  HowItWorks({required this. modes,required this.desc});
}

class Modes{
    String title;
    Icon icon;
    Modes({required this.title,required this.icon});
}

class FAQs{
  String question;
  FAQs({required this.question});
}