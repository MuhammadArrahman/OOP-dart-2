class Hewan {
  String? nama;
  double? berat;
  double? umur;

  Hewan({this.nama, this.berat, this.umur});

  makan(double banyakMakan) {
    berat = berat! + banyakMakan;
  }

  diet(double sedikitMakan) {
    berat = berat! - sedikitMakan;
  }

  tidur() {
    print("Turu dulu gak sih");
  }
}

// inheritance
class Kucing extends Hewan {
  int? jumlahKaki;

  Kucing(String? namanya , double? beratnya, double?umurnya, this.jumlahKaki)
  :super(nama : namanya, berat: beratnya, umur: umurnya);

  berjalan(double kecepatan) {
    print("Berjalan dengan kecepatan : $kecepatan km/jam");
  }
}

void main() {
  var kucing1 = Kucing("persia", 2, 3,4);

  print("nama : ${kucing1.nama}");
  print("berat : ${kucing1.berat} kg");
  print("umur : ${kucing1.umur} tahun");
  print("Jumlah kaki : ${kucing1.jumlahKaki}");


  print("Kucing makan banyak");
  kucing1.makan(3);
  print("berat : ${kucing1.berat} kg");

  print("Kucing Mengurangi Porsi makan nya");
  kucing1.diet(2);
  print("berat : ${kucing1.berat} kg");
  kucing1.tidur();
}
