import 'package:flutter/material.dart';

import 'age.dart';
import 'height.dart';

class Weight extends StatefulWidget {
  final String age;
  final String gender;
  const Weight({super.key, required this.age, required this.gender});

  @override
  _HeightPickerState createState() => _HeightPickerState();
}

class _HeightPickerState extends State<Weight> {
  int selectedWeight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Weight.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(70.0),
            child: Text(
              'WHAT\'S YOUR WEIGHT?',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 110.0),
            child: Text(
              '                               YOU CAN ALWAYS CHANGE THIS LATER',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
          Center(
            child: SizedBox(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 80, // Increase height for each item
                diameterRatio: 1.5,
                physics: const FixedExtentScrollPhysics(),
                children: List.generate(
                  100, // Number of heights to display
                  (index) {
                    final Weight = 50 + index; // Starting from 150 cm
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$Weight',
                              style: const TextStyle(
                                  fontSize: 32, color: Colors.white),
                            ),
                            const Text(
                              ' kg',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffD0FD3E),
                              ),
                            )
                          ],
                        ),
                        const Center(
                          child: SizedBox(
                            width: 100,
                            child: Divider(
                              color: Color(0xffD0FD3E),
                              height: 5,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedWeight = 50 + index; // Starting from 150 cm
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color(0xffD0FD3E),
                    size: 60,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xffD0FD3E)),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print(
                          'Gender: ${widget.gender},\n Age: ${widget.age},\n Weight: $selectedWeight ');

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeightPicker(
                                  gender: widget.gender,
                                  weight: selectedWeight.toString(),
                                  age: widget.age,
                                )),
                      );
                    },
                    child: const Text(
                      " Next > ",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
