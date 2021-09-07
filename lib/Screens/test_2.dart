import 'package:Flutter_UI_Test/Models/model_fotoVendor.dart';
import 'package:Flutter_UI_Test/utility.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortoVendor extends StatefulWidget {
  PortoVendor({Key key}) : super(key: key);

  @override
  _PortoVendorState createState() => _PortoVendorState();
}

class _PortoVendorState extends State<PortoVendor> {
  List<FotoVendor> fotoVendor = [
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower1.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower2.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower3.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower1.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower2.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower3.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower1.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower2.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower3.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower1.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower2.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
    FotoVendor(
        imageVendor: "images/Test_2_Image/flower3.png",
        rating: 5.0,
        namaCustomer: "Nama Customer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        leadingImage: "images/Test_2_Image/backButton.png",
        appBarTitle: "PORTOFOLIO VENDOR",
        actionWidgets: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("images/Test_2_Image/notification.png"),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileVendor(),
              SizedBox(
                height: 20,
              ),
              gridFotoVendor()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset(
                      "images/Test_2_Image/chrome_reader_mode.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_2_Image/swap_horiz.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_2_Image/move_to_inbox.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_2_Image/assessment.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_2_Image/racing-helmet.png")))
        ],
      ),
    );
  }

  Widget profileVendor() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("C7C7CC"), width: 1.5),
                      shape: BoxShape.circle),
                  child: Image.asset("images/Test_2_Image/photoVendor.png")),
            ),
            Expanded(child: countProfile("5.0", "Rating")),
            Expanded(child: countProfile("100", "Review")),
            Expanded(child: countProfile("162", "Pesanan")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dina Florist",
              style: profileTextStyle(size: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Toko Bunga terbaiks se Indonesia Raya Harga Murah Produk Berkualitas",
              style: profileTextStyle(size: 12, weight: FontWeight.w400),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: HexColor("3C3C43").withAlpha(45),
                ),
                borderRadius: BorderRadius.circular(6)),
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "PORTOFOLIO",
              textAlign: TextAlign.center,
              style: profileTextStyle(
                size: 13,
                weight: FontWeight.w600,
              ),
            )),
      ],
    );
  }

  Widget countProfile(String count, String titleCount) {
    return Column(
      children: [
        Text(count, style: profileTextStyle()),
        Text(
          titleCount,
          style: profileTextStyle(size: 14, weight: FontWeight.w400),
        )
      ],
    );
  }

  TextStyle profileTextStyle(
      {String family = "Poppins",
      double size = 16,
      FontWeight weight = FontWeight.w600}) {
    return TextStyle(
        fontFamily: "Poppins",
        fontSize: responsiveFont(size),
        fontWeight: weight);
  }

  Widget gridFotoVendor() {
    return GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: fotoVendor.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 3, crossAxisSpacing: 3, crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            child: Stack(children: [
              Image.asset(fotoVendor[index].imageVendor),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(right: 5, top: 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      gradient: LinearGradient(
                          colors: [HexColor("202237"), HexColor("595FA0")])),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 12.w,
                          height: 12.h,
                          child: Image.asset("images/Test_2_Image/Star.png")),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        fotoVendor[index].rating.toString(),
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: responsiveFont(10),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                  color: Colors.black45,
                  child: Text(fotoVendor[index].namaCustomer,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontSize: responsiveFont(10),
                          fontWeight: FontWeight.w600)),
                ),
              )
            ]),
          );
        });
  }
}
