import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final bool isTheFirst;
  final bool isTheLast;

  TaskItem({
    this.isTheFirst = false,
    this.isTheLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: isTheFirst ? 0 : 4,
        bottom: isTheLast ? 32 : 8,
        left: 8,
        right: 8,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          24,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: Row(
        children: [
          Radio(
            groupValue: null,
            onChanged: (Null? value) {},
            value: null,
            toggleable: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Text(
              'Daily meeting with the team',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
