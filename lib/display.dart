import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu.dart' as menu;
import 'main.dart' as main;

class Menu extends StatefulWidget {
  const Menu({super.key, required this.page});

  final main.Page page;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Expanded(child: buildImage(context))],
    ));
  }

  Widget buildImage(BuildContext context) {
    List<menu.Recipe> recipe;

    switch (widget.page) {
      case main.Page.food:
        recipe = menu.food;
        break;
      case main.Page.drink:
        recipe = menu.drink;
        break;
      case main.Page.dessert:
        recipe = menu.dessert;
        break;
    }

    return ListView.builder(
        itemCount: recipe.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            displayFullDetail(recipe[index])));
              },
              child: display(recipe[index]));
        });
  }

  Widget display(menu.Recipe item) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                      image: AssetImage(item.getImage()),
                      height: 300,
                      width: 300,
                      fit: BoxFit.fitWidth)),
            ])));
  }

  Widget displayFullDetail(menu.Recipe item) {
    return Card(
      child: ListView(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  image: AssetImage(item.getImage()),
                  height: 300,
                  width: 300,
                  fit: BoxFit.fitWidth)),
          Text('Recipe:',
              style: GoogleFonts.roboto(
                  fontSize: 44,
                  color: const Color.fromRGBO(128, 128, 128, 1.0))),
          Text(item.getInstruction(),
              style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: const Color.fromRGBO(128, 128, 128, 1.0)))
        ],
      ),
    );
  }
}
