import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

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
      backgroundColor: Color(0xFF83259f),
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: [
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
              ]
            ),
          ), // Header

          Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 275
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
                                    'assets/credit-card.svg',
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
                                  SizedBox(height: 10),
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
                                        'assets/work.svg',
                                        width: 20,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          'Transferência de R\$ 350.281,00 recebida de XPI.COM.BR/BILL XP Investimentos',
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
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 7,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    separatorBuilder: (context, _) => SizedBox(width: 7),
                    itemBuilder: (context, index) => Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: index == 1 ? Colors.white.withOpacity(0.90) : Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(100.0)
                      )
                    )
                  ),
                )
              ],
            ),
          ),

          Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 30),
            child: ListView.separated(
              physics: new BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              padding: EdgeInsets.symmetric(
                horizontal: 20
              ),
              itemBuilder: (context, index) => SizedBox(
                width: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0)
                  ),
                  color: Colors.white.withOpacity(0.15),
                  highlightColor: Colors.white.withOpacity(0.050),
                  splashColor: Colors.white.withOpacity(0.050),
                  child: Center(child: Text('Item', style: TextStyle(color: Colors.white)))
                ),
              ),
              separatorBuilder: (_, a) => SizedBox(width: 15),
            ),
          )
        ]
      ),
    );
  }
}