import 'dart:async';

import 'package:flutter/material.dart';

import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../data/dummy_data.dart';

import 'home.dart';

class PageViewer extends StatefulWidget {
  const PageViewer({Key? key}) : super(key: key);

  @override
  PageViewerState createState() => PageViewerState();
}

class PageViewerState extends State<PageViewer> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;
  final _pageIndexNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 6), (timer) {
      if (_currentIndex < 3) _currentIndex++;

      _controller.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 0.7),
        children: [
          Builder(
            builder: (ctx) => PageView(
              controller: _controller,
              children: myData
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(item.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(item.iconData, size: 130),
                          const SizedBox(height: 50),
                          Text(
                            item.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item.description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onPageChanged: (val) {
                _pageIndexNotifier.value = val;
                setState(() {
                  _currentIndex = val;
                  /*if (_currentIndex == 3) {
                      Future.delayed(Duration(seconds: 2),
                          () => Navigator.of(ctx).pushNamed('/b'));
                    }*/
                });
              },
            ),
          ),

          PageViewDotIndicator(
            currentItem: _pageIndexNotifier.value,
            count: myData.length,
            unselectedColor: Colors.black,
            selectedColor: Colors.white,
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.zero,
            alignment: Alignment.bottomCenter,
          ),

          //Indicator(_currentIndex),
          Builder(
            builder: (ctx) => Align(
              alignment: const Alignment(0, 0.93),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(7)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () async {
                    Navigator.of(ctx).push(
                      MaterialPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;

  const Indicator(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(0, index == 0 ? Colors.green : Colors.red),
          buildContainer(1, index == 1 ? Colors.green : Colors.red),
          buildContainer(2, index == 2 ? Colors.green : Colors.red),
          buildContainer(3, index == 3 ? Colors.green : Colors.red),
        ],
      ),
    );
  }

  Widget buildContainer(int i, Color color) {
    return index == i
        ? const Icon(Icons.star)
        : Container(
            margin: const EdgeInsets.all(4),
            height: 15,
            width: 15,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          );
  }
}
