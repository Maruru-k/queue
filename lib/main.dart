// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:queue/bindings.dart';
import 'package:queue/screens/distribution_screen/view/distribution_screen.dart';

// Project imports:
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/widgets/my_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
      child: GetMaterialApp(
        title: 'Queue',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: QueueColor.primary,
            secondary: QueueColor.black,
          ),
        ),
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        getPages: [
          GetPage(
            name: "/distribution",
            page: () => const DistributionScreen(),
          ),
        ],
        initialRoute: "/distribution",
        initialBinding: DefaultBindings(),
      ),
    );
  }
}
