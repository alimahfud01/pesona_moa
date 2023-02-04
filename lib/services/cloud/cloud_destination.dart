class CloudDestination {
  String name;
  String image;
  String location;

  CloudDestination({
    required this.name,
    required this.image,
    required this.location,
  });
}

class Data {
  List name = [
    "Gunung Kerbau",
    "Bukit Doa Getsemani",
    "Gerdaris Nyama",
    "Pantai Kiasar",
    "Pantai Sila",
    "Pulau Nus Eden",
    "Danau Tihu",
  ];
  List image = [
    "assets/images/gunung_kerbau.jpg",
    "assets/images/bukit_doa_getsemani.jpg",
    "assets/images/gerdaris_nyama.jpg",
    "assets/images/pantai_kiasar.jpg",
    "assets/images/sila_beach.jpg",
    "assets/images/pulau_nus_eden.jpg",
    "assets/images/danau_tihu.jpg"
  ];
  List location = [
    "Pulau Moa, Kec. Moa",
    "Pulau Kisar, MBD",
    "Klis, Kec. Moa",
    "Oirata Barat, MBD",
    "Werwawan, MBD",
    "Kepulauan Romang, MBD",
    "Ilwaki, MBD",
  ];
  Iterable<CloudDestination> generateData() {
    List<CloudDestination> data = [];
    for (var i = 0; i < image.length; i++) {
      CloudDestination temp = CloudDestination(
          name: name[i], image: image[i], location: location[i]);
      data.add(temp);
    }
    return data;
  }
}
