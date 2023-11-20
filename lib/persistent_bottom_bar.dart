import 'package:flutter/material.dart';
import 'package:persistent_bottom/models/persistent_model.dart';

class PersistentBottomBar extends StatefulWidget {
  final List<PersistentTabModel> items;

  const PersistentBottomBar({Key? key, required this.items}) : super(key: key);

  @override
  State<PersistentBottomBar> createState() => _PersistentBottomBarState();
}

class _PersistentBottomBarState extends State<PersistentBottomBar> {
  int tap = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (value) async {
        var state = widget.items[tap].navigatorKey?.currentState;

        /// Check if current tab can be popped
        if (state?.canPop() ?? false) {
          state?.pop();
          return Future(() => false);
        } else {
          /// if current tab can't be popped then use the root navigator
          return Future(() => true);
        }
      },
      child: Scaffold(
        /// Using indexedStack to maintain the order of the tabs and the state of the
        /// previously opened tab
        body: IndexedStack(
          index: tap,
          children: widget.items.map(
            (page) {
              return Navigator(
                /// Each tab is wrapped in a Navigator so that navigation in
                /// one tab can be independent of the other tabs
                key: page.navigatorKey,
                onGenerateInitialRoutes: (navigator, initialRoute) {
                  return [
                    MaterialPageRoute(builder: (context) => page.tab),
                  ];
                },
              );
            },
          ).toList(),
        ),

        /// Define the persistent bottom bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tap,
          onTap: (index) {
            var state = widget.items[index].navigatorKey?.currentState;

            /// Check if the tab that the user is pressing is currently selected
            if (index == tap) {
              /// if you want to pop the current tab to its root then use
              state?.popUntil((route) => route.isFirst);

              /// if you want to pop the current tab to its last page
              /// then use
              /// widget.items[index].navigatorKey?.currentState?.pop();
            } else {
              setState(() {
                tap = index;
              });
            }
          },
          items: widget.items.map(
            (item) {
              return BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.title,
                backgroundColor: Colors.pink,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
