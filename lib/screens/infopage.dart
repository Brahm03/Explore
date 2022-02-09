import 'package:card_swiper/card_swiper.dart';
import 'package:explore/widgets/activities.dart';
import 'package:explore/widgets/info_appbar.dart';
import 'package:explore/widgets/random_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoSecondPage extends StatefulWidget {
  const InfoSecondPage({Key? key}) : super(key: key);

  @override
  State<InfoSecondPage> createState() => _InfoSecondPageState();
}

class _InfoSecondPageState extends State<InfoSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.310,
                child: Info_bar(),
              ),
              SizedBox(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 380,
                        height: 320,
                        child: Swiper(
                          itemCount: 5,
                          autoplay: true,
                          itemBuilder: (context, index) => Random_pic(
                            i: index,
                          ),
                        ),
                      ),
                    ),
                    _text(
                        text: "Nearby activities",
                        color: Colors.black,
                        size: 25,
                        fontWeight: FontWeight.w300),
                    const SizedBox(width: 500, child: Activities())
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                builder: (context) => Container(
                      height: 190,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/GooglePlay.svg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Google Play",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/Netflix.svg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Netflix",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset('assets/icons/Apple.svg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Apple",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/Tik Tok.svg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Tik Tok",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.center,
                                    primary: Colors.black,
                                    fixedSize: Size(400, 60)),
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/', (route) => false);
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "Change City",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                context: context);
          });
        },
        child: Icon(Icons.menu),
      ),
    );
  }

  _text(
          {required String text,
          Color color = Colors.black,
          FontWeight fontWeight = FontWeight.normal,
          double size = 24.0}) =>
      Text(
        text,
        style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
      );
}
