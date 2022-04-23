import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class EthSyncExtendedImage extends StatelessWidget {
  final String? image, title;
  const EthSyncExtendedImage({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          ),
          title: Text(
            title!,
            style: const TextStyle(
              color: Colors.yellow,
              inherit: true,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              letterSpacing: 2.0, //1.2
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox.expand(
          //expand
          // child: Hero(
          // tag: heroTag,
          child: ExtendedImageSlidePage(
            slideAxis: SlideAxis.both,
            //slideType: SlideType.onlyImage,
            onSlidingPage: Navigator.of(context).pop, //change state.
            child: ExtendedImage(
              enableSlideOutPage: true,
              mode: ExtendedImageMode.gesture,
              initGestureConfigHandler: (state) => GestureConfig(
                minScale: 1.0,
                animationMinScale: 0.8,
                maxScale: 3.0,
                animationMaxScale: 3.5,
                speed: 1.0,
                inertialSpeed: 100.0,
                initialScale: 1.0,
                inPageView: false,
              ),
              // onDoubleTap: ?   zoom in on image
              // onDoubleTap: Scale: 2.0,
              onDoubleTap: printFunc(),
              fit: BoxFit.contain,
              image: AssetImage(
                image!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

printFunc() {
  print('hello extended images');
}

// eg from extendedImage pub.dev
// import 'package:extended_image/extended_image.dart';
// import 'package:extended_image_library/extended_image_library.dart';
// import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:oktoast/oktoast.dart';
// import 'common/widget/memory_usage_view.dart';
// import 'example_route.dart';
// import 'example_routes.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   MyApp() {
//     if (!kIsWeb) {
//       clearDiskCachedImages(duration: const Duration(days: 7));
//     }
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return OKToast(
//         child: MaterialApp(
//       title: 'extended image demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       builder: (BuildContext c, Widget? w) {
//         w = Stack(
//           children: <Widget>[
//             Positioned.fill(child: w!),
//             if (kDebugMode) MemoryUsageView(),
//           ],
//         );
//         if (!kIsWeb) {
//           final MediaQueryData data = MediaQuery.of(c);
//           w = MediaQuery(
//             data: data.copyWith(textScaleFactor: 1.0),
//             child: w,
//           );
//         }

//         return w;
//       },
//       initialRoute: Routes.fluttercandiesMainpage,
//       onGenerateRoute: (RouteSettings settings) {
//         return onGenerateRoute(
//           settings: settings,
//           getRouteSettings: getRouteSettings,
//           // routeSettingsWrapper: (FFRouteSettings ffRouteSettings) {
//           //   if (ffRouteSettings.name == Routes.fluttercandiesMainpage ||
//           //       ffRouteSettings.name == Routes.fluttercandiesDemogrouppage) {
//           //     return ffRouteSettings;
//           //   }
//           //   return ffRouteSettings.copyWith(
//           //       widget: CommonWidget(
//           //     child: ffRouteSettings.widget,
//           //     title: ffRouteSettings.routeName,
//           //   ));
//           // },
//         );
//       },
//     ));
//   }
// }

// class CommonWidget extends StatelessWidget {
//   const CommonWidget({
//     this.child,
//     this.title,
//   });
//   final Widget? child;
//   final String? title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           title!,
//         ),
//       ),
//       body: child,
//     );
//   }
// }

// String get imageTestUrl => 'https://photo.tuchong.com/4870004/f/298584322.jpg';