import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120.0),
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Hallo',
                    textAlign: TextAlign.end,
                  ),
                  subtitle: const Text(
                    'Alfianfr',
                    textAlign: TextAlign.end,
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 50.0,
                    height: 50.0,
                    child: Lottie.network(
                      'https://gist.githubusercontent.com/olipiskandar/2095343e6b34255dcfb042166c4a3283/raw/d76e1121a2124640481edcf6e7712130304d6236/praujikom_kucing.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: 'Headdline'),
                      Tab(text: 'Teknologi'),
                      Tab(text: 'Sains'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              headline(),
              Center(child: Text('Berita Teknologi')),
              Center(child: Text('Berita Sains')),
            ],
          ),
        ),
      ),
    );
  }

  Center headline() {
    return Center(child: Text('Berita Headline'));
  }
}