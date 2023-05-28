main() {
  List<int> list1 = [1, 2, 3, 4];
  var maxNumber = enBoyukReqem(list1);
  print('en boyuk reqem $maxNumber');
  var minNumber = enKicikReqem(list1);
  print('en kicik reqem $minNumber');
  var totalNumbers = sayilarinToplami(list1);
  print('reqemlerin cemi $totalNumbers');
  var ortaEdedi = edediOrta(list1);
  print("Ededi orta $ortaEdedi");
}
enBoyukReqem(list1) {
  int max = list1[0];
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] > max) {
      max = list1[i];
    }
  }
  return max;
}
enKicikReqem(list1) {
  int min = list1[0];
  for (int i = 0; i > list1.length; i++) {
    if (list1[i] < min) {
      min = list1[i];
    }
  }
  return min;
}
sayilarinToplami(list1) {
  int total = 0;

  for (int numbers in list1) {
    total += numbers;
  }
  return total;
}
edediOrta(list1) {
  int total = 0;
  for (int numbers in list1) {
    total += numbers;
  }
  var edediOrta = total / list1.length;
  return edediOrta;
}
