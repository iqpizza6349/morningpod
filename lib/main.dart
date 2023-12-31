import 'package:flutter/material.dart';
import 'package:morning_pod/component/alarm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Alarm Center"),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: Padding(
                padding: EdgeInsets.only(right: 50, bottom: 15),
                child: Text(
                  "다양한 Podcast로 하루 아침을 시작해보세요",
                  style: TextStyle(fontSize: 16, color: Color(0xFF767676)),
              )
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: const Alarm()
                      );
                    },
                  childCount: 2
                )
            )
          ],
        )
      )
    );
  }
}

