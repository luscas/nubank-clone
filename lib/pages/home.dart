import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nubank/components/cards/balance.dart';
import 'package:nubank/components/cards/creditCard.dart';
import 'package:nubank/components/cards/rewards.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class BottomNavItem {
  BottomNavItem({
    @required this.icon,
    @required this.title
  });

  final IconData icon;
  final String title;
}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController = new PageController();
  int currentPage = 0;

  List<BottomNavItem> bottomNavItems = [
    BottomNavItem(
      title: 'Dividir valor',
      icon: Icons.wallet_travel_outlined,
    ),
    BottomNavItem(
      title: 'Doação',
      icon: Icons.account_balance_wallet_outlined,
    ),
    BottomNavItem(
      title: 'Recarga de celular',
      icon: Icons.phone_android_outlined,
    ),
    BottomNavItem(
      title: 'Me ajuda',
      icon: Icons.help_outline_outlined,
    ),
    BottomNavItem(
      title: 'Cartão virtual',
      icon: Icons.credit_card_outlined,
    ),
    BottomNavItem(
      title: 'Indicar amigos',
      icon: Icons.group_add_outlined,
    ),
    BottomNavItem(
      title: 'Cobrar',
      icon: Icons.qr_code_outlined,
    ),
    BottomNavItem(
      title: 'Depositar',
      icon: Icons.swap_horiz_outlined,
    ),
    BottomNavItem(
      title: 'Transferir',
      icon: Icons.swap_vert_outlined,
    ),
    BottomNavItem(
      title: 'Ajustar limite',
      icon: Icons.timeline_outlined,
    )
  ];

  @override
  Widget build(BuildContext context) {
    final Size resolution = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF83259f),
      body: Container(
        width: resolution.width,
        height: resolution.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/logo.svg',
                          width: 40,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Lucas',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white
                        ),
                      )
                    ],
                  )
                ),
                SizedBox(height: 10),
                Center(
                  child: Icon(
                    Icons.expand_more_outlined,
                    size: 15,
                    color: Colors.white
                  ),
                ),
              ]
            ),// Header
            Column(
              children: [
                Container(
                  width: resolution.width,
                  height: 300,
                  child: PageView(
                    controller: _pageController,
                    physics: new BouncingScrollPhysics(),
                    onPageChanged: (page) => setState(() {
                      currentPage = page;
                    }),
                    children: [
                      Container(
                        width: resolution.width,
                        margin: EdgeInsets.only(
                          left: 30.0,
                          right: 30.0
                        ),
                        child: creditCard()
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          left: 30.0,
                          right: 30.0
                        ),
                        child: balance()
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          left: 30.0,
                          right: 30.0
                        ),
                        child: rewards()
                      ),
                    ]
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
                              color: this.currentPage == index
                                  ? Colors.white.withOpacity(0.90)
                                  : Colors.white.withOpacity(0.40),
                              borderRadius: BorderRadius.circular(100.0)))),
                )
              ],
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 30),
              child: ListView.separated(
                physics: new BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: bottomNavItems.length,
                itemBuilder: (context, index) => SizedBox(
                  width: 100,
                  height: 100,
                  child: new Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: new Material(
                      color: Colors.transparent,
                      child: new InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(4.0),
                        child: new Container(
                          width: 100.0,
                          height: 100.0,
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                bottomNavItems[index].icon,
                                size: 24.0,
                                color: Colors.white
                              ),
                              Text(
                                bottomNavItems[index].title,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                                )
                              ),
                            ],
                          ),
                        ),
                      )
                    )
                  )
                ),
                separatorBuilder: (_, a) => SizedBox(width: 15),
              ),
            )
          ]
        ),
      ),
    );
  }
}
