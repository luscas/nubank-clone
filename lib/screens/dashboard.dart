import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuItem {
  MenuItem({
    @required this.icon,
    @required this.name,
  });

  final IconData icon;
  final String name;
}

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size resolution = MediaQuery.of(context).size;

    final List<MenuItem> menuItems = [
      MenuItem(name: 'Resumo da fatura', icon: Icons.bar_chart_rounded),
      MenuItem(name: 'Limite disponível', icon: Icons.request_page_outlined),
      MenuItem(name: 'Pagar fatura', icon: Icons.crop_free_outlined),
      MenuItem(name: 'Cartão virtual', icon: Icons.credit_card_outlined),
      MenuItem(name: 'Antecipar parcelas', icon: Icons.restore_outlined),
      MenuItem(name: 'Faça um empréstimo', icon: Icons.attach_money_outlined),
      MenuItem(name: 'Suporte ao cliente', icon: Icons.support_agent_rounded),
    ];

    return Scaffold(
      backgroundColor: Color(0xFF8a05be),
      body: Container(
        width: resolution.width,
        height: resolution.height,
        child: Stack(
          children: <Widget>[
            SafeArea(
              top: true,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 40),
                      child: SvgPicture.asset(
                        'assets/logo.svg',
                        width: 40,
                        color: Colors.white
                      ),
                    ),

                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('home'),
                      child: Container(
                        width: resolution.width - 50,
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: Center(child: Text('DADOS DO CARTÃO', style: TextStyle(fontSize: 26, color: Colors.white54)))
                      ),
                    ),

                    Column(
                      children: menuItems.map((MenuItem item) {
                        var index = menuItems.indexOf(item);

                        return Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.black.withOpacity(0.05),
                                highlightColor: Colors.black.withOpacity(0.05),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 20.0,
                                    left: 25.0,
                                    right: 25.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(item.icon, color: Colors.white54),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Text(item.name, style: TextStyle(color: Colors.white, fontSize: 15.0)),
                                            )
                                          ),
                                          Icon(Icons.chevron_right_rounded, size: 24.0, color: Colors.white),
                                        ],
                                      ),

                                      SizedBox(height: 20.0),
                                      index != menuItems.length - 1 ? Divider(height: 1.0, thickness: 1.0, color: Colors.white24) : SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),

                    SizedBox(height: 100.0),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              child: Container(
                color: Color(0xFF8a05be),
                width: resolution.width,
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 0.0,
                      highlightElevation: 0.0,
                      fillColor: Colors.black.withOpacity(0.20),
                      splashColor: Colors.white.withOpacity(0.1),
                      highlightColor: Colors.black.withOpacity(0.25),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card_outlined, color: Colors.white),
                          Padding(padding: EdgeInsets.only(left: 7), child: Text('Cartão', style: TextStyle(color: Colors.white, fontSize: 15)))
                        ],
                      )
                    ),
                    Icon(Icons.fingerprint_rounded, color: Colors.white),
                    Icon(Icons.crop_free_outlined, color: Colors.white),
                    Icon(Icons.support_agent_rounded, color: Colors.white),
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
