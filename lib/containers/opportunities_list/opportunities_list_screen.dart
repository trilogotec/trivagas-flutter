import 'package:flutter/material.dart';
import 'package:trivagas_flutter/models/opportunity.dart';
import 'package:trivagas_flutter/widgets/trivagas_list_opportunities_placeholder.dart';
import 'package:trivagas_flutter/widgets/trivagas_opportunity_item.dart';

class OpportunitiesListScreen extends StatelessWidget {
  final Function(String) navigateToOpportunitiesDetails;
  final bool loading;
  final List<Opportunity> opportunities;

  OpportunitiesListScreen({
    @required this.navigateToOpportunitiesDetails,
    this.loading,
    this.opportunities,
  });

  @override
  Widget build(BuildContext context) {
    return loading
        ? TrivagasListOpportunitiesPlaceholder()
        : ListView(
            children: opportunities.map<Widget>((opportunity) {
              return TrivagasOpportunityItem(
                onPress: navigateToOpportunitiesDetails,
                opportunity: opportunity,
              );
            }).toList(),
          );
  }
}
