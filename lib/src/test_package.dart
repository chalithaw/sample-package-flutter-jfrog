import 'package:flutter/material.dart';

class TestPackage extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? titleColor;
  final String subTitle;
  final Color? subTitleColor;
  final EdgeInsetsGeometry? padding;

  const TestPackage({
    super.key,
    this.width,
    this.height,
    this.color1,
    this.color2,
    this.title = "Title",
    this.titleColor,
    this.subTitle = "SubTitle",
    this.subTitleColor,
    this.padding
  });

  @override
  State<TestPackage> createState() => _TestPackageState();
}

class _TestPackageState extends State<TestPackage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??MediaQuery.of(context).size.width * 0.90,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        gradient: LinearGradient(
          colors: [widget.color1??const Color(0xFFCB1841), widget.color2??const Color(0xFF2604DE)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 12,
            offset: Offset(0, 6)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.title,
              style: TextStyle(
                color: widget.titleColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
            )
          ),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                  widget.subTitle,
                  style: TextStyle(
                      color: widget.subTitleColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal
                  )
              )
          )
        ],
      ),
    );
  }
}
