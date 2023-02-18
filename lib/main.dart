import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentpagetest/constants.dart';
import 'package:paymentpagetest/dotted_border.dart';
import 'package:paymentpagetest/input_widget.dart';

import 'responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment Page',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        primaryColor: bgColor,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        useMaterial3: true,
      ),
      home: const PaymentPage(),
    );
  }
}

enum SelectedPaymentMethod { paypal, mastercard }

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor.withOpacity(0),
        elevation: 10,
        leading: Image.asset(iconimage),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Need Help?",
              style: AppColor.kFontNavStyle,
            ),
          )
        ],
      ),
      body: Responsive(
        mobile: ListView(
          shrinkWrap: true,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: TopTextWidget(),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              child: DottedBorder(
                color: AppColor.primaryWhite.withOpacity(0.4),
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.only(left: 30, top: 10, bottom : 10),
                child: Column(
                  children: [
                    BillingAddessWidget(),
                    const Padding(
                      padding:  EdgeInsets.all(18.0),
                      child:  PaymentMethodWidget(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: const Color(0xff293039),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const PaymentSummeryWidget(),
              ),
            )
          ],
        ),
        tablet: ListView(
          shrinkWrap: true,
          children: [
            const TopTextWidget(),
            Container(
              padding: const EdgeInsets.all(50),
              child: const BillingPaymentInfo(),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: const Color(0xff293039),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const PaymentSummeryWidget(),
              ),
            )
          ],
        ),
        desktop: ListView(
          shrinkWrap: true,
          children: [
            const TopTextWidget(),
            SizedBox(
              width: Responsive.size(context).width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(50),
                    // width: Responsive.size(context).width,
                    child: const BillingPaymentInfo(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(50),
                    width: Responsive.size(context).width * 0.3,
                    decoration: BoxDecoration(
                      color: const Color(0xff293039),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const PaymentSummeryWidget(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
              child: Text(
            "Let's finish powering you up!",
            style: AppColor.kFontNavStyle.copyWith(fontSize: 30),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
              child: Text(
            "Professional plan is right for you.",
            style: AppColor.kAddFundSubFontStyle,
          )),
        ),
      ],
    );
  }
}

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  bool checkBoxVal = true;

  SelectedPaymentMethod paymentMethod = SelectedPaymentMethod.paypal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Payment Method",
          style: AppColor.kFontNavStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        PaymentMethodTile(
          checkBoxVal: paymentMethod == SelectedPaymentMethod.paypal,
          groupVal: paymentMethod == SelectedPaymentMethod.paypal,
          onChanged: (bool? val) {
            setState(() {
              paymentMethod = SelectedPaymentMethod.paypal;
            });
          },
          text: 'Paypal',
          isPaypal: true,
        ),
        const SizedBox(
          height: 20,
        ),
        PaymentMethodTile(
          isPaypal: false,
          checkBoxVal: false,
          groupVal: false,
          onChanged: (bool? val) {
            setState(() {
              paymentMethod = SelectedPaymentMethod.mastercard;
            });
          },
          text: 'Credit / Debit Card',
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}

class BillingPaymentInfo extends StatelessWidget {
  const BillingPaymentInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColor.primaryWhite.withOpacity(0.4),
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: BillingAddessWidget(),
            ),
            const PaymentMethodWidget(),
          ],
        ),
      ),
    );
  }
}

class PaymentSummeryWidget extends StatelessWidget {
  const PaymentSummeryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Summary", style: AppColor.kFontNavStyle),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subscription",
              style: AppColor.kAddFundSubFontStyle,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xff4B3639),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text("PREMIUM",
                    style: AppColor.kFontNavStyle
                        .copyWith(color: const Color(0xffFFAC82))),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Billed Monthly",
              style: AppColor.kAddFundSubFontStyle,
            ),
            Switch.adaptive(
              value: true,
              onChanged: (v) {},
              activeColor: Colors.blue,
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "",
                style: AppColor.kAddFundSubFontStyle,
              ),
              Row(
                children: [
                  Text(
                    "\ufe69",
                    style: AppColor.kAddFundSubFontStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    "9.99",
                    style: AppColor.kFontBalanceFigStyle,
                  ),
                  Text(
                    "/m",
                    style: AppColor.kFontAccountFigStyle.copyWith(
                        color: AppColor.primaryWhite.withOpacity(0.4)),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomDivider(
          color: AppColor.primaryWhite.withOpacity(0.4),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Billed",
                style: AppColor.kFontNavStyle,
              ),
              Text(
                "\$9.99*",
                style: AppColor.kFontNavStyle,
              ),
            ],
          ),
        ),
        CustomDivider(
          color: AppColor.primaryWhite.withOpacity(0.4),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "* Plus applicable taxes",
                style: AppColor.kAddFundSubFontStyle,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: Responsive.size(context).width,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color(0xff1951B6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Upgrade My Plan",
                style: AppColor.kFontNavStyle,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.shield_fill,
              color: Color(0xff1951B6),
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              "Secure credit card payment",
              style: AppColor.kAddFundSubFontStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "This is a secure 128-bit SSL encrypted payment",
                style: AppColor.kAddFundSubFontStyle.copyWith(
                    fontSize: 9, color: AppColor.primaryWhite.withOpacity(0.4)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    super.key,
    required this.checkBoxVal,
    required this.text,
    required this.groupVal,
    required this.onChanged,
    required this.isPaypal,
  });

  final bool checkBoxVal;
  final String text;
  final bool groupVal;
  final bool isPaypal;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primaryColor,
        border: Border.all(
          width: 1,
          color: AppColor.primaryWhite.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Radio(
          value: checkBoxVal,
          onChanged: onChanged,
          groupValue: groupVal,
        ),
        title: Text(
          text,
          style: AppColor.kActivityFontStyle,
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isPaypal) Image.asset(paypalicon),
              if (!isPaypal) Image.asset(mastercardicon),
              const SizedBox(
                width: 5,
              ),
              if (!isPaypal) Image.asset(visaicon),
            ],
          ),
        ),
      ),
    );
  }
}

class BillingAddessWidget extends StatelessWidget {
  BillingAddessWidget({
    super.key,
  });

  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Billing Address",
          style: AppColor.kFontNavStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        InputFormContainer(
          validator: (val) {},
          controller: _name,
          inputHintText: 'Person name',
          isPassword: false,
        ),
        const SizedBox(
          height: 20,
        ),
        InputFormContainer(
          validator: (val) {},
          controller: _phone,
          inputHintText: 'Phone number',
          isPassword: false,
        ),
        const SizedBox(
          height: 20,
        ),
        InputFormContainer(
          validator: (val) {},
          controller: _email,
          inputHintText: 'Email',
          isPassword: false,
        ),
        const SizedBox(
          height: 20,
        ),
        InputFormContainer(
          validator: (val) {},
          controller: _address,
          inputHintText: 'Address',
          isPassword: false,
        ),
      ],
    );
  }
}
