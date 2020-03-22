import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trivagas_flutter/containers/opportunities_list/opportunities_list_screen.dart';
import 'package:trivagas_flutter/models/opportunity.dart';

class OpportunitiesListContainer extends StatefulWidget {
  @override
  _OpportunitiesListContainerState createState() =>
      _OpportunitiesListContainerState();
}

class _OpportunitiesListContainerState
    extends State<OpportunitiesListContainer> {
  bool loading = true;
  List<Opportunity> opportunities = [
    Opportunity(
      id: 1,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 2,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 3,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 4,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 5,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 6,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
    Opportunity(
      id: 7,
      title: "Desenvolvedor Mobile",
      companyName: "Trílogo",
      location: "Fortaleza, Ceará, Brasil",
    ),
  ];

  void navigateToOpportunitiesDetails(String id) {
    Modular.to.pushNamed("/opportunities/$id");
  }

  @override
  Widget build(BuildContext context) {
    return OpportunitiesListScreen(
      navigateToOpportunitiesDetails: navigateToOpportunitiesDetails,
      opportunities: opportunities,
      loading: false,
    );
  }
}
