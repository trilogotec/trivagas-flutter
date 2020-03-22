import 'package:flutter/material.dart';
import 'package:trivagas_flutter/containers/home_tabs/home_tabs_presentation.dart';

class HomeTabsContainer extends StatefulWidget {
  @override
  _HomeTabsContainerState createState() => _HomeTabsContainerState();
}

class _HomeTabsContainerState extends State<HomeTabsContainer> {
  @override
  Widget build(BuildContext context) {
    return HomeTabsPresentation();
  }
}
