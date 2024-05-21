import 'package:flutter/material.dart';

class PasswordValidatorColorWidget extends StatelessWidget {
  PasswordValidatorColorWidget(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.value,
      required this.hasMiningth});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMiningth;
  final List<bool> value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 3),
                  height: 2,
                  decoration: BoxDecoration(
                    color: hasLowerCase == false ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 3),
                  height: 2,
                  decoration: BoxDecoration(
                    color: hasUpperCase == false ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 3),
                  height: 2,
                  decoration: BoxDecoration(
                    color: hasNumber == false ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 2),
                  height: 3,
                  decoration: BoxDecoration(
                    color: hasSpecialCharacter == false
                        ? Colors.red
                        : Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 2),
                  height: 3,
                  decoration: BoxDecoration(
                    color: hasMiningth == false ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
