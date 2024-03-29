import 'package:flutter/material.dart';
import 'package:flutter_parallax/flutter_parallax.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/data/NoticiasData.dart';
import 'package:impuls/data/Utilidades.dart';
import 'package:impuls/models/models_classes.dart';

class NoticiasSeccion extends StatefulWidget {
  NoticiasSeccion({Key key}) : super(key: key);

  @override
  _NoticiasSeccionState createState() => _NoticiasSeccionState();
}

class _NoticiasSeccionState extends State<NoticiasSeccion> with AutomaticKeepAliveClientMixin{
  List<Noticias> noticias = [noticia1, noticia2, noticia3];

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      height: kSpacingUnit * 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: kSpacingUnit * 2, bottom: kSpacingUnit),
            child: Text(
              "Noticias",
              style: kHelloTextStyle,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: kSpacingUnit),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(right: kSpacingUnit * 2),
              scrollDirection: Axis.horizontal,
              itemCount: noticias.length,
              itemBuilder: (_, index) {
                return NoticiaCardSeccion(noticia: noticias[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NoticiaCardSeccion extends StatelessWidget {
  const NoticiaCardSeccion({Key key, this.noticia}) : super(key: key);
  final Noticias noticia;

  @override
  Widget build(BuildContext context) {
    var fecha = noticia.fecha.toString().split(" ")[0];
    var dia = fecha.split("-")[2];
    var mes = fecha.split("-")[1];

    String fechabien = dia + " de " + Utilidades.nombreMes(mes);

    return Padding(
      padding: const EdgeInsets.only(left: kSpacingUnit * 2),
      child: Container(
        height: kSpacingUnit * 8,
        width: kSpacingUnit * 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit * 1.6),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(kSpacingUnit * 1.6),
                ),
                child: Container(
                  width: kSpacingUnit * 24,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.png',
                    image: noticia.imagenURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: kSpacingUnit * 12,
                width: kSpacingUnit * 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kSpacingUnit * 1.6),
                    color: Colors.black38),
              ),
            ),
            Positioned(
              top: kSpacingUnit * 1.6,
              left: kSpacingUnit,
              child: Text(
                fechabien,
                style: kCardActionSubTextStyle,
              ),
            ),
            Positioned(
              bottom: kSpacingUnit * 2.8,
              left: kSpacingUnit,
              child: Text(
                noticia.titulo,
                style: kTituloNoticiaTextStyle,
              ),
            ),
            Positioned(
              bottom: kSpacingUnit * 1.4,
              left: kSpacingUnit,
              child: Text(
                noticia.subtitulo,
                style: kSubTituloNoticiaTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
