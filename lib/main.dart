import 'package:assingment/models/flexi_benefits_data.dart';
import 'package:assingment/screens/benefits_list.dart';
import 'package:assingment/screens/flexi_benefits_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyDataSet(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  const FlexiBenefitCard(),
        routes: {
          '/flexi-benefits' : (context) => const BenefitsList(),
        },
      )
    );

  }
}
