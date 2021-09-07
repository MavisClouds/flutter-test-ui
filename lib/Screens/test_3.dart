import 'package:Flutter_UI_Test/Models/model_finansial.dart';
import 'package:Flutter_UI_Test/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class Finansial extends StatefulWidget {
  Finansial({Key key}) : super(key: key);

  @override
  _FinansialState createState() => _FinansialState();
}

class _FinansialState extends State<Finansial> {
  List<Rebate> finansialRebate = [
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "14 Juli 2021"),
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "15 Juli 2021"),
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "15 Juli 2021"),
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "17 Juli 2021"),
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "17 Juli 2021"),
    Rebate(idTransaksi: "#EC1201211", rebate: 150000, tanggal: "18 Juli 2021")
  ];

  List<RiwayatRebate> riwayatRebate = [
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "14 Juli 2021"),
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "15 Juli 2021"),
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "15 Juli 2021"),
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "17 Juli 2021"),
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "17 Juli 2021"),
    RiwayatRebate(
        idRebate: "#EC1201211", rebate: 150000, tanggal: "18 Juli 2021")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        appBarTitle: "FINANSIAL",
        leadingImage: "images/Test_3_Image/backButton.png",
        actionWidgets: [
          Container(
            height: 24.h,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("images/Test_3_Image/assessment.png"),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/Test_3_Image/active.png"),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 18.h,
                    child: Image.asset("images/Test_3_Image/badge.png")),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  financialCard("TOTAL BONUS", "Rp 5.000.000,00"),
                  SizedBox(
                    height: 15,
                  ),
                  financialCard("PENDING BONUS", "Rp 50.000,00"),
                  SizedBox(
                    height: 15,
                  ),
                  rebateList(),
                  SizedBox(
                    height: 15,
                  ),
                  riwayatRebateWidget(),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white60,
              )),
        ],
      ),
      floatingActionButton: Container(
        height: 70.h,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 33),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [HexColor("53B2FC"), HexColor("127CCE")])),
        child: Text(
          "Complain",
          style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: responsiveFont(15),
              fontWeight: FontWeight.w700),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_3_Image/home_alt_fill.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_3_Image/document.png"))),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset("images/Test_3_Image/restore.png"))),
        ],
      ),
    );
  }

  Widget financialCard(String title, String amount) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: HexColor("FF9A00"),
                  fontFamily: "Poppins",
                  fontSize: responsiveFont(13),
                  fontWeight: FontWeight.w700),
            ),
            Text(amount,
                style: TextStyle(
                    color: HexColor("6D6D6D"),
                    fontFamily: "Poppins",
                    fontSize: responsiveFont(22),
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }

  Widget rebateList() {
    return Container(
      padding: EdgeInsets.fromLTRB(17, 15, 17, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daftar Rebate",
                style: TextStyle(
                    color: HexColor("94AFB6"),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: responsiveFont(14)),
              ),
              Row(
                children: [
                  Container(
                      child: textButton("Semua",
                          padVert: 5,
                          padHoriz: 20,
                          radius: 6,
                          colorButton: "FF9A00")),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    child: textButton("Filter",
                        padVert: 5,
                        padHoriz: 20,
                        radius: 6,
                        colorButton: "53B2FC",
                        icon: Container(
                          height: 18.h,
                          child: Image.asset("images/Test_3_Image/options.png"),
                        )),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 1,
            width: double.infinity,
            color: HexColor("BBBBBB"),
          ),
          Row(
            children: [
              finansRebateList(
                "ID Transaksi",
              ),
              finansRebateList(
                "Rebate",
              ),
              finansRebateList(
                "Tanggal",
              )
            ],
          )
        ],
      ),
    );
  }

  Widget finansRebateList(
    String title,
  ) {
    return Expanded(
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemCount: finansialRebate.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 18.h,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: HexColor("94AFB6"),
                    fontWeight: FontWeight.w500,
                    fontSize: responsiveFont(12)),
              ),
              SizedBox(
                height: 5,
              ),
              title == "ID Transaksi"
                  ? Text(
                      finansialRebate[index].idTransaksi,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: HexColor("3D6670"),
                          fontWeight: FontWeight.w500,
                          fontSize: responsiveFont(12)),
                    )
                  : title == "Rebate"
                      ? Text(
                          NumberFormat.currency(
                                  locale: "IDR",
                                  symbol: "Rp ",
                                  decimalDigits: 0)
                              .format(finansialRebate[index].rebate),
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: HexColor("41BE06"),
                              fontWeight: FontWeight.w600,
                              fontSize: responsiveFont(12)),
                        )
                      : Text(
                          finansialRebate[index].tanggal,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: HexColor("41BE06"),
                              fontWeight: FontWeight.w600,
                              fontSize: responsiveFont(12)),
                        )
            ],
          );
        },
      ),
    );
  }

  Widget riwayatRebateWidget() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            child: Text(
              "Riwayat Rebate",
              style: TextStyle(
                  color: HexColor("FF9A00"),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: responsiveFont(14)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount: riwayatRebate.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                    height: 40.h,
                    width: 40.w,
                    child: Image.asset("images/Test_3_Image/receipt.png")),
                title: Text(
                  riwayatRebate[index].idRebate,
                  style: TextStyle(
                      color: HexColor("212529"),
                      fontFamily: "Poppins",
                      fontSize: responsiveFont(13),
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  riwayatRebate[index].tanggal,
                  style: TextStyle(
                      color: HexColor("6C757D"),
                      fontFamily: "Poppins",
                      fontSize: responsiveFont(10),
                      fontWeight: FontWeight.w400),
                ),
                trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                        color: HexColor("FF9A00"),
                        borderRadius: BorderRadius.circular(17)),
                    child: Text(
                      NumberFormat.currency(
                              locale: "IDR", symbol: "Rp ", decimalDigits: 0)
                          .format(riwayatRebate[index].rebate),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: responsiveFont(11),
                          fontWeight: FontWeight.w400),
                    )),
              );
            },
          )
        ],
      ),
    );
  }
}
