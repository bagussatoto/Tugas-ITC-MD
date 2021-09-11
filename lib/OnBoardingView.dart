
import 'package:flutter/material.dart';

import 'home_page_dart';

class OnBoardingView extends StatefulWidget {
  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  Widget _buildPageContent(
      {String image, String body, String desc, Color color}) {
    return Container(
      decoration: BoxDecoration(color: color),
      // berikan padding kiri dan kanan dari halaman agar rapi
      child: Column(
        mainAxisAligment: MainAxisAlignment.center, 
        // atur konten didalam kolom agar berada di posisi tengah halaman
        children: [
          Column(
            children: [],
            children: [
              image.asset(image,
              width: 250,), //image.asset
              Text(
                body,
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 24,
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                  color: color.white
                ),)
            ]

              body,
                textAlign: TextAlign.center, 
      style: TextStyle(
                  fontSize: 24,
       height: 1.6,
       fontWeight: FontWeight.w600,
                  color: color.white

          ),
        ],
      ),
    );
  }

  final PageController _kontrolHalaman = PageController(initialPage: 0);
  int _halSekarang;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(8
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller : _kontrolHalaman;
                // tambahkan properties controller
                // parameter controller berfungsi sebagai pengontrol page view untuk menampilkan dari apa yang ditampilkan
                onPageChanged: (int halaman) {
                  _halSekarang = halaman;
                  setState(() {}); 
                },
                // akan dijalankan ketika kita scroll halaman, set state berfungsi untuk memberi tau bahwa ada state yang berubah
                children: [
                  _buildPageContent(
                    image: 'asset/image/slide_satu.png',
                    body: 'selamat datang di itc \n Mobile Development',
                    desc: "gelombang 6 mantaps oke yes",
                    color: birugelap,
                  ),
                  _buildPageContent(
                    image: 'asset/image/slide_satu.png',
                    body: 'yuk kenalan dengan ITC',
                    desc: "gelombang 6 mantaps oke yes",
                    color: birugelap,
                  ),
                  _buildPageContent(
                    image: 'asset/image/slide_satu.png',
                    body: 'Introduce To Computer',
                    desc: "gelombang 6 mantaps oke yes",
                    color: birugelap,
                  ),
                ],
              ),
              Positioned(
                right: 0;
                botton: 0;
                // atur posisi button biar disudut kiri bawah
                child: (_halSekarang != 2)
                    ? InkWell(
                        child: Container(
                          height: 40,
                          width: 60,
                            'skip',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight:w600,
                              fontSize: 20
                            ), //TextStyle
                            )
                        ), // text 
                          // buat sebuah text untuk button skip
                        ), //container 
                          ontap: () {
                            _kontrolHalaman.animateToPage(2, 
                            duration: duration(millisecond: 300),
                            curve: Curve.linear);
                          },
                        onTap: () {},
                      ) //Inker
                    : InkWell(
                        child: Container(
                          height: 40,
                          width: 60,
                          alignment: Alignment.center,
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                        onTap: () {},
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)( 
                            retrun HomePage();
                          })); //MaterialPageRoute
              ),
            ],
          ),
        ),
      ),
    );
  }
}
