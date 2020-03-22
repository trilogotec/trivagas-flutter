import 'package:flutter/material.dart';

import 'opportunities_details_screen.dart';

class OpportunitiesDetailsContainer extends StatefulWidget {
  String id;

  OpportunitiesDetailsContainer({@required this.id});

  @override
  _OpportunitiesDetailsContainerState createState() =>
      _OpportunitiesDetailsContainerState();
}

class _OpportunitiesDetailsContainerState
    extends State<OpportunitiesDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    return OpportunitiesDetailsScreen(id: widget.id);
  }
}
