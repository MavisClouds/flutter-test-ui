import 'package:Flutter_UI_Test/Models/model_pesanan.dart';
import 'package:Flutter_UI_Test/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class LacakPesanan extends StatefulWidget {
  LacakPesanan({Key key}) : super(key: key);

  @override
  _LacakPesananState createState() => _LacakPesananState();
}

class _LacakPesananState extends State<LacakPesanan> {
  List<Pesanan> pesanan = [
    Pesanan(
        title: "Strawberry",
        berat: 100,
        harga: 75000,
        jumlahItem: 2,
        catatanItem:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo ."),
    Pesanan(
        title: "Nanas",
        berat: 100,
        harga: 75000,
        jumlahItem: 2,
        catatanItem:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        appBarTitle: "LACAK PESANAN",
        leadingImage: "images/Test_1_Image/backButton.png",
        actionWidgets: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("images/Test_1_Image/shoppingBag.png"),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              child: Image.asset(
                "images/Test_1_Image/maps.png",
                fit: BoxFit.fill,
              )),
          Container(
              width: 510,
              height: 510,
              child: Image.asset("images/Test_1_Image/tracking.png")),
          DraggableScrollableSheet(
            minChildSize: 0.18,
            initialChildSize: 0.18,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        Center(
                            child: Container(
                                width: 100.w,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Image.asset(
                                    "images/Test_1_Image/rectangle.png"))),
                        driverProfile(),
                        SizedBox(height: 25),
                        statusBarang(),
                        SizedBox(height: 20),
                        pesananListCard(),
                        SizedBox(
                          height: 38,
                        ),
                        catatanPesanan(),
                        SizedBox(
                          height: 28,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_1_Image/assignment.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_1_Image/swap_horiz.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_1_Image/home_alt_fill.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset(
                      "images/Test_1_Image/notifications_none.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_1_Image/person.png")))
        ],
      ),
    );
  }

  Widget driverProfile() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "images/Test_1_Image/Frame.png",
          ))),
          child: Image.asset(
            "images/Test_1_Image/photo.png",
          ),
        )),
        Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "David Morrel",
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: responsiveFont(17),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "B 1201 FA",
                    style: TextStyle(
                        color: HexColor("92D274"),
                        fontSize: responsiveFont(17),
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )),
        Expanded(
          child: Container(
            height: 100.h,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/Test_1_Image/Phone.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget statusBarang() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset("images/Test_1_Image/clock.png")),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            color: HexColor("47623F"),
                            fontSize: responsiveFont(14),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Sedang mengambil barang",
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            color: HexColor("061737"),
                            fontSize: responsiveFont(15),
                            fontWeight: FontWeight.w600),
                      )
                    ]),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 40.h,
                    child: Image.asset("images/Test_1_Image/Dots.png")),
              ),
              Expanded(flex: 7, child: Container())
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset("images/Test_1_Image/pin.png")),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alamat Anda",
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            color: HexColor("47623F"),
                            fontSize: responsiveFont(14),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Taman Indah Dago No. 612",
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            color: HexColor("061737"),
                            fontSize: responsiveFont(15),
                            fontWeight: FontWeight.w600),
                      )
                    ]),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget pesananListCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pesanan",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: responsiveFont(14)),
        ),
        SizedBox(
          height: 7,
        ),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemCount: 2,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 30,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 65.w,
                      height: 50.h,
                      child: Image.asset("images/Test_1_Image/strawberry.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pesanan[index].title,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: responsiveFont(15),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                pesanan[index].berat.toString() + "Gram",
                                style: TextStyle(
                                    color: HexColor("979696"),
                                    fontFamily: "Inter",
                                    fontSize: responsiveFont(11),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: "IDR",
                                        symbol: "Rp ",
                                        decimalDigits: 0)
                                    .format(pesanan[index].harga),
                                style: TextStyle(
                                    color: HexColor("47623F"),
                                    fontFamily: "Inter",
                                    fontSize: responsiveFont(13),
                                    fontWeight: FontWeight.w600),
                              )
                            ])),
                    Expanded(
                      child: Text(
                        pesanan[index].jumlahItem.toString() + " Item",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: responsiveFont(12),
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Catatan Item",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: responsiveFont(11)),
                    ),
                    Text(
                      pesanan[index].catatanItem,
                      style: TextStyle(
                          color: HexColor("8A7F7F"),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: responsiveFont(10)),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ],
    );
  }

  Widget catatanPesanan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catatan Pesanan",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: responsiveFont(14)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .",
          style: TextStyle(
              color: HexColor("8A7F7F"),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: responsiveFont(11)),
        )
      ],
    );
  }
}
