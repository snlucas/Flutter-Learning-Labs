import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: <Widget>[
                CardContainer(color: Colors.greenAccent),
                SizedBox(
                  height: 10.0,
                ),
                CardContainer(
                  flex: 2,
                  boxShadowList: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(0, 5.0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  final int flex;
  final Color color;
  final BoxDecoration decoration;
  final List<BoxShadow> boxShadowList;
  final Border border;

  const CardContainer({
    this.flex,
    this.color,
    this.decoration,
    this.boxShadowList,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex ?? 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: this.decoration ??
            // Default value
            BoxDecoration(
              color: this.color,
              border: this.border,
              borderRadius: kCardBorderRadius,
              boxShadow: this.boxShadowList,
            ),
      ),
    );
  }
}
