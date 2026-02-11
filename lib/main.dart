import 'package:flutter/material.dart';

void main() => runApp(AppCarros());

class AppCarros extends StatelessWidget {
  const AppCarros({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Empleado());
  }
} // fin clase appCarros()

class Empleado extends StatelessWidget {
  const Empleado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 157, 87, 236), // Fondo azul claro
        title: const Text(
          "Tienda MyselftCar 6°J ||",
          style: TextStyle(color: Colors.white), // Título blanco
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 0, 0, 0)), // Cámara
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 255, 108, 108)), // Corazón
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Color.fromARGB(255, 0, 0, 0)), // Lápiz
            onPressed: () {},
          ),
        ],
      ),


    body: const Padding(
          padding: EdgeInsets.all(20.0), // Margen alrededor de toda la columna
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra las tarjetas verticalmente
            children: [
              // --- TARJETA 1 ---
              TarjetaPersonalizada(
                titulo: 'Carro Ford Mustang',
                subtitulo: 'Año: 1970',
                urlImagen: 'https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/mustang.jpg',
              ),
              
              SizedBox(height: 20), // Espacio separador entre tarjetas
              
              // --- TARJETA 2 ---
              TarjetaPersonalizada(
                titulo: 'Dodge charger',
                subtitulo: 'Año: 2025',
                urlImagen: 'https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/charger.jpg',
              ),
              
              SizedBox(height: 20), // Espacio separador entre tarjetas
              
              // --- TARJETA 3 ---
              TarjetaPersonalizada(
                titulo: 'Nissan gtr 35',
                subtitulo: 'Año: 2023',
                urlImagen: 'https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/r35.jpg',
              ),
            ],
          ),
        ), 
    );
  }
} //fin clase empleado

class TarjetaPersonalizada extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String urlImagen;

  const TarjetaPersonalizada({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.urlImagen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8, // Sombra para efecto de elevación 3D
      // Borde redondeado suave
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // Color de fondo: Un violeta intenso (Deep Purple)
      color: const Color(0xFF673AB7), 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          // 1. IMAGEN AVATAR
          leading: CircleAvatar(
            radius: 30, // Tamaño del avatar
            backgroundImage: NetworkImage(urlImagen),
            backgroundColor: Colors.white24, // Color de carga
          ),
          // 2. TÍTULO
          title: Text(
            titulo,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 148, 148),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          // 3. SUBTÍTULO
          subtitle: Text(
            subtitulo,
            style: const TextStyle(
              color: Color.fromARGB(179, 0, 0, 0), // Blanco con transparencia para jerarquía
            ),
          ),
          // 4. ICONO LIKE
          trailing: const Icon(
            Icons.favorite_border, // O usa Icons.favorite para relleno
            color: Color.fromARGB(255, 255, 165, 165),
            size: 30,
          ),
        ),
      ),
    );
  }
}
