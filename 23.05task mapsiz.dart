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


//mapli

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

  Map<String, int> mapping = {};

  for (String produkt in list) {
    String lowerCase = produkt.toLowerCase();
    if (lowerCase == 'asus') {
      mapping[lowerCase] = (mapping[lowerCase] ?? 0) + 1;
    }
  }

  print(mapping);
}
