import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollableAppBarExample extends StatefulWidget {
  const ScrollableAppBarExample({super.key});

  @override
  _ScrollableAppBarExampleState createState() => _ScrollableAppBarExampleState();
}

class _ScrollableAppBarExampleState extends State<ScrollableAppBarExample> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppbarBackground = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && !_showAppbarBackground) {
        setState(() {
          _showAppbarBackground = true;
        });
      } else if (_scrollController.offset <= 100 && _showAppbarBackground) {
        setState(() {
          _showAppbarBackground = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: _showAppbarBackground ? Colors.blue : Colors.transparent,
              child: FlexibleSpaceBar(
                title: const Text('Scrollable AppBar'),
                background: Image.network(
                  'https://via.placeholder.com/350x150',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
              childCount: 50, // Replace this with your list size
            ),
          ),
        ],
      ),
    );
  }
}