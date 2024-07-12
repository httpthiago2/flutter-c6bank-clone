import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SaldoSection extends StatelessWidget {
  const SaldoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          SaldoSectionTitle(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                SaldoSectionCard(
                  imagePath: 'assets/images/bandeira_brasil.jpg',
                  title: 'Real',
                  value: 700,
                  actionDescription: 'Extrato',
                ),
                SaldoSectionCard(
                  imagePath: 'assets/images/atomos_logo.jpg',
                  title: 'C6 Átomos',
                  value: 700,
                  actionDescription: 'Cashback',
                ),
                SaldoSectionCard(
                  imagePath: 'assets/images/bandeira_usa.jpg',
                  title: 'Dolar',
                  value: 700,
                  actionDescription: 'Conta estrangeira',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}

class SaldoSectionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double value;
  final String actionDescription;

  const SaldoSectionCard({
    required this.imagePath,
    required this.title,
    required this.value,
    required this.actionDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 180,
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
          color: Color(0xFF242424), borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        imagePath,
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  UtilBrasilFields.obterReal(value),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 1,
            thickness: 0.6,
            color: Colors.grey,
          ),
          TextButton.icon(
            iconAlignment: IconAlignment.end,
            icon: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.lightBlue,
            ),
            label: Text(
              actionDescription,
              style: const TextStyle(color: Colors.lightBlue, fontSize: 12),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class SaldoSectionTitle extends StatelessWidget {
  const SaldoSectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Saldos',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Exibir extratos',
            style: const TextStyle(color: Colors.lightBlue),
          ),
        )
      ],
    );
  }
}
