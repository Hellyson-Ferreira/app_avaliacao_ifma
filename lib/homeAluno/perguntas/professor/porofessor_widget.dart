import 'package:flutter/material.dart';

class ProfessorWidget extends StatefulWidget {
  final String nome;
  final String imagenUrl;
  final String imagePach;

  const ProfessorWidget({
    Key key,
    this.nome,
    this.imagenUrl,
    this.imagePach,
  }) : super(key: key);

  @override
  _ProfessorWidgetState createState() => _ProfessorWidgetState();
}

class _ProfessorWidgetState extends State<ProfessorWidget> {
  int i = 0;
  mudarIcon(value) {
    setState(() {
      i = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icons = [
       Icon(
        Icons.highlight_off,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.sentiment_very_dissatisfied,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.sentiment_dissatisfied,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.sentiment_satisfied,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.mood,
        size: 35,
        color: Colors.white,
      ),
    ];
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          child: Stack(
            children: <Widget>[
              //Card
              Container(
                height: 130,
                margin: EdgeInsets.only(left: 46.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  //color: Color(0xFF3333366),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 10.0),
                        blurRadius: 10.0)
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 15.0, left: 49.0),
                  constraints: BoxConstraints.expand(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.nome,
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      Container(
                          color: const Color(0xFF00C6FF),
                          width: 100,
                          height: 1.0,
                          margin: const EdgeInsets.symmetric(vertical: 8.0)),
                    ],
                  ),
                ),
              ),
              //Icon image
              Positioned(
                bottom: 20,
                right: 1,
                child: Container(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        child: PopupMenuButton<int>(
                          icon:icons[i],
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Text("😤 - Discordo totalmente"),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text("😠 - Discordo em parte"),
                            ),
                            PopupMenuItem(
                              value: 3,
                              child: Text("🙂 -Concordo em parte"),
                            ),
                            PopupMenuItem(
                              value: 4,
                              child: Text("😀 - Concordo totalmente"),
                            ),
                          ],
                          onSelected: (value) {
                            mudarIcon(value);
                            return value;
                          },
                          initialValue: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Image
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                alignment: FractionalOffset.centerLeft,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: widget.imagenUrl == null
                        ? AssetImage(widget.imagePach)
                        : NetworkImage(widget.imagenUrl),
                    // fit: BoxFit.fill
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
