import 'package:c6bank/core/constants/color_constants.dart';
import 'package:c6bank/features/home/home_app_bar.dart';
import 'package:c6bank/features/home/saldo_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      backgroundColor: ColorConstants.PRIMARY,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SaldoSection(),

          ],
        ),
      ),
    );
  }
}
