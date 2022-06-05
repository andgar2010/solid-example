class Store {
  Store(PaymentProcesador paymentProcesador) {
    this.paymentProcesador = paymentProcesador;
  }
  late PaymentProcesador paymentProcesador;

  purchaseBike(int quantity) {
    this.paymentProcesador.pay(200 * quantity);
  }

  purchaseHelmet(int quantity) {
    this.paymentProcesador.pay(15 * quantity);
  }
}

abstract class PaymentProcesador {
  void pay(int amountInDollars) {}
}

class StripePaymentProcesador implements PaymentProcesador {
  StripePaymentProcesador(dynamic user) {
    this.stripe = Stripe(user);
  }
  late Stripe stripe;
  pay(int amountInDollars) {
    this.stripe.makePayment(amountInDollars * 100);
  }
}

class Stripe {
  Stripe(dynamic user) {
    this.user = user;
  }
  dynamic user;

  makePayment(int amountInCents) {
    print(
      '${this.user} made payment of \$${amountInCents / 100} with Stripe',
    );
  }
}

class PaypalPaymentProcesador implements PaymentProcesador {
  PaypalPaymentProcesador(dynamic user) {
    this.user = user;
    this.paypal = Paypal();
  }
  dynamic user;
  late Paypal paypal;

  pay(int amountInDollars) {
    this.paypal.makePayment(this.user, amountInDollars);
  }
}

class Paypal {
  makePayment(dynamic user, int amountInDollars) {
    print('${user} made payment of \$${amountInDollars} with Paypal');
  }
}

main() {
  // Store store = Store(StripePaymentProcesador("John"));
  Store store = Store(PaypalPaymentProcesador("John"));
  store.purchaseBike(2);
  store.purchaseHelmet(2);
}
