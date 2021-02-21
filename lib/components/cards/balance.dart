import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget balance() => Container(
  constraints: BoxConstraints(maxHeight: 275),
  decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/coins.svg',
                  width: 18,
                  color: Colors.black54
                ),
                SizedBox(width: 10),
                Text(
                  'NuConta',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54
                  )
                )
              ],
            ),
            Icon(Icons.visibility_off_outlined, color: Colors.black38)
          ],
        ),
      ),
      Flexible(
          flex: 1,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Saldo disponível',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'R\$ 378.281,01',
                    style: TextStyle(fontSize: 26),
                  )
                ]),
          )),
      Container(
          color: Colors.black.withOpacity(0.050),
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Row(children: <Widget>[
                  SvgPicture.asset(
                    'assets/money.svg',
                    width: 20,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'Transferência de R\$ 350.281,00 recebida de XPI.COM.BR/BILL XP Investimentos',
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  )
                ]),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black38,
              )
            ],
          )),
    ],
  ),
);
