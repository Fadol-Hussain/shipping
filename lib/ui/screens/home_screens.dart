import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shipping/widget/widget.dart';
import '../../widget/buttom_navigation.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Track Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          centerTitle: false,
          floating: true,
          snap: false,
          titleSpacing: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/my.jpg"))),
              ),
            )
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 350,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          flexibleSpace: FlexibleSpaceBar(
              background: Column(
            children: [
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter parcel number or scan QR code',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 49,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor),
                              child: const TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: EdgeInsets.all(14),
                              width: 50,
                              height: 49,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Theme.of(context).backgroundColor,
                              ),
                              child:
                                  SvgPicture.asset('assets/images/qrcode.svg'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Track Parcel',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textButtonTheme.style,
                        ),
                      )
                    ]),
              )),
            ],
          )),
        ),
        const SliverPadding(padding: const EdgeInsets.only(top: 32)),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My Parcels',
                    style: Theme.of(context).textTheme.headline3,
                  )
                ]),
          )
        ])),
        SliverList(delegate: SliverChildBuilderDelegate((_, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Container(
              height: 174,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).backgroundColor,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 0))
                  ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "09634053060116089557",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Container(
                      height: 31,
                      width: 78,
                      child: SvgPicture.asset('assets/images/amazon.svg'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'In Transit',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Last Update: 3 Hours ago',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.5),
                        child: LinearProgressIndicator(
                          value: 0.8,
                          color: Theme.of(context).appBarTheme.backgroundColor,
                          backgroundColor: Color(0xFFF8F8F8),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Details',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SvgPicture.asset('assets/images/details.svg')
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    )
                  ]),
                )
              ]),
            ),
          );
        }))
      ]),
      bottomNavigationBar: const ButtomNavigation(),
    );
  }
}
