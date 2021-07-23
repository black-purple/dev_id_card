import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final page;
  SlideRight(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    begin: Offset(1, 0),
                    end: Offset(0, 0),
                  ),
                ),
                child: child,
              );
            });
}
class SlideLeft extends PageRouteBuilder {
  final page;
  SlideLeft(this.page)
      : super(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: Offset(-1, 0),
              end: Offset(0, 0),
            ),
          ),
          child: child,
        );
      });
}
class SlideUp extends PageRouteBuilder {
  final page;
  SlideUp(this.page)
      : super(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: Offset(0, 1),
              end: Offset(0, 0),
            ),
          ),
          child: child,
        );
      });
}
class SlideDown extends PageRouteBuilder {
  final page;
  SlideDown(this.page)
      : super(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: Offset(0, -1),
              end: Offset(0, 0),
            ),
          ),
          child: child,
        );
      });
}