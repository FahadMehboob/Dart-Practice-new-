void main() {
  TeaWala newQuettaHotel = TeaWala();
  newQuettaHotel.teaWalaIncome(-1);
  newQuettaHotel.teaWalaKamai = 49;
  print(newQuettaHotel.getIncome);
}

class TeaWala {
  int income = 0;

  set teaWalaKamai(int kamai) {
    if (kamai < 0) {
      print("Kamai nahai hwi");
      return;
    }
    income = kamai;
  }

  int get getIncome {
    if (income > 50) {
      income = 0;
      return income;
    } else {
      return income;
    }
  }

  teaWalaIncome(int incomeBhejo) {
    if (incomeBhejo < 0) {
      print("Income can't be in Loss");
      return;
    }
    income = incomeBhejo;
  }
}
