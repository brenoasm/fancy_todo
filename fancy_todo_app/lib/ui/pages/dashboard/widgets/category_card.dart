import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final bool isTheFirst;
  final bool isTheLast;

  CategoryCard({
    this.isTheFirst = false,
    this.isTheLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: isTheFirst ? 0 : 8,
        right: isTheLast ? 0 : 8,
        bottom: 10,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '40 tasks',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  'Business',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).accentColor,
            ),
          ),
          // TODO: Progress indicator
        ],
      ),
    );
  }
}
