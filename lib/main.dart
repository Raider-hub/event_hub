import 'package:flutter/material.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(ProviderScope(
    observers: [Logger()],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EventHub',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white

          // scaffoldBackgroundColor :bgColor
          ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // builder: (context, router) => router!,
    );
  }
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

