class Store {
  Store(dynamic user) {
    // this.stripe = Stripe(user)
    this.user = user;
    this.paypal = Paypal();
  }

  // Stripe stripe;
  late Paypal paypal;
  dynamic user;

  purchaseBike(int quantity) {
    // this.stripe.makePayment(200 * quantity * 100)
    this.paypal.makePayment(this.user, 200 * quantity * 100);
  }

  purchaseHelmet(int quantity) {
    // this.stripe.makePayment(15 * quantity * 100)
    this.paypal.makePayment(this.user, 15 * quantity * 100);
  }
}

class Stripe {
  constructor(dynamic user) {
    this.user = user;
  }

  dynamic user;

  makePayment(int amountInCents) {
    print(
      '${this.user} made payment of \$${amountInCents / 100} with Stripe',
    );
  }
}

class Paypal {
  makePayment(dynamic user, int amountInCents) {
    print('${user} made payment of \$${amountInCents / 100} with Payment');
  }
}

void main(List<String> args) {
  Store store = Store("John");
  store.purchaseBike(2);
  store.purchaseHelmet(2);
}
