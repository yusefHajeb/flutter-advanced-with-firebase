import 'package:flutter/material.dart';

class PasswordChecker extends StatefulWidget {
  @override
  _PasswordCheckerState createState() => _PasswordCheckerState();
}

class _PasswordCheckerState extends State<PasswordChecker> {
  final TextEditingController _passwordController = TextEditingController();
  final List<bool> _conditions = [false, false, false, false, false];
  final List<String> _conditionTexts = [
    'Min 8 chars',
    'Uppercase',
    'Lowercase',
    'Digits',
    'Special Char'
  ];

  void _checkPassword(String password) {
    setState(() {
      _conditions[0] = password.length >= 8;
      _conditions[1] = RegExp(r'(?=.*[A-Z])').hasMatch(password);
      _conditions[2] = RegExp(r'(?=.*[a-z])').hasMatch(password);
      _conditions[3] = RegExp(r'(?=.*\d)').hasMatch(password);
      _conditions[4] = RegExp(r'(?=.*[@$!%*?&])').hasMatch(password);

      // ترتيب الشروط بحيث تظهر المتحققة أولاً
      _sortConditions();
    });
  }

  void _sortConditions() {
    List<Map<String, dynamic>> combined = List.generate(
      _conditions.length,
      (index) => {
        'condition': _conditions[index],
        'text': _conditionTexts[index],
      },
    );

    // ترتيب الشروط بحيث تظهر المتحققة أولاً
    combined.sort((a, b) => b['condition']
        ? 1
        : 0 == a['condition']
            ? 1
            : 0);

    for (int i = 0; i < combined.length; i++) {
      _conditions[i] = combined[i]['condition'];
      _conditionTexts[i] = combined[i]['text'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Enter your password'),
            onChanged: _checkPassword,
          ),
          SizedBox(height: 20),
          PasswordValidatorColorWidget(
            conditions: _conditions,
            conditionTexts: _conditionTexts,
          ),
        ],
      ),
    );
  }
}

class PasswordValidatorColorWidget extends StatelessWidget {
  PasswordValidatorColorWidget(
      {super.key, required this.conditions, required this.conditionTexts});

  final List<bool> conditions;
  final List<String> conditionTexts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: List.generate(conditions.length, (index) {
            return Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 3),
                height: 2,
                decoration: BoxDecoration(
                  color: conditions[index] ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    conditionTexts[index],
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
