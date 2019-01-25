import 'package:flutter/material.dart';
import 'package:hero_animation_listview/another_page.dart';

class BuildItem extends StatelessWidget {
  const BuildItem({
    Key key,
    @required this.imageUrl,
    @required this.heroTag,
  }) : super(key: key);

  final String imageUrl;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return AnotherPage(
            url: imageUrl,
            heroTag: heroTag,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
        child: ListTile(
          leading: Hero(
            tag: heroTag,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
              width: 75,
              height: 75,
            ),
          ),
          title: Text('Wonderful Lake'),
        ),
      ),
    );
  }
}
