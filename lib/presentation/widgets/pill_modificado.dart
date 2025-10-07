import 'package:flutter/material.dart';

class PillModificado extends StatelessWidget {
  const PillModificado({
    super.key,
    required this.screenWidth,
    required this.color,
    required this.height,
    required this.width,
    required this.alignment,
    required this.leftPillPadding,
    required this.rightPillPadding,
    required this.pillContent,
    this.imagen,
    this.topImagen = 0,
    this.rightImagen,
    this.leftImagen 
  });

  final double screenWidth;
  final Color color;
  final double height;
  final double width;
  final MainAxisAlignment alignment;
  final double leftPillPadding;
  final double rightPillPadding;
  final Widget pillContent;
  final Widget? imagen;
  final double? topImagen;
  final double? rightImagen;
  final double? leftImagen;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        width: screenWidth - 24,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: alignment,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: height,
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.only(left: leftPillPadding, right: rightPillPadding),
                    child: pillContent,
                  ),
                ),
              ],
            ),
            imagen != null
                ? Positioned(top: topImagen, right: rightImagen, left: leftImagen, height: 200, child: imagen!)
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}