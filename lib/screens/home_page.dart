import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:n2th_app_1/components/icon_content.dart';
import 'package:n2th_app_1/components/reusable_card.dart';
import 'package:n2th_app_1/components/my_constants.dart';

enum Advice {
  wellness,
  kitten,
  puppy,
  goodFood,
  bug,
  poison,
  seniorCat,
  seniorDog,
  other,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Advice selectedAdvice = Advice.wellness;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nose2Tail Health App'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          // child: Row(Text('Lifetime Health Advice for Your Cat or Dog'),),
          children: <Widget>[
            //
            Expanded(
              child: Image(
                image: AssetImage('images/shutterstock_161832497_V2.jpg'),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.wellness;
                        });
                      },
                      colour: selectedAdvice == Advice.wellness
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.stethoscope,
                        label: 'Wellness Check',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.kitten;
                        });
                      },
                      colour: selectedAdvice == Advice.kitten
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.cat,
                        label: 'Kitten Care',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.puppy;
                        });
                      },
                      colour: selectedAdvice == Advice.puppy
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.dog,
                        label: 'Puppy Care',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.goodFood;
                        });
                      },
                      colour: selectedAdvice == Advice.goodFood
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.bone,
                        label: 'Good Food Guide',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.bug;
                        });
                      },
                      colour: selectedAdvice == Advice.bug
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.bug,
                        label: 'Bug Guide',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.poison;
                        });
                      },
                      colour: selectedAdvice == Advice.poison
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.skullCrossbones,
                        label: 'Poison Guide',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.seniorCat;
                        });
                      },
                      colour: selectedAdvice == Advice.seniorCat
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.cat,
                        label: 'Senior Cats',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.seniorDog;
                        });
                      },
                      colour: selectedAdvice == Advice.seniorDog
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.dog,
                        label: 'Senior Dogs',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedAdvice = Advice.other;
                        });
                      },
                      colour: selectedAdvice == Advice.other
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.thermometer,
                        label: 'Future Content',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
      // ]
    );
  }
}
