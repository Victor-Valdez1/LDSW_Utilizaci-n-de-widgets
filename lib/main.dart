import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grupo Javid',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Grupo Javid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscurePassword = true; // Controla la visibilidad de la contraseña

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            // Aquí se agrega la imagen
            const Image(
              image: AssetImage('img/JavidNoBG.webp'),
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            const Text(
              'Grupo Javid',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Espaciado entre widgets

            // Aquí está el nuevo Column
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("RFC"),
                const SizedBox(height: 10), // Espaciado entre elementos
                // Contenedor para limitar el ancho del TextField
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8, // Ancho del 80% del contenedor padre
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Ingrese su RFC aquí',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Contraseña"),
                const SizedBox(height: 10),
                // Contenedor para limitar el ancho del TextField de contraseña
                PasswordField(
                  obscureText: _obscurePassword,
                  onToggleVisibility: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword; // Alternar visibilidad
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Espaciado entre las columnas y el botón

            // Botón "Iniciar sesión"
            ElevatedButton(
              onPressed: () {
               
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggleVisibility;

  const PasswordField({
    super.key,
    required this.obscureText,
    required this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8, // Ancho del 80% del contenedor padre
      child: TextField(
        obscureText: obscureText, // Ocultar texto en el campo de contraseña
        decoration: InputDecoration(
          labelText: 'Ingrese su contraseña aquí',
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: onToggleVisibility, // Alternar visibilidad
          ),
        ),
      ),
    );
  }
}
