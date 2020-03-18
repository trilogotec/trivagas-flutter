import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OpportunitiesDetailsScreen extends StatelessWidget {
  final String id;

  OpportunitiesDetailsScreen({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desenvolvedor Mobile"),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: "opportunity-item-$id",
                child: CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Trilogo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Fortaleza, Ceará, Brasil",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color.fromRGBO(0, 0, 0, 1),
                          const Color.fromRGBO(0, 0, 0, 0),
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a leo consectetur, convallis turpis eget, posuere nulla. Morbi nibh lorem.\n\nCommodo ac tristique in, interdum sed ipsum. Maecenas et nunc tincidunt, volutpat magna et, tempor sem. Vestibulum a enim ac est pretium condimentum. Sed pretium velit et nulla vehicula pellentesque. Cras hendrerit nulla non magna ultrices hendrerit. Sed vehicula neque sapien, a euismod ipsum sodales sit amet.\n\nSed vel volutpat velit, sed sagittis mauris. Suspendisse posuere nec sem et facilisis. Maecenas sagittis leo orci, sed gravida enim feugiat eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nQuisque rhoncus et felis ut bibendum.",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
