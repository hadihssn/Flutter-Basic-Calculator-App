import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int? firstNum = 0, secondNum = 0, finalResult = 0;

  void add(){
    setState((){
      firstNum = int.parse(controller1.text);
      secondNum = int.parse(controller2.text);
      finalResult = firstNum! + secondNum!;
    });
  }

  void sub(){
    setState((){
      firstNum = int.parse(controller1.text);
      secondNum = int.parse(controller2.text);
      finalResult = firstNum! - secondNum!;
    });
  }

  void mul(){
    setState((){
      firstNum = int.parse(controller1.text);
      secondNum = int.parse(controller2.text);
      finalResult = firstNum! * secondNum!;
    });
  }

  void div(){
    setState((){
      firstNum = int.parse(controller1.text);
      secondNum = int.parse(controller2.text);
      finalResult = firstNum! ~/ secondNum!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text("Basic Calculator App"),
        ),
      ),

      //Body
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            //Place to display final result
             Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                "Result is: $finalResult",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //First Text Field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.black,
                controller: controller1,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Colors.black
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            //Second Text Field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.black,
                controller: controller2,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Colors.black
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            //Rows for buttons
            //Row 1
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Button 1 Addition
                  ElevatedButton(
                    onPressed: (){
                      add();
                      controller1.clear();
                      controller2.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text("ADD"),
                  ),

                  //Button 2 Division
                  ElevatedButton(
                    onPressed: (){
                      div();
                      controller1.clear();
                      controller2.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text("DIV"),
                  ),
                ],
              ),
            ),

            //Row 2
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Button 1 Multiplication
                  ElevatedButton(
                    onPressed: (){
                      mul();
                      controller1.clear();
                      controller2.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text("MUL"),
                  ),

                  //Button 2 Subtraction
                  ElevatedButton(
                    onPressed: (){
                      sub();
                      controller1.clear();
                      controller2.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text("SUB"),
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


