void main() {
  print(sumOfNnums(6));
  print(sumOfEven(10));
  print(sumOfodd(3));
  print(nFactorial(8));
  print(nFactorial(7));
  print(sumOfAllDigits(2434));
  print(sumOfAllDigits(12));
  print(nCr(14, 8));
  print(primeCheck(13));
}

int sumOfNnums(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int sumOfEven(int n) {
  int sumE = 0;
  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) {
      sumE += i;
    }
  }
  return sumE;
}

double sumOfodd(int n) {
  double so = 0;
  for (var i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      so += i;
    }
  }
  return so;
}

double nFactorial(double N) {
  double nf = 1;
  for (var i = 1; i <= N; i++) {
    nf *= i;
  }
  return nf;
}

double sumOfAllDigits(double sod) {
  double digitSum = 0;
  while (sod > 0) {
    double lastDig = sod % 10;
    sod /= 10;
    digitSum += lastDig;
  }
  return digitSum;
}

double fact(double n) {
  double nf = 1;
  for (var i = 1; i <= n; i++) {
    nf *= i;
  }
  return nf;
}

double nCr(double n, double r) {
  double FN = fact(n);
  double FR = fact(r);
  double nMr = fact(n - r);
  double ncr = FN / (FR * nMr);
  return ncr;
}

int primeCheck(int n) {
  if (n % 2 == 0 || n % 3 == 0) {
    print("num is not prime");
  } else {
    print("num is prime");
  }
  return n;
}



