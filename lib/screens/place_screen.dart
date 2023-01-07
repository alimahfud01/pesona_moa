import 'package:flutter/material.dart';
import 'package:pesona_moa/utils/styles.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Text(
                "Tempat Wisata Moa",
                style: Styles.header1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
