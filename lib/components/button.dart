import 'package:flutter/material.dart';

class BtnOptions extends StatelessWidget {
  // final Function onTap;
  final VoidCallback onTap;
  final String label;
  final Color color;

  const BtnOptions(
      {Key? key, required this.onTap, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {},
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        height: 40,
        width: 170,
        decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
