import 'package:flutter/material.dart';
import 'package:pesona_moa/services/cloud/cloud_destination.dart';
import 'package:pesona_moa/utils/styles.dart';

typedef MyCallback = void Function(CloudDestination note);

class MyListView extends StatelessWidget {
  final Iterable<CloudDestination> data;
  final MyCallback onTap;
  final String type;

  const MyListView({
    Key? key,
    required this.data,
    required this.onTap,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final note = data.elementAt(index);
          return SizedBox(
            height: 300,
            child: Card(
              color: Colors.grey.withOpacity(0.95),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 2, color: Colors.white)),
              elevation: 10,
              child: Column(children: [
                SizedBox(
                  height: 210,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      note.image,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 90,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              note.name,
                              style: Styles.header2,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              type == "place"
                                  ? "Lokasi : ${note.location}"
                                  : "Bahan : ${note.location}",
                              style: Styles.header3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ),
          );
        });
  }
}
