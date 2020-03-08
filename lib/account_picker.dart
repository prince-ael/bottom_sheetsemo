import 'package:flutter/material.dart';

class AccountPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView.builder(
        itemBuilder: (BuildContext context, index) => listItem(fakeData[index]),
        itemCount: fakeData.length,
      ),
    );
  }

  Widget listItem(Account account) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE0E0E0),
          ), //ColorIb.gray[400]
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(account.accountTitle),
              SizedBox(height: 8.0),
              Text(account.productName),
              SizedBox(height: 4.0),
              Text(account.accountNo)
            ],
          ),
          Spacer(),
          Text(account.currency),
          SizedBox(width: 4.0),
          Text(account.balance),
          //SizedBox(width: 0.0),
          // Radio(
          //   activeColor: Color(0xff235EAA), //ColorIb.classicblue[400]
          //   groupValue: 1,
          //   value: 1,
          //   onChanged: (int value) {
          //     print("Radio Onchange: $value");
          //   },
          // )
        ],
      ),
    );
  }
}

//Already created in model folder.(ib_mobile)
class Account {
  final String accountTitle;
  final String productName;
  final String productCode;
  final String accountNo;
  final String currency;
  final String balance;

  Account(
    this.accountTitle,
    this.productName,
    this.productCode,
    this.accountNo,
    this.currency,
    this.balance,
  );
}

final fakeData = [
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1336", "BDT",
      "71,440.00"),
  Account("Md. Nahidul Islam", "Savings", "6001", "376947*****1337", "BDT",
      " 1,00,00,00,000.00"),
  Account("Erfan Elahi", "Savings", "6001", "376947*****1338", "BDT",
      "71,44000.00"),
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1396", "BDT",
      "80,440.00"),
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1396", "BDT",
      "80,440.00"),
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1396", "BDT",
      "80,440.00"),
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1396", "BDT",
      "80,440.00"),
  Account("Md. Faisal Hossain", "Savings", "6001", "376947*****1396", "BDT",
      "80,440.00"),
];
