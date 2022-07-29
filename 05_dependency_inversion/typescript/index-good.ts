class Store {
  constructor(paymentProcesador: PaymentProcesador) {
    this.paymentProcesador = paymentProcesador;
  }
  paymentProcesador: PaymentProcesador;

  purchaseBike(quantity: number) {
    this.paymentProcesador.pay(200 * quantity);
  }
  purchaseHelmet(quantity: number) {
    this.paymentProcesador.pay(15 * quantity);
  }
}

abstract class PaymentProcesador {
  pay(amountInDollars: number): void {}
}

class StripePaymentProcesador implements PaymentProcesador {
  constructor(user: any) {
    this.stripe = new Stripe(user);
  }
  stripe: Stripe;
  pay(amountInDollars: number) {
    this.stripe.makePayment(amountInDollars * 100);
  }
}

class Stripe {
  constructor(user: any) {
    this.user = user;
  }
  user: any;

  makePayment(amountInCents: number) {
    console.log(
      `${this.user} made payment of \$${amountInCents / 100} with Stripe`,
    );
  }
}

class PaypalPaymentProcesador implements PaymentProcesador {
  constructor(user: any) {
    this.user = user;
    this.paypal = new Paypal();
  }
  user: any;
  paypal: Paypal;

  pay(amountInDollars: number) {
    this.paypal.makePayment(this.user, amountInDollars);
  }
}

class Paypal {
  makePayment(user: any, amountInDollars: number) {
    console.log(`${user} made payment of \$${amountInDollars} with Paypal`);
  }
}

const store = new Store(new PaypalPaymentProcesador("John"));
store.purchaseBike(2);
store.purchaseHelmet(2);
