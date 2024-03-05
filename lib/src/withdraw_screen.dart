import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  int _input = 0;
  var _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          ),
          TextField(
            onChanged: (value) {
              print(value);

              setState(() {
                _input = int.tryParse(value) ?? 0;
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Amount',
            ),
          ),
          ElevatedButton(
            // style: style,
            onPressed: () {
              final calcRes = calcATMBankQty(_input);

              setState(() {
                _output = calcRes.getString();
              });
            },
            child: const Text('Withdraw'),
          ),
          Container(
            color: Colors.grey,
            child: Text(_output),
          )
        ],
      ),
    ));
  }
}

class BankQty {
  int thousand;
  int fiveHundred;
  int hundred;
  int fifty;
  int twenty;
  int ten;
  int remaining;

  BankQty({
    this.thousand = 0,
    this.fiveHundred = 0,
    this.hundred = 0,
    this.fifty = 0,
    this.twenty = 0,
    this.ten = 0,
    this.remaining = 0,
  });

  void copyWith({
    int? thousand,
    int? fiveHundred,
    int? hundred,
    int? fifty,
    int? twenty,
    int? ten,
    int? remaining,
  }) {
    this.thousand = thousand == null ? this.thousand : thousand;
    this.fiveHundred = fiveHundred == null ? this.fiveHundred : fiveHundred;
    this.hundred = hundred == null ? this.hundred : hundred;
    this.fifty = fifty == null ? this.fifty : fifty;
    this.twenty = twenty == null ? this.twenty : twenty;
    this.ten = ten == null ? this.ten : ten;
    this.remaining = remaining == null ? this.remaining : remaining;
  }

  void printString() {
    print(
        '1000: $thousand, 500: $fiveHundred, 100: $hundred, 50: $fifty, 20: $twenty, 10: $ten, r: $remaining');
  }

  String getString() {
    return '1000: $thousand, 500: $fiveHundred, 100: $hundred, 50: $fifty, 20: $twenty, 10: $ten, r: $remaining';
  }
}

BankQty calcATMBankQty(int input) {
  var remaining = input;
  var output = BankQty();

  if (remaining <= 0) {
    return output;
  }

  if (remaining >= 1000) {
    final thousandQty = remaining ~/ 1000;

    output.copyWith(thousand: thousandQty);

    remaining = remaining - thousandQty * 1000;
  }

  if (remaining >= 500) {
    final fiveHundredQty = remaining ~/ 500;

    output.copyWith(fiveHundred: fiveHundredQty);

    remaining = remaining - fiveHundredQty * 500;
  }

  if (remaining >= 100) {
    var hundredQty = remaining ~/ 100;

    hundredQty = hundredQty >= 2 ? 2 : hundredQty;

    output.copyWith(hundred: hundredQty);

    remaining = remaining - hundredQty * 100;
  }

  if (remaining >= 50) {
    final fiftyQty = remaining ~/ 50;

    output.copyWith(fifty: fiftyQty);

    remaining = remaining - fiftyQty * 50;
  }

  if (remaining >= 20) {
    final twentyQty = remaining ~/ 20;

    output.copyWith(twenty: twentyQty);

    remaining = remaining - twentyQty * 20;
  }

  if (remaining >= 10) {
    final tenQty = remaining ~/ 10;

    output.copyWith(ten: tenQty);

    remaining = remaining - tenQty * 10;
  }

  if (remaining >= 0) {
    output.copyWith(remaining: remaining);
  }

  return output;
}
