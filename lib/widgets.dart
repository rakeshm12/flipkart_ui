import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 8.6, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

Widget images() {
  return Row(
    children: const [
      Image(image: NetworkImage('https://picsum.photos/id/119/400/200')),
      Image(image: NetworkImage('https://picsum.photos/id/1072/400/200')),
      Image(image: NetworkImage('https://picsum.photos/id/1071/400/200')),
      Image(image: NetworkImage('https://picsum.photos/400/200')),
    ],
  );
}

class RecentViews extends StatelessWidget {
  const RecentViews({Key? key, required this.image, required this.caption}) : super(key: key);

  final String image;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Image(
          image: AssetImage(image),
          width: 100,
          height: 150,
        ),
        Text(caption, style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.white),)
      ],
    );
  }
}

class Caption extends StatelessWidget {
  const Caption({
    Key? key, required this.title, required this.subtitle, required this.trail,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Widget trail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Image(
        image: AssetImage('assets/category.png'),
        width: 50.0,
        height: 60.0,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontStyle: FontStyle.italic),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12.0, color: Colors.grey,
            fontStyle: FontStyle.italic),
      ),
      trailing: trail
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key, required this.bigImage, required this.topImage, required this.bottomImage,
  }) : super(key: key);

  final String bigImage, topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Image(
            image: AssetImage(bigImage),
            width: 200,
            height: 250,
            fit: BoxFit.contain),
        const Divider(
          color: Colors.blueGrey,
        ),
        SizedBox(
          width: 150,
          height: 250,
          child: Column(
            children:   [
              Expanded(
                child: Image(
                  image: AssetImage(topImage),
                  width: 100,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
              ),
              Expanded(
                child: Image(
                    image: AssetImage(bottomImage),
                    width: 100,
                    height: 150,
                    fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

