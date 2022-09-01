// ignore_for_file: non_constant_identifier_names

class Card {
  Card({
    required this.cardHolder,
    required this.cardNumber,
    required this.CVV,
    required this.expiry,
  });
  final String cardHolder;
  final int cardNumber;
  final int CVV;
  final String expiry;
}

List<Card> card_list = [
  Card(
      cardHolder: 'John Smith',
      cardNumber: 1234123412341234,
      CVV: 1234,
      expiry: '12/26'),
  Card(
      cardHolder: 'John Anderson',
      cardNumber: 1234123412341234,
      CVV: 1234,
      expiry: '12/26'),
  Card(
      cardHolder: 'Jane',
      cardNumber: 1234123412341234,
      CVV: 1234,
      expiry: '12/26'),
];
