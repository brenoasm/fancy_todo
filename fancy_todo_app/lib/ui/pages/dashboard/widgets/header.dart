import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashRadius: 20,
            icon: Icon(
              Icons.menu,
              size: 28,
            ),
            onPressed: () {},
          ),
          Row(
            children: [
              IconButton(
                splashRadius: 20,
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                onPressed: () {},
              ),
              IconButton(
                splashRadius: 20,
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 28,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
