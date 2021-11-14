import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    Key? key,
    required this.tableNumber,
    this.onTableSelected,
  }) : super(key: key);

  final int tableNumber;
  final Function()? onTableSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTableSelected,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/mesa_v.png'),
          ),
          color: Colors.blueAccent,
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            '$tableNumber',
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
