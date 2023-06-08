class Car {
  String minik = '';
  String qruzovoy = '';
  void showCar() {
    print("secdiyiniz mashin tipi $minik $qruzovoy");
  }
}

class Model {
  String model = '';
}

class MinikMashin extends Model {
  String markasi = "";
  void showMinikMashin() {
    print("secdiyiniz mashinin modeli ve markasi $model $markasi");
  }
}

void main(List<String> args) {
  Car car = Car();
  car.minik = "Minik";
  car.showCar();
  MinikMashin mashin = MinikMashin();
  mashin.markasi = "M3";
  mashin.model = "BMW";
  mashin.showMinikMashin();

  print(
      "Secdiyiniz Mashin Tipi : ${car.minik}, Modeli ${mashin.model}, Markasi, ${mashin.markasi}");
}
