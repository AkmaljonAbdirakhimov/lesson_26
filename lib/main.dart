import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoard(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 400,
              color: Colors.red,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Container(
                  color: Colors.amber,
                  child: Text("data"),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: const Column(
                        children: [
                          Text(
                            "\$140.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Wallet"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 80,
                    color: Colors.black,
                  ),
                  const Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          Text(
                            "\$12",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Orders"),
                        ],
                      ),
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

class OnBoard extends StatelessWidget {
  Widget getIngredients(String title, [bool isFeatured = false]) {
    return Row(
      children: [
        InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 24,
            ),
            decoration: BoxDecoration(
              color: isFeatured
                  ? Colors.white
                  : const Color.fromARGB(255, 227, 193, 121),
              borderRadius: BorderRadius.circular(20),
              border: isFeatured
                  ? Border.all(color: const Color.fromARGB(255, 150, 130, 82))
                  : null,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: isFeatured
                    ? const Color.fromARGB(255, 150, 130, 82)
                    : Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 12,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 16),
                  child: Text(
                    "Choose your \nfavotire food",
                    style: TextStyle(
                      color: Color.fromARGB(255, 150, 130, 82),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 5),
                  child: Text(
                    "2 of 5",
                    style: TextStyle(
                      color: Color.fromARGB(255, 150, 130, 82),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      getIngredients("Cheese"),
                      getIngredients("Potato", true),
                      getIngredients("Pasta"),
                      getIngredients("Macarone"),
                      getIngredients("Milk"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      getIngredients("Potato", true),
                      getIngredients("Cheese"),
                      getIngredients("Milk"),
                      getIngredients("Pasta"),
                      getIngredients("Macarone"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      getIngredients("Milk"),
                      getIngredients("Cheese"),
                      getIngredients("Macarone"),
                      getIngredients("Pasta"),
                      getIngredients("Potato"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      getIngredients("Cheese"),
                      getIngredients("Potato", true),
                      getIngredients("Pasta"),
                      getIngredients("Macarone"),
                      getIngredients("Milk"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 145, 116, 52),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
