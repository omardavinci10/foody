import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:awesome_select/awesome_select.dart';
import 'package:foody/components/rounded_button.dart';
import 'package:foody/constants.dart';
import 'package:foody/screens/single_multi_screen.dart';

class ContactModel {
  String name;
  bool isSelected;

  ContactModel(this.name, this.isSelected);
}

class FoodDetails extends StatefulWidget {
  final String imagePath;
  static const String id = 'food_details';

  const FoodDetails({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  var number = 1;
  List<String> size = ['Small', 'Medium', 'Large'];
  List<Movie> sideDish = [
    Movie('Spicy'),
    Movie('Cheese Sauce'),
    Movie('Pepperoni'),
    Movie('Extra Chicken'),
  ];
  List<Movie> extra = [
    Movie('Spicy'),
    Movie('Cheese Sauce'),
    Movie('Pepperoni'),
    Movie('Extra Chicken'),
  ];
  final Note = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/p1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                MaterialButton(
                  elevation: 0,
                  shape: CircleBorder(
                      side: BorderSide(color: Colors.black26, width: 3)),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (number > 1) number--;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 20,
                    color: Colors.black26,
                  ),
                ),
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                MaterialButton(
                  elevation: 0,
                  shape: CircleBorder(
                      side: BorderSide(color: kOrangeColorInHex, width: 3)),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.plus,
                    size: 20,
                    color: kOrangeColorInHex,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Mini Sandwiches",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "A7san sandwich fi masr,A7san sandwich fi masr,A7san sandwich fi masr,A7san sandwich fi masr ",
              style: TextStyle(color: Colors.black26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Size",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 290.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.chevronDown)),
                    )
                  ],
                ),

                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    height: 200.0,
                    child: SingleSelectionPage(size, Colors.white),
                  ),
                ),

                //  child: Column,
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Side Dish",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.chevronDown)),
                    )
                  ],
                ),

                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    height: 300.0,
                    child: MultiSelectionExample(sideDish),
                  ),
                ),
                //  child: Column,
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Extra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.chevronDown)),
                    )
                  ],
                ),
                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    height: 300.0,
                    child: MultiSelectionExample(extra),
                  ),
                ),
                //  child: Column,
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Extra Note"),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                controller: Note,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )),
                    filled: true,
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Without Mashroom please',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    fillColor: Colors.white38),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(10),
          child: RoundedButton(
            title: "Save Changes",
            color: kOrangeColorInHex,
            onPressed: () {
              print("Saved!");
            },
          )),
    );
  }
}
