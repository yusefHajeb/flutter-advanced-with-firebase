import 'package:flutter/material.dart';

class PasswordValidatorColorWidget extends StatelessWidget {
  PasswordValidatorColorWidget(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.value,
      required this.values,
      required this.hasMiningth});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMiningth;
  final List<bool> value;
  final List<bool> values;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: List.generate(values.length, (index) {
            return Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 3),
                height: 2,
                decoration: BoxDecoration(
                  color: values[index] ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
