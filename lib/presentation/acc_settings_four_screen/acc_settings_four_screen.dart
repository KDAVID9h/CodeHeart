import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'models/iphone_13_pro_max_two_model.dart';
import 'provider/iphone_13_pro_max_two_provider.dart';

class Iphone13ProMaxTwoScreen extends StatefulWidget {
  const Iphone13ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxTwoScreenState createState() => Iphone13ProMaxTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxTwoProvider(),
      child: Iphone13ProMaxTwoScreen(),
    );
  }
}

class Iphone13ProMaxTwoScreenState extends State<Iphone13ProMaxTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink50,
      body: SizedBox(
        height: SizeUtils.height,
        width: double.maxFinite,
      ),
    );
  }
}
