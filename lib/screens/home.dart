import 'package:flutter/material.dart';
import 'package:pokedex/models/attributes.dart';
import 'package:pokedex/screens/widgets/details.dart';
import 'package:pokedex/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:custom_button/custom_button.dart';

class Home extends StatelessWidget {
  final attributes = Attributes(
    name: "Nidoking",
    photo: "assets/images/nidoking.png",
  );

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/logo.png",
        ),
        title: Text(
          "Nidoking #034",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: orangeTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(attributes.photo),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Text(
                "Nidoking se ,orgulha de sua força. É forte e vigoroso na batalha, fazendo uso de sua cauda grossa e chifre esmagador de diamantes.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Details(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Frequezas",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Center(
                  child: Button(
                    borderRadius: BorderRadius.circular(20),
                    backgroundColor: blueTheme,
                    child: Text("água"),
                  ),
                ),
                Center(
                  child: Button(
                    borderRadius: BorderRadius.circular(20),
                    backgroundColor: amberTheme,
                    child: Text("Terra"),
                  ),
                ),
                Center(
                  child: Button(
                    borderRadius: BorderRadius.circular(20),
                    backgroundColor: purpleTheme,
                    child: Text("Psíquico"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
