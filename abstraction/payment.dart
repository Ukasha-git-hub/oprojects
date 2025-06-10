

void main() {
  Source source = Source();
  Map<String, double> amount = {
    "bike": 900,
    "mobile":750,
    "car": 30000,
     
  };
  source.Paypal(amount);
  source.otherBank(amount);
}

abstract class Payment {
  void Paypal(var amount);
  void otherBank(var amount);
}

class Source extends Payment {
  @override
  void Paypal( amount) {
    print("payment Via payPal  :${amount["bike"]}");
  }

  @override
  void otherBank(var amount) {
    print("payment via other bank${amount["car"]}");
  }
}
