class Usuario {
  String nombre;
  String lugar;
  String imagenURL;
  String nivel;

  Usuario({
    this.nombre,
    this.lugar,
    this.imagenURL,
    this.nivel
  });
}

class Noticias{
  String titulo;
  String subtitulo;
  DateTime fecha;
  String descripcion;
  String imagenURL;
  String enlace;

  Noticias({
    this.titulo,
    this.subtitulo,
    this.fecha,
    this.descripcion,
    this.imagenURL,
    this.enlace
  }); 
}

class Eventos{
  String titulo;
  String subtitulo;
  String descripcion;
  String imagenURL;

  Eventos({
    this.titulo,
    this.subtitulo,
    this.descripcion,
    this.imagenURL
  });
}