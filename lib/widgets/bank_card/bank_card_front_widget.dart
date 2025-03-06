import 'package:flip_animation/widgets/bank_card/mastercard_logo_widget.dart';
import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({
    this.cardNumber = '0000 0000 0000 0000',
    this.cardHolderName = 'JOHN SNOW',
    this.expiryDate = '12/28',
    super.key,
  });

  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Colors.blue,
              Colors.green,
            ],
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: MasterCardLogoWidget(),
            ),
            const SizedBox(height: 10),
            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'CARDHOLDER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  cardHolderName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'EXPIRY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  expiryDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
