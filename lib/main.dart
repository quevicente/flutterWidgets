import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Aula',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          iconTheme: IconThemeData(),
          backgroundColor: Colors.white,
          title: Text(
            'Aplicativo Aula',
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Text('Desenvolvimento de Sistemas Móveis',
                    style: TextStyle(height: 2.0)),
                Divider(),
                Text('Gerência de Projetos', style: TextStyle(height: 2.0)),
                Divider(),
                Text('Interface Humano Computador',
                    style: TextStyle(height: 2.0)),
                Divider(),
                Text('Sociedade e Contemporaneidade',
                    style: TextStyle(height: 2.0)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Cabecalho(), CabecalhoBaixo(), BadgeCard(), BadgeCard()],
          ),
        ),
      ),
    );
  }
}

class Cabecalho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Salas Virtuais',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
        ],
      ),
    );
  }
}

class CabecalhoBaixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Período:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(hint: Text('2020/2')),
            ),
          ),
        ),
      ],
    );
  }
}

class CaixaCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        children: [
          CardMateria(),
          CardMateriaBaixo(),
        ],
      ),
    );
  }
}

class CardMateria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: Card(
          margin: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0))),
          color: Colors.blue[700],
          child: Padding(
            padding: EdgeInsets.only(
                top: 32.0, left: 16.0, right: 16.0, bottom: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Cultura Digital',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Turma 21N/22N - 0509A - Graduação',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
              ],
            ),
          )),
    );
  }
}

class BadgeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        children: [
          Stack(children: [
            CaixaCards(),
            SizedBox(
              height: 30,
              width: 80,
              child: Card(
                margin: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0))),
                color: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '112172',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class CardMateriaBaixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0))),
        color: Colors.white,
        child: Column(
          children: [CaixaNotificacoes()],
        ),
      ),
    );
  }
}

class CaixaNotificacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: 160.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Badge(
                    badgeContent: Text(
                      '37',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    child: Icon(Icons.cloud, size: 30, color: Colors.grey[700]),
                  ),
                  Icon(Icons.info, size: 30, color: Colors.grey),
                ],
              ),
            ),
          ),
          CaixaEntrarSala()
        ],
      ),
    );
  }
}

class CaixaEntrarSala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green[700],
                  child: Text(
                    'Entrar na Sala',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
