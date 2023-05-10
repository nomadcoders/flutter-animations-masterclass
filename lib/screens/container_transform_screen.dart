import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class ContainerTransformScreen extends StatefulWidget {
  const ContainerTransformScreen({super.key});

  @override
  State<ContainerTransformScreen> createState() =>
      _ContainerTransformScreenState();
}

class _ContainerTransformScreenState extends State<ContainerTransformScreen> {
  bool _isGrid = false;

  void _toggleGrid() {
    setState(() {
      _isGrid = !_isGrid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Transform'),
        actions: [
          IconButton(
            onPressed: _toggleGrid,
            icon: const Icon(Icons.grid_4x4),
          )
        ],
      ),
      body: _isGrid
          ? GridView.builder(
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.5,
              ),
              itemBuilder: (context, index) => OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                closedBuilder: (context, action) => Column(
                  children: [
                    Image.asset("assets/covers/${(index % 5) + 1}.jpg"),
                    const Text('Dune Soundtrack'),
                    const Text(
                      'Hans Zimmer',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                openBuilder: (context, action) =>
                    DetailScreen(image: (index % 5) + 1),
              ),
            )
          : ListView.separated(
              itemBuilder: (context, index) => OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                openBuilder: (context, action) =>
                    DetailScreen(image: (index % 5) + 1),
                closedBuilder: (context, action) => ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/covers/${(index % 5) + 1}.jpg",
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Dune Soundtrack"),
                  subtitle: const Text("Hans Zimmer"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: 20,
            ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final int image;

  const DetailScreen({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Column(
        children: [
          Image.asset("assets/covers/$image.jpg"),
          const Text(
            "Detail Screen",
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
