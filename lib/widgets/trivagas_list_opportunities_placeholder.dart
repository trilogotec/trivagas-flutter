import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trivagas_flutter/models/opportunity.dart';
import 'package:trivagas_flutter/widgets/trivagas_opportunity_item.dart';

class TrivagasListOpportunitiesPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      enabled: true,
      child: ListView.builder(
        itemBuilder: (_, __) => TrivagasOpportunityItem(
          onPress: () {},
          opportunity: Opportunity(
            id: 1,
            location: "Fortaleza, Ceará, Brasil",
            title: "Desenvolvedor Mobile",
            companyName: "Trilogo",
          ),
        ),
        itemCount: 7,
      ),
    );
  }
}
