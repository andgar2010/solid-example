class Store {
  constructor(user: any) {
    // this.stripe = new Stripe(user)
    this.user = user;
    this.paypal = new Paypal();
  }

  // stripe: Stripe
  paypal: Paypal;
  user: any;

  purchaseBike(quantity: number) {
    // this.stripe.makePayment(200 * quantity * 100)
    this.paypal.makePayment(this.user, 200 * quantity * 100);
  }
  purchaseHelmet(quantity: number) {
    // this.stripe.makePayment(15 * quantity * 100)
    this.paypal.makePayment(this.user, 15 * quantity * 100);
  }
}

class Stripe {
  constructor(user: any) {
    this.user = user;
  }
  user: any;

  makePayment(amountInCents: number) {
    console.log(
      `${this.user} made payment of ${amountInCents / 100} with Stripe`,
    );
  }
}

class Paypal {
  makePayment(user: any, amountInCents: number) {
    console.log(`${user} made payment of ${amountInCents / 100} with Payment`);
  }
}

const store = new Store("John");
store.purchaseBike(2);
store.purchaseHelmet(2);
