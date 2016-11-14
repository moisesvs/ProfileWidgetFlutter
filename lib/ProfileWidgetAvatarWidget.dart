import 'package:flutter/material.dart';

class ProfileWidgetAvatarWidget extends StatelessWidget {

  static const double radius = 50.0;
  Image image;
  double border;
  Color borderColor;

  ProfileWidgetAvatarWidget(this.image, this.border, this.borderColor) : super();

  @override
  Widget build(BuildContext context) {

    double radiusWithBorder = radius + border;

    return new Center(
          child: new CircleAvatar(
            radius: radiusWithBorder,
            backgroundColor: borderColor,
            child : new CircleAvatar(
                  child: new ClipOval(
                          child: image
                        ),
                  radius: radius
            )
          )
      );
  }

}
