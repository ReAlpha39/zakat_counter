class ZakatCounter {
  double zakat = 2.5;
  double emas = 850000;
  double gabah = 4600;

  zakatProfesi(String gaji) {
    double value = double.parse(gaji);
    String msg = "";
    double nishab = gabah * 520;
    if (value >= nishab) {
      double result = (value * zakat) / 100;
      msg = currencyFormat(result);
    } else {
      msg = "Anda tidak berhak membayar zakat";
    }
    return msg;
  }

  zakatEmas(String gramEmas) {
    double value = double.parse(gramEmas);
    String msg = "";
    double nishab = 85;
    if (value >= nishab) {
      double result = (double.parse(gramEmas) * emas * zakat) / 100;
      msg = currencyFormat(result);
    } else {
      msg = "Anda tidak berhak membayar zakat";
    }
    return msg;
  }

  zakatPerdagangan(String pendapatanTahun) {
    double value = double.parse(pendapatanTahun);
    String msg = "";
    double nishab = emas * 85;
    if (value >= nishab) {
      double result = (value * zakat) / 100;
      msg = currencyFormat(result);
    } else {
      msg = "Anda tidak berhak membayar zakat";
    }
    return msg;
  }

  zakatRikaz(String hargaBarang) {
    double value = double.parse(hargaBarang);
    String msg = "";
    double nishab = emas * 85;
    if (value >= nishab) {
      double result = (value * 20) / 100;
      msg = currencyFormat(result);
    } else {
      msg = "Anda tidak berhak membayar zakat";
    }
    return msg;
  }

  currencyFormat(double data) {
    String value = data.toString();
    var split = value.split("");
    String number = "";
    int j = 0;
    for (int i = split.length - 1; i >= 0; i--) {
      if (split[i] != ".") {
        if (j == 3) {
          j = 0;
          number += ".";
        }
        number += split[i];
        j++;
      }
    }
    var mirror = number.split("");
    var mNumber = "";
    for (int i = mirror.length - 1; i >= 0; i--) {
      mNumber += mirror[i];
    }
    String currency = "Rp. " + mNumber + ",00";
    return currency;
  }
}
