import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
          child: Text('Início'),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CountryInfoPage()),
                );
              },
              child: Text('Informação do País'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BestPlacesPage()),
                );
              },
              child: Text('Melhores Lugares'),
            ),
          ],
        ),
      ),
    );
  }
}

class CountryInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informação do País'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/japan.jpg', // Caminho para a imagem local
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Japão, um país insular na Ásia Oriental, é conhecido por sua mistura única de tradições antigas e tecnologia moderna. Tóquio, a capital, é uma cidade vibrante que oferece uma variedade de experiências culturais e gastronômicas.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para o Menu'),
            ),
          ],
        ),
      ),
    );
  }
}

class BestPlacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lugares para visitar'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Tóquio'),
            subtitle: Text(
                'A capital vibrante do Japão, famosa por sua cultura e tecnologia.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TokyoInfoPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Quioto'),
            subtitle: Text(
                'Conhecida por seus templos clássicos, jardins e tradições antigas.'),
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Osaka'),
            subtitle: Text('Famosa por sua vida noturna e comida de rua.'),
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Hokkaido'),
            subtitle: Text(
                'Renomada por suas paisagens naturais e estações de esqui.'),
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Okinawa'),
            subtitle: Text('Conhecida por suas belas praias e clima tropical.'),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para o Menu'),
            ),
          ),
        ],
      ),
    );
  }
}

class TokyoInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações sobre Tóquio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/tokyo.jpg', // Certifique-se de ter a imagem correspondente
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Tóquio é a capital do Japão e uma das cidades mais dinâmicas do mundo. Conhecida por seus arranha-céus, cultura pop, e uma impressionante cena gastronômica, Tóquio oferece uma mistura única de tradição e modernidade.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para Melhores Lugares'),
            ),
          ],
        ),
      ),
    );
  }
}
