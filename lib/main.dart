import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/images/error.png"),
          title: "Page 1",
          body: "Welcome",
          footer: const Text("Init"),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("assets/images/error.png"),
        title: "Page 2 ",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        footer: const Text("Footer Text"),
      ),
      PageViewModel(
        image: Image.asset("assets/images/error.png"),
        title: "Page 3",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        footer: const Text("Footer Text"),
      ),
      PageViewModel(
        image: Image.asset("assets/images/error.png"),
        title: "Page 4",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        footer: const Text("Footer Text"),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intro Pages"),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        skip: const Text("Skip"),
        done: const Text("Got it "),
        onDone: () {},
      ),
    );
  }
}