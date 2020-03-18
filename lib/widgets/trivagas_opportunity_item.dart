import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trivagas_flutter/models/opportunity.dart';
import 'package:trivagas_flutter/widgets/trivagas_title.dart';

class TrivagasOpportunityItem extends StatelessWidget {
  final Function onPress;
  final Opportunity opportunity;

  TrivagasOpportunityItem({@required this.onPress, @required this.opportunity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(opportunity.id.toString()),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 1),
          ),
        ),
        child: Row(
          children: <Widget>[
            Hero(
              tag: "opportunity-item-${opportunity.id}",
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TrivagasTitle(
                    opportunity.title,
                    size: TrivagasTitleSize.h5,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(opportunity.companyName),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        opportunity.location,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
