import 'package:fading_marquee_widget/fading_marquee_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> repeatedStrings = List.filled(30, "Long text vertical.");
  late String result = repeatedStrings.join("\n");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fading Marquee Widget'),
        ),
        body: Column(
          children: [
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Duration example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        duration: Duration(seconds: 5),
                        child: Text(
                          "Duration of the animation is 5 seconds. Default duration is 10 seconds. very very very very very very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Pause example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: false,
                        pause: Duration(milliseconds: 0),
                        child: Text(
                          "No pause between loop with default delay. very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: false,
                        pause: Duration(seconds: 5),
                        child: Text(
                          "5 second pause between loop with default delay. very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Delay example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: false,
                        pause: Duration(milliseconds: 0),
                        delay: Duration(milliseconds: 0),
                        child: Text(
                          "No delay & pause between loop. very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: false,
                        delay: Duration(milliseconds: 1000),
                        child: Text(
                          "1 second delay with default pause between loop. very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Gap example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: false,
                        gap: 150,
                        child: Text(
                          "gap between the end & start of the sentence is 150 (default gap is 25). very very very very very very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Disable animation example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: const FadingMarqueeWidget(
                        disableAnimation: true,
                        child: Text(
                          "Animation stopped. very very very very very very very very very very long text.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Vertical animation example",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.all(8.0),
                      color: Theme.of(context).primaryColor,
                      child: FadingMarqueeWidget(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          result,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
