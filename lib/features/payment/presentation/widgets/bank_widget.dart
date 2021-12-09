import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_core/xenshop_core.dart';

import '../../../../app/i18n/strings.dart';
import '../../domain/entities/bank.dart';

class BankWidget extends StatelessWidget {
  const BankWidget({
    required this.bank,
    Key? key,
    required this.selectedBank,
    this.onSelectBank,
  }) : super(key: key);

  final Bank bank;
  final Bank? selectedBank;
  final Function(Bank?)? onSelectBank;

  @override
  Widget build(BuildContext context) => ListTile(
    leading: ExtendedImage.network(
      bank.image,
      fit: BoxFit.cover,
      width: 50,
      height: 50,
    ),
    title: Text(bank.name),
    subtitle: Text(Strings.yourPaymentWillAutoCheckBySystem.tr),
    trailing: Radio<Bank>(
      value: bank, 
      groupValue: selectedBank, 
      activeColor: blue,
      onChanged: (value) => (onSelectBank != null)
        ? onSelectBank!(value)
        : null,
    ),
  );

  static Widget get skeleton {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: black,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: black,
                  height: 10,
                ),
                const SizedBox(height: 8),
                Container(
                  height: 10,
                  color: black,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: black,
            ),
          ),
        ],
      ),
    );
  }
}
