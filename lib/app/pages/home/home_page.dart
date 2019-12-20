import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(138, 5, 190, 1.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/logo.svg', width: 40, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Lucas',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                    )
                  ],
                )
              ),

              SizedBox(height: 10),
              Center(
                child: Icon(FontAwesomeIcons.angleDown, size: 12, color: Colors.white),
              ),
            ],
          ),

          FractionallySizedBox(
            widthFactor: 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      constraints: BoxConstraints(
                        maxHeight: 300
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)
                      ),
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
                                        color: Colors.black54
                                      )
                                    )
                                  ],
                                ),

                                Icon(LineIcons.eye_slash, color: Colors.black38)
                              ],
                            ),
                          ),

                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                bottom: 40.0
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Saldo disponível',
                                    style: TextStyle(
                                      color: Colors.black54
                                    ),
                                  ),
                                  Text(
                                    'R\$ 378.281,01',
                                    style: TextStyle(
                                      fontSize: 26
                                    ),
                                  )
                                ]
                              ),
                            )
                          ),

                          Container(
                            color: Colors.black.withOpacity(0.050),
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  child: Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/transfer.svg',
                                        width: 20,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          'Transferência de R\$ 350.281,00 recebida de Cínthia Raquel Smitdth',
                                          overflow: TextOverflow.clip,
                                          softWrap: true,
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black54
                                          ),
                                        ),
                                      )
                                    ]
                                  ),
                                ),

                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black38,
                                )
                              ],
                            )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.40),
                            borderRadius: BorderRadius.circular(100.0)
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0)
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.40),
                            borderRadius: BorderRadius.circular(100.0)
                          ),
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(height: 200),

                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white
                    )
                  ],
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}
