import 'package:flutter/material.dart';


class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4D63F5), Color(0xFF7B46B6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        )
      ],
    );
  }
}
