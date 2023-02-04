import 'package:pesona_moa/services/cloud/cloud_destination.dart';

class CloudFood {
  String name;
  String image;
  String ingredients;

  CloudFood({
    required this.name,
    required this.image,
    required this.ingredients,
  });
}

class FoodData {
  List name = [
    "Dendeng Kerbau",
    "Gatang Kenari",
    "Jagung Hasa",
    "Nasi Jaha",
    "Sagu Lempeng",
    "Susu Kerbau Moa",
    "Talam Sagu Bakar",
  ];
  List image = [
    "assets/images/dendeng_kerbau.jpg",
    "assets/images/gatang_kenari.jpg",
    "assets/images/jagung_hasa.jpg",
    "assets/images/nasi_jaha.jpg",
    "assets/images/sagu_lempeng.jpg",
    "assets/images/susu_kerbau_moa.jpg",
    "assets/images/talam_sagu_bakar.jpg",
  ];
  List ingredient = [
    "Daging Kerbau",
    "Kepiting Kenari",
    "Jagung",
    "Beras Ketan, Jahe dan Santan",
    "Sagu",
    "Susu Kerbau",
    "Sagu, Kenari, Tepung Beras dan Kacang Brenebon",
  ];
  Iterable<CloudDestination> generateData() {
    List<CloudDestination> data = [];
    for (var i = 0; i < image.length; i++) {
      CloudDestination temp = CloudDestination(
          name: name[i], image: image[i], location: ingredient[i]);
      data.add(temp);
    }
    return data;
  }
}
