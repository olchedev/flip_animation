import 'package:flip_animation/widgets/bank_card/mastercard_logo_widget.dart';
import 'package:flutter/material.dart';

class BankCardBackWidget extends StatelessWidget {
  const BankCardBackWidget({
    this.cvv = '123',
    super.key,
  });

  final String cvv;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Colors.grey,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  MasterCardLogoWidget(size: 24),
                  Spacer(),
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              color: Colors.grey[600],
              margin: const EdgeInsets.only(top: 10),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'cvv:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    cvv,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
