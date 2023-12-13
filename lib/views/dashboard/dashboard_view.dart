import 'package:flutter/material.dart';

import 'tab_bar_month.dart';
import 'tab_bar_year.dart';

import 'tab_bar_week.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        centerTitle: true,
        title: const Text("My Goals"),
        bottom: bottomBarWidget(context),
      ),
      body: tabSwitchCase(selectedIndex),
    );
  }

  PreferredSize bottomBarWidget(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : Colors.white30),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Year",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.white30),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.white30),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Month",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : Colors.white30),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedIndex == 2
                                    ? Colors.white
                                    : Colors.white30),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Day",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 2
                                  ? Colors.white
                                  : Colors.white30),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Repeat\nEvery Sunday",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 1.2,
                      color: Colors.white,
                    )),
                    const Text(
                      "Goal\nExcercise",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }

  Widget tabSwitchCase(int index) {
    switch (index) {
      case 0:
        return const TabbarYear();
      case 1:
        return const TabbarMonth();
      case 2:
        return const TabbarWeek();
      default:
        return const TabbarWeek();
    }
  }
}
