class hewan {
  String? nama;
  double? berat;
  double? umur;
  hewan({this.nama, this.berat, this.umur});

  makan(banyakMakan) {
    berat = berat! + banyakMakan;
  }
}

class burung extends hewan {
  String? warnaBulu;

  burung(String? namanya, double? beratnya, double? umurnya, this.warnaBulu)
    : super(nama: namanya, berat: beratnya, umur: umurnya);

  terbang(int? kecepatan) {
    print("$nama terbang dengan kecepatan $kecepatan km/jam");
  }
}

void main() {
  var burung1 = burung("Elang", 2.5, 1.5, "cokelat");
  print("Nama Burung : ${burung1.nama}");
  print("Berat : ${burung1.berat}");
  print("Umur : ${burung1.umur}");
  print("Warna bulu : ${burung1.warnaBulu}");
  print("=====================================");

  print("Nama Burung : ${burung1.nama}");
  print("Burung memakan banyak daging");
  burung1.makan(5);
  print("Berat : ${burung1.berat}");
  print("Umur : ${burung1.umur}");
  print("Warna bulu : ${burung1.warnaBulu}");
  burung1.terbang(3);
  print("=====================================");
}
