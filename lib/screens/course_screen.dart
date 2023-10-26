
import 'package:flutter/material.dart';

import 'home_page/home_page_compoents.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HomePageComponent(),
              Text('م.احمد خالد ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text('كورس لغه عربية ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Container(
                alignment: Alignment.bottomRight,
                child: Stepper(
                  currentStep: _index,
                  onStepCancel: () {
                    if (_index > 0) {
                      setState(() {
                         _index -= 1;
                      });
                    }
                  },
                  onStepContinue: () {
                    if (_index <= 0) {
                      setState(() {
                        _index += 1;
                      });
                    }
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  steps: <Step>[
                    Step(
                      title: const Text('الدرس الاول '),
                      content: const Text('شرح الدرس الاول '),
                    ),
                     Step(
                      title: Text('الدرس الثانى '),
                      content: Text('شرح الدرس الثانى '),
                    ),


                    
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
