import 'package:c6bank/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({super.key});

  final List<IconButton> appBarIcons = <IconButton>[
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.help_outline,
        color: Colors.grey,
        size: 20,
      ),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.messenger_outline,
        color: Colors.grey,
        size: 20,
      ),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.remove_red_eye_outlined,
        color: Colors.grey,
        size: 20,
      ),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.person_outline,
        color: Colors.grey,
        size: 20,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      color: ColorConstants.PRIMARY,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Boa tarde, ',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                'Thiago ',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: appBarIcons,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
