import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const ClickableContainer({super.key, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}