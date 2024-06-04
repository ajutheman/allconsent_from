import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MammogramQuestionnare extends StatelessWidget {
  const MammogramQuestionnare({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _patientName = TextEditingController();

    return Scaffold(
        body: SafeArea(
      child: Form(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Patient Name"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: _patientName,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
