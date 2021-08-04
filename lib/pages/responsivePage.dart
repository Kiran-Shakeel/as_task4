import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Result(
                widthSize: size.width,
                heightSize: size.height * 0.2,
                color: Colors.purple,
                content: "Column1",
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Result(
                    widthSize: size.width * 0.5,
                    heightSize: size.height * 0.2,
                    color: Colors.lightGreen,
                    content: "Column 2,Row 1",
                  ),
                  Result(
                    widthSize: size.width * 0.5,
                    heightSize: size.height * 0.2,
                    color: Colors.orange,
                    content: "Column 2,Row 2",
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Result(
                    widthSize: size.width * 0.5,
                    heightSize: size.height * 0.2,
                    color: Colors.red,
                    content: "Column 3,Row 1",
                  ),
                  Result(
                    widthSize: size.width * 0.5,
                    heightSize: size.height * 0.2,
                    color: Colors.blue,
                    content: "Column 3,Row 2",
                  ),
                ],
              )
            ],
          ),
          Result(
            widthSize: size.width,
            heightSize: size.height * 0.2,
            color: Colors.yellow,
            content: "Column 4",
          ),
        ],
      ),
    );
  }
}

class Result extends StatelessWidget {
  final double widthSize, heightSize;
  final Color color;
  final String content;
  const Result(
      {Key? key,
      required this.widthSize,
      required this.heightSize,
      required this.color,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      height: heightSize,
      color: color,
      child: Center(
          child: Text(
        content,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      )),
    );
  }
}
