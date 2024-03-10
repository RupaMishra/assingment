import 'package:assingment/models/benefits_list.dart';
import 'package:flutter/material.dart';

class MyDataSet with ChangeNotifier {
  int allocatdMoney = 0;

  final List<ListBenefits> flexiDataList = [
    ListBenefits(
      primarycolor: 0xFFF80121D,
      secondarycolor: 0xFFFFEAA6C,
      icon: 'assets/icons/fuel.png',
      title: "Fuel Allowance",
      allocationFund: 2400,
      allocatedFund: 0,
      desc: "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
      benefits: "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
      faqs: [
        FAQs(
            question: "What happens to my unused balance at the end off the month?"
        ),
        FAQs(
            question: "Can I opt out of this allowance later?"
        ),
        FAQs(
            question: "Do all fuel stations accept the physical card?"
        ),
      ],
      howItWorks: HowItWorks(
            desc: "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
            modes:[
              Modes(
                  title: "Physical Card",
                  icon: const Icon(Icons.credit_card,size: 32)
              ),
              Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32,)
              )
            ]
        )
    ),
    ListBenefits(
      primarycolor: 0xFFF114036,
      secondarycolor: 0xFFF83EDA8,
      icon:'assets/icons/meal.png',
      title: "Fuel Allowance",
      allocationFund: 2400,
      allocatedFund: 600,
      desc: "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
      benefits: "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
      faqs: [
        FAQs(
            question: "What happens to my unused balance at the end off the month?"
        ),
        FAQs(
            question: "Can I opt out of this allowance later?"
        ),
        FAQs(
            question: "Do all fuel stations accept the physical card?"
        ),
      ],
      howItWorks: HowItWorks(
            desc: "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
            modes:[
              Modes(
                  title: "Physical Card",
                  icon: const Icon(Icons.credit_card,size: 32)
              ),
              Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32)
              )
            ]
        )
    ),
    ListBenefits(
      primarycolor: 0xFFF5C3A12,
      secondarycolor: 0xFFFFEC858,
      icon: 'assets/icons/commute.png',
      title: "Fuel Allowance",
      allocationFund: 2400,
      allocatedFund: 0,
      desc: "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
      benefits: "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
      faqs: [
        FAQs(
            question: "What happens to my unused balance at the end off the month?"
        ),
        FAQs(
            question: "Can I opt out of this allowance later?"
        ),
        FAQs(
            question: "Do all fuel stations accept the physical card?"
        ),
      ],
      howItWorks: HowItWorks(
            desc: "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
            modes:[
              Modes(
                  title: "Physical Card",
                  icon: const Icon(Icons.credit_card,size: 32)
              ),
              Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32)
              )
            ]
        )
    ),
    ListBenefits(
      primarycolor: 0xFFF3F2C66,
      secondarycolor: 0xFFFC8C2FF,
      icon: 'assets/icons/learn.png',
      title: "Fuel Allowance",
      allocationFund: 2400,
      allocatedFund: 0,
      desc: "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
      benefits: "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
      faqs: [
        FAQs(
            question: "What happens to my unused balance at the end off the month?"
        ),
        FAQs(
            question: "Can I opt out of this allowance later?"
        ),
        FAQs(
            question: "Do all fuel stations accept the physical card?"
        ),
      ],
      howItWorks: HowItWorks(
            desc: "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
            modes:[
              Modes(
                  title: "Physical Card",
                  icon: const Icon(Icons.credit_card,size: 32,)
              ),
              Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32,)
              )
            ]
        )
    ),
    ListBenefits(
        primarycolor: 0xFFFFEF7EE,
        secondarycolor: 0xFFFAA3628,
        icon: 'assets/icons/game.png',
        title: "Fuel Allowance",
        allocationFund: 2400,
        allocatedFund: 2400,
        desc: "Fuel allowance helps cover your vehicle's fuel expenses, making commutes and travel more affordable",
        benefits: "If you travel to work by your own two-wheeler or car, you can use this allowance for purchase of fuel for the vehicle.",
        faqs: [
          FAQs(
              question: "What happens to my unused balance at the end off the month?"
          ),
          FAQs(
              question: "Can I opt out of this allowance later?"
          ),
          FAQs(
              question: "Do all fuel stations accept the physical card?"
          ),
        ],
        howItWorks: HowItWorks(
            desc: "You can pay using the issued physical card directly at fuel stations. Incase you are unable to use the card, you can upload a receipt on the app and receive an instant reimbursement ",
            modes:[
              Modes(
                  title: "Physical Card",
                  icon: const Icon(Icons.credit_card,size: 32)
              ),
              Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32)
              ),Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32)
              ),Modes(
                  title: "Reimbursement",
                  icon: const Icon(Icons.receipt,size: 32)
              )
            ]
        )
    ),
  ];

  void updateAllocationFund(int newValue, int index) {
    if (index >= 0 && index < flexiDataList.length ) {
      if(flexiDataList[index].allocatedFund+newValue<flexiDataList[index].allocationFund && allocatdMoney<10000 && allocatdMoney+newValue<=10000) {
        flexiDataList[index].allocatedFund = newValue;
        allocatdMoney += newValue;
        notifyListeners();
      }else{
        throw ArgumentError("maxed out");
      }
    } else {
      throw ArgumentError("Invalid index: $index");
    }
  }
  void updateAllocatedMoney(int val) {
    allocatdMoney = val;
    notifyListeners();
  }
}