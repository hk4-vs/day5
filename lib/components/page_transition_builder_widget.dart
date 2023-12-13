import 'package:flutter/material.dart';

// PageRouteBuilder pageTransitionBuilderWidget(Widget child) {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = 0.0;
//       const end = 1.0;
//       var tween = Tween(begin: begin, end: end)
//           .chain(CurveTween(curve: Curves.easeInOut));

//       var offsetAnimation = animation.drive(tween);

//       return AnimatedBuilder(
//         animation: offsetAnimation,
//         builder: (context, child) {
//           return Transform.scale(
//             scale: offsetAnimation.value,
//             child: child,
//           );
//         },
//         child: child,
//       );
//     },
//   );
// }
PageRouteBuilder pageTransitionBuilderWidget(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      var tween = Tween(begin: begin, end: end)
          .chain(CurveTween(curve: Curves.easeInOut));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
