import 'package:flutter/material.dart';

Widget rewards() => Container(
  constraints: BoxConstraints(maxHeight: 275),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4.0)
  ),
  padding: EdgeInsets.only(
    top: 30.0,
    left: 30.0,
    right: 30.0,
    bottom: 20.0,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Icon(Icons.card_giftcard_outlined, color: Colors.black54),

      Column(
        children: [
          Text(
            'Nubank Rewards',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600
            )
          ),
          SizedBox(height: 15.0),
          Text(
            'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0
            )
          ),
        ],
      ),
      OutlineButton(
        splashColor: Colors.transparent,
        borderSide: BorderSide(
          width: 1.0,
          color: Color(0xFF83259f),
          style: BorderStyle.solid
        ),
        highlightedBorderColor: Color(0xFF83259f),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0)
        ),
        textColor: Color(0xFF83259f),
        child: Text(
          'ATIVE O SEU REWARDS',
          style: TextStyle(
            fontSize: 11.0
          )
        )
      )
    ],
  ),
);
