void main(List<String> args) {
  Map<String, List<int>> customers = {
    'Arya Stark': [500, 200],
    'Erling Haaland': [150, 900],
  };

  customers.forEach((key, value) {
    for (int i = 0; i < value.length; i++) {
      if (value[i] > 200) {
        value[i] += 10;
      }
    }
  });

  print(customers);
}
