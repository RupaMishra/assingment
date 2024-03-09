import 'package:assingment/screens/benefits_list.dart';
import 'package:assingment/screens/flexi_benefit.dart';
import 'package:assingment/screens/flexi_benefits_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  FlexiBenefitCard(),
      routes: {
        '/flexi-benefits' : (context) => const BenefitsList(),
      },
    );
  }
}
