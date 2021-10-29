import 'package:flutter/material.dart';

class Movie {
  Movie(this.movieName);

  String movieName;
  bool isSelected = false;
}

class SingleSelectionPage extends StatefulWidget {
  List<String> sortFilter;

  SingleSelectionPage(this.sortFilter);

  @override
  _SingleSelectionPageState createState() => _SingleSelectionPageState();
}

class _SingleSelectionPageState extends State<SingleSelectionPage> {
  String selectedValue = "";

  @override
  void initState() {
    super.initState();

    selectedValue = widget.sortFilter.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            selectedValue = widget.sortFilter[index];
            setState(() {});
          },
          child: Container(
            color:
                selectedValue == widget.sortFilter[index] ? Colors.white : null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26)),
                child: Row(
                  children: <Widget>[
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.orangeAccent),
                        value: widget.sortFilter[index],
                        groupValue: selectedValue,
                        onChanged: (s) {
                          selectedValue = s.toString();
                          setState(() {});
                        }),
                    Text(widget.sortFilter[index])
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: widget.sortFilter.length,
    );
  }
}

class MultiSelectionExample extends StatefulWidget {
  List<Movie> favoriteMovies;

  MultiSelectionExample(this.favoriteMovies);

  @override
  _MultiSelectionExampleState createState() => _MultiSelectionExampleState();
}

class _MultiSelectionExampleState extends State<MultiSelectionExample> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      primary: false,
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            widget.favoriteMovies[index].isSelected =
                !widget.favoriteMovies[index].isSelected;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26)),
              child: Row(
                children: <Widget>[
                  Checkbox(
                      side: BorderSide(color: Colors.black26),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.orangeAccent),
                      value: widget.favoriteMovies[index].isSelected,
                      onChanged: (s) {
                        widget.favoriteMovies[index].isSelected =
                            !widget.favoriteMovies[index].isSelected;
                        setState(() {});
                      }),
                  Text(widget.favoriteMovies[index].movieName)
                ],
              ),
            ),
          ),
        );
      },
      itemCount: widget.favoriteMovies.length,
    );
  }
}
