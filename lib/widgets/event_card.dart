import 'package:flutter/material.dart';
import 'package:flutter_parallax/flutter_parallax.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/data/EventoData.dart';

class EventCard extends StatefulWidget {
  const EventCard({Key key}) : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kSpacingUnit * 2),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: new Parallax.inside(
                mainAxisExtent: 260.0,
                child: FadeInImage.assetNetwork(
                  width: MediaQuery.of(context).size.width,
                  placeholder: 'assets/loading.png',
                  image: eventoPrueba.imagenURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: kSpacingUnit * 2,
              bottom: kSpacingUnit * 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Evento", style: kResumenTextStyle,),
                  Text(eventoPrueba.titulo, style: kHeadingTextStyle),
                  Text(eventoPrueba.subtitulo, style: kTitleTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
