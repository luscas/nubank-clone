import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final limit = 900.0;
final available = 295.92;
final used = 499.11;
final next = 104.97;

double heightInCard(total) {
  return (200 * total / 100);
}

double calcPercentage(prev, next) {
  return prev / next * 100;
}

Widget creditCard() => Container(
  constraints: BoxConstraints(maxHeight: 275),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4.0)
  ),
  child: Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/credit-card.svg',
                          width: 18,
                          color: Colors.black54
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Cartão de Crédito',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                          )
                        )
                      ],
                    ),
                  ),

                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'FATURA ATUAL',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlueAccent
                            ),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.lightBlueAccent,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'R\$ '),
                                TextSpan(
                                  text: '499',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: ',11')
                              ]
                            )
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Limite disponível '),
                                TextSpan(
                                  text: 'R\$ 295,92',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]
                            )
                          ),
                        ]
                      ),
                    )
                  ),
                ],
              ),
            ),

            Container(
              width: 5.0,
              height: 200.0,
              margin: EdgeInsets.only(
                right: 10.0,
              ),
              child: Column(
                children: [
                  Container(
                    width: 5.0,
                    height: heightInCard(calcPercentage(next, limit)),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )
                    ),
                  ),
                  Container(
                    width: 5.0,
                    height: heightInCard(calcPercentage(used, limit)),
                    color: Colors.lightBlue
                  ),
                  Container(
                    width: 5.0,
                    height: heightInCard(calcPercentage(available, limit)),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
          color: Colors.black.withOpacity(0.050),
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Row(children: <Widget>[
                  SvgPicture.asset(
                    'assets/work.svg',
                    width: 20,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'Compra de R\$ 302,95 em br.shein.com',
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54
                      ),
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

// Widget creditCard() => Container(
//   constraints: BoxConstraints(maxHeight: 275),
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(4.0)
//   ),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             SvgPicture.asset(
//               'assets/credit-card.svg',
//               width: 18,
//               color: Colors.black54
//             ),
//             SizedBox(width: 10),
//             Text(
//               'Cartão de Crédito',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.black54
//               )
//             )
//           ],
//         ),
//       ),
//       Flexible(
//         flex: 1,
//         child: Padding(
//           padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'FATURA ATUAL',
//                 style: TextStyle(
//                   fontSize: 11.0,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.lightBlueAccent
//                 ),
//               ),
//               SizedBox(height: 10),
//               RichText(
//                 text: TextSpan(
//                   style: TextStyle(
//                     fontSize: 26,
//                     color: Colors.lightBlueAccent,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(text: 'R\$ '),
//                     TextSpan(
//                       text: '499',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     TextSpan(text: ',11')
//                   ]
//                 )
//               ),
//               SizedBox(height: 10),
//               RichText(
//                 text: TextSpan(
//                   style: TextStyle(
//                     fontSize: 11,
//                     color: Colors.black54,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(text: 'Limite disponível '),
//                     TextSpan(
//                       text: 'R\$ 295,92',
//                       style: TextStyle(
//                         color: Colors.green,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     )
//                   ]
//                 )
//               ),
//             ]
//           ),
//         )
//       ),
//       Container(
//           color: Colors.black.withOpacity(0.050),
//           padding: EdgeInsets.all(20),
//           child: Row(
//             children: <Widget>[
//               Flexible(
//                 child: Row(children: <Widget>[
//                   SvgPicture.asset(
//                     'assets/work.svg',
//                     width: 20,
//                     color: Colors.black54,
//                   ),
//                   SizedBox(width: 10),
//                   Flexible(
//                     child: Text(
//                       'Transferência de R\$ 350.281,00 recebida de XPI.COM.BR/BILL XP Investimentos',
//                       overflow: TextOverflow.clip,
//                       softWrap: true,
//                       style: TextStyle(fontSize: 13, color: Colors.black54),
//                     ),
//                   )
//                 ]),
//               ),
//               Icon(
//                 Icons.chevron_right,
//                 color: Colors.black38,
//               )
//             ],
//           )),
//     ],
//   ),
// );
