import 'package:flutter/material.dart';
import 'package:impuls/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logo = Image.asset(
      "assets/LogoImpuls.png",
      height: kSpacingUnit * 3,
      alignment: Alignment.centerLeft,
    );

    var version = Text(
      "Versión 1.0.1",
      style: kVersionTextStyle,
    );

    var header = Padding(
      padding: const EdgeInsets.only(
        left: kSpacingUnit * 2,
        top: kSpacingUnit * 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          logo,
          SizedBox(
            height: kSpacingUnit,
          ),
          version,
        ],
      ),
    );

    var line = Divider(thickness: 1.2, color: Colors.black12);

    var option1 = ListTile(
      title: Text('Nuevo Pedido'),
      leading: Icon(
        Icons.playlist_add,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option2 = ListTile(
      title: Text('Ver Pedidos'),
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option3 = ListTile(
      title: Text('Historial de Pedidos'),
      leading: Icon(
        Icons.history,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option4 = ListTile(
      title: Text('Agregar Cliente'),
      leading: Icon(
        Icons.person_add,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option5 = ListTile(
      title: Text('Ver Mis Clientes'),
      leading: Icon(
        Icons.person_pin,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option6 = ListTile(
      title: Text('Catálogos'),
      leading: Icon(
        Icons.import_contacts,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option7 = ListTile(
      title: Text('Mis estadísticas'),
      leading: Icon(
        Icons.insert_chart,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option8 = ListTile(
      title: Text('Noticias'),
      leading: Icon(
        Icons.toys,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var option9 = ListTile(
      title: Text('Configuración'),
      leading: Icon(
        Icons.settings,
        color: Colors.black,
      ),
      onTap: () {},
    );

    var content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        header,
        SizedBox(height: kSpacingUnit),
        line,
        option1,
        option2,
        option3,
        line,
        option4,
        option5,
        line,
        option6,
        option7,
        option8,
        line,
        option9
      ],
    );

    return Drawer(
      child: ListView(
        children: <Widget>[content],
      ),
    );
  }
}
