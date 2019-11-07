import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_record/common/colors.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('button & image'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: AppColors.COLOR_BG,
                  border: Border(
                      bottom: BorderSide(width: 0.0, color: AppColors.PRIMARY_DEFAULT_COLOR)
                  )
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: 4,
                    height: 20,
                    color: AppColors.PRIMARY_DEFAULT_COLOR,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                        'Button'
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}