import 'package:flutter/material.dart';
import './account_picker.dart';

class AccountSelector extends StatefulWidget {
  final Color selectorBg;
  final bool isFromAccount;
  AccountSelector({@required this.selectorBg, this.isFromAccount = true});
  @override
  _AccountSelectorState createState() {
    return _AccountSelectorState();
  }
}

class _AccountSelectorState extends State<AccountSelector> {
  @override
  Widget build(BuildContext context) {
    final textVal = widget.isFromAccount ? "From" : "To";
    return InkWell(
      onTap: () {
        print(textVal);
        showModalBottomSheet(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          )),
          context: context,
          builder: (context) => AccountPicker(),
        );
      },
      child: Container(
        height: 72.0,
        color: widget.selectorBg,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: <Widget>[
            Text(textVal, style: fromTextStyle),
            Spacer(),
            Text("Select Account", style: selectTextStyle),
            SizedBox(width: 8.0),
            Icon(
              Icons.arrow_drop_down,
              color: Color(0xff4f4f4f),
            ) //ColorIb.gray[700]
          ],
        ),
      ),
    );
  }
}

// Color(0xff2F80ED).withAlpha(51); //ColorIb.blue[800].withAlpha(51);

final fromTextStyle = TextStyle(
    fontFamily: 'FiraSans',
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.black);

final selectTextStyle = TextStyle(
  fontFamily: 'FiraSans',
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: Color(0xff4f4f4f).withAlpha(191), //ColorIb.gray[700].withAlpha(191)
);
