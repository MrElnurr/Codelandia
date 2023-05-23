//mapsiz

void main() {
  List<String> list = [
    'ASUS',
    'Asus',
    'asus',
    'HP',
    'Hp',
    'hp',
    'MSI',
    'msi',
    'Msi'
  ];

  int say = 0;

  for (String produkt in list) {
    if (produkt.toLowerCase() == 'hp') {
      say++;
    }
  }

  print('Secdiyiniz Markanin sayi: $say');
}
