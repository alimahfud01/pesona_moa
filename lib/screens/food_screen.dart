import 'package:flutter/material.dart';
import 'package:pesona_moa/screens/my_list_view.dart';
import '../services/cloud/cloud_food.dart';
import '../utils/styles.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 184, 183, 183),
                Color.fromARGB(255, 165, 165, 165)
              ])),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 45, left: 20, right: 20, bottom: 10),
                child: Text(
                  "Makanan Khas Moa",
                  style: Styles.header1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MyListView(
                data: FoodData().generateData(),
                onTap: (note) {},
                type: "food",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
