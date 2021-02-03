import 'package:e_wallet/screens/mobile/confirm_transaction.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BankDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Bank Details"),
        backgroundColor: Color(0xFFF7F6FB),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            pathIcon,
            color: Colors.black,
            height: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                margin:
                    EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ReuseableTextfield(
                  lable: 'Bank',
                  enabled: false,
                  iconPrefix: FontAwesomeIcons.building,
                  iconSuffix: Icons.check_circle,
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ReuseableTextfield(
                  lable: 'Bank Of Canada',
                  enabled: false,
                  iconPrefix: FontAwesomeIcons.building,
                  iconSuffix: Icons.check_circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Details & Amount",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Metropolis'),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Reciever Bank account Number',
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))),
                  )),
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.contact_page_outlined),
                        hintText: 'Enter Reciever Mobile Number',
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))),
                  )),
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Enter purpose of payment',
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))),
                  )),
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'USD 100.0',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w800),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))),
                  )),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                onTap: () {
                  RouteApp.instance
                      .pushPage(context, ConfirmTransactionScreen());
                },
                child: redButton(context, "Next"),
              )
            ],
          )
        ],
      ),
    );
  }
}
