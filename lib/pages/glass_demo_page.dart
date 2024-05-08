import 'package:acrilico/molecules/glass_gallery.dart';
import 'package:acrilico/templates/simple_template.dart';
import 'package:flutter/material.dart';

const _forest = AssetImage('img/forest.jpg');
const _cold = AssetImage('img/cold.jpg');
const _trees = AssetImage('img/trees.jpg');
const _fall = AssetImage('img/fall.jpg');
const _images = [_forest, _cold, _trees, _fall];

class GlassDemoPage extends StatefulWidget {
  const GlassDemoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GlassDemoPageState();
  }
}

class _GlassDemoPageState extends State<GlassDemoPage> {
  _GlassDemoPageState() : currentImageIndex = 0;
  int currentImageIndex;

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Override the theme used in this page based on the current state.
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: [
          Colors.green,
          Colors.lightBlue,
          Colors.blueAccent,
          Colors.red
        ][currentImageIndex]),
        useMaterial3: true,
      ),
      child: SimpleTemplate(
        title: "Frosted Glass Catalog",
        background: Image(
          image: _images[currentImageIndex],
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        appBarActions: [
          // Button that changes the background.
          IconButton(
            key: const Key("btn_change_background"),
            icon: const Icon(Icons.image_outlined),
            color: Theme.of(context).colorScheme.onPrimary,
            onPressed: () {
              setState(() {
                currentImageIndex = (currentImageIndex + 1) % _images.length;
              });
            },
          ),
        ],
        child: const GlassGallery(),
      ),
    );
  }
}
