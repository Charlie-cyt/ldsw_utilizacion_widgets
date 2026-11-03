import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LDSW - Utilización de Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetsActivityScreen(),
    );
  }
}

class WidgetsActivityScreen extends StatelessWidget {
  const WidgetsActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividad 3.4: Widgets Básicos'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. CONTAINER WIDGET
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.indigo.shade200),
              ),
              child: const Column(
                children: [
                  // 2. TEXT WIDGET
                  Text(
                    'Demostración de Widgets en Flutter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Esta aplicación implementa Text, Row, Column, Stack y Container.',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 3. ROW WIDGET
            const Text(
              'Ejemplo de Widget Row (Fila):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                  label: const Text('Calificar'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.info),
                  label: const Text('Detalles'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 4. COLUMN WIDGET
            const Text(
              'Ejemplo de Widget Column (Columna):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Elemento 1 de la lista vertical'),
                SizedBox(height: 4),
                Text('• Elemento 2 de la lista vertical'),
                SizedBox(height: 4),
                Text('• Elemento 3 de la lista vertical'),
              ],
            ),
            const SizedBox(height: 20),

            // 5. STACK WIDGET
            const Text(
              'Ejemplo de Widget Stack (Superposición):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Center(
              child: SizedBox(
                width: 250,
                height: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      child: Text(
                        'Tarjeta con Stack',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black45,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 15,
                      child: Icon(
                        Icons.layers,
                        size: 50,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}