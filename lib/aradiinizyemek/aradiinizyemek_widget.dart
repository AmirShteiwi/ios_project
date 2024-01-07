import 'package:flutter/material.dart';

class AradiinizyemeiWidget extends StatefulWidget {
  const AradiinizyemeiWidget({Key? key}) : super(key: key);
  @override
  State<AradiinizyemeiWidget> createState() => _AradiinizyemeiWidget();
}
class _AradiinizyemeiWidget extends State<AradiinizyemeiWidget> {
  final List<Map<String, dynamic>> _allWords = [
    {'id': 1, 'name': 'Bezelye Çorbası', 'mean': '100g	75 kcal'},
    {
      'id': 2,
      'name': 'Bulgur Pilavı',
      'mean': '100g	215 kcal'
    },
    {'id': 3, 'name': 'Meksika Dürümü', 'mean': '100g	163 kcal'},
    {
      'id': 4,
      'name': 'Kıymalı Fasulye',
      'mean': '100g	105 kcal'
    },
    {
      'id': 5,
      'name': 'Hint Bezelye Yemeği',
      'mean': '100g	330 kcal'
    },
    {'id': 6, 'name': 'Domuz Pirzola', 'mean': '100g	225 kcal'},
    {'id': 7, 'name': 'Enchilada', 'mean': '100g	168 kcal'},
    {
      'id': 8,
      'name': 'Esmer Pirinç',
      'mean':
      '100g	362 kcal'
    },
    {
      'id': 9,
      'name': 'Fajita',
      'mean': '100g	117 kcal'
    },
    {
      'id': 10,
      'name': 'Kabak',
      'mean': '26 kcal'
    },
    {
      'id': 11,
      'name': 'Kivi',
      'mean':
      '49 kcal'
    },
    {
      'id': 12,
      'name': 'Kiraz',
      'mean': '69 kcal'
    },
    {'id': 13, 'name': 'Mandalina', 'mean': '46 kcal'},
    {
      'id': 14,
      'name': 'Maydanoz',
      'mean': '44 kcal'
    },
    {
      'id': 15,
      'name': 'Marul',
      'mean': '14 kcal '
    },
    {
      'id': 16,
      'name': 'Soğan',
      'mean': '39 kcal '
    },
    {
      'id': 17,
      'name': 'Salatalık',
      'mean':
      '15 kcal'
    },
    {
      'id': 18,
      'name': 'Patlıcan',
      'mean': '25 kcal '
    },
    {
      'id': 19,
      'name': 'Siyah üzüm	',
      'mean': '71 kcal'
    },
    {
      'id': 20,
      'name': 'Vişne',
      'mean': '60 kcal'
    },

  ];
  List<Map<String, dynamic>> _foundWords = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _foundWords = _allWords;
  }

  void _filter(String key) {
    List<Map<String, dynamic>> results = [];
    if (key.isEmpty) {
      results = _allWords;
    } else {
      results = _allWords
          .where((element) =>
          element['name'].toLowerCase().contains(key.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundWords = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow.shade500,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade400,
          title: Text(
            'Aradiğiniz yemeği',
            style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => _filter(value),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                    labelText: 'Search...',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      Icons.list,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                  child: _foundWords.isNotEmpty
                      ? ListView.builder(
                      itemCount: _foundWords.length,
                      itemBuilder: (context, index) {
                        return Card(
                          key: ValueKey(_foundWords[index]['id']),
                          color: Colors.lightBlueAccent.shade200,
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: const Icon(
                              Icons.stacked_line_chart,
                              color: Colors.black,
                            ),
                            title: Text(
                              _foundWords[index]['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            subtitle: Text(_foundWords[index]['mean'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontSize: 16)),
                            trailing: Text(
                                _allWords[index]['id'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontSize: 15,
                                    backgroundColor: Colors.white)),
                          ),
                        );
                      })
                      : const Center(
                    child: Text('Nothing Found'),
                  ))
            ],
          ),
        ));
  }
}
