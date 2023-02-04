import 'package:flutter/material.dart';
import 'package:pesona_moa/screens/my_list_view.dart';
import 'package:pesona_moa/services/cloud/cloud_destination.dart';
import 'package:pesona_moa/utils/styles.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 184, 183, 183),
                Color.fromARGB(255, 165, 165, 165)
              ])),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 45, left: 20, right: 20, bottom: 10),
                child: Text(
                  "Tempat Wisata Moa dan Sekitarnya",
                  style: Styles.header1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MyListView(
                data: Data().generateData(),
                onTap: (note) {},
                type: "place",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
