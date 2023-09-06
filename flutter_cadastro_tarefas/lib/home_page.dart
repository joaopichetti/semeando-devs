import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageSate();
}

class _HomePageSate extends State<HomePage> {
  final _controller = TextEditingController();
  final _tarefas = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Descreva a tarefa',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _adicionarTarefa,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tarefas.length,
              itemBuilder: (context, index) {
                final tarefa = _tarefas[index];
                return ListTile(
                  title: Text(tarefa),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _removerTarefa(index),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  _adicionarTarefa() {
    final tarefa = _controller.text;
    setState(() {
      _tarefas.add(tarefa);
    });
    _controller.clear();
  }

  _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }
}
