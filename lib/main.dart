import 'package:flutter/material.dart';
import 'package:gerenciador/components/espacamento_h.dart';
import 'package:gerenciador/components/fab.dart';
import 'package:gerenciador/components/tarefa.dart';
import 'package:gerenciador/views/adicionarTaref_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Configuração correta das rotas
      routes: {
        '/addTafera': (context) =>  AdicionartarefView(),
        '/main': (context) =>  MyApp(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gerenciador de Tarefas'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Tarefa(texto: 'Estudar Matematica'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Estudar Ingles'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Estudar JavaScript'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Ler um livro'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Jantar'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Trabalhar'),
              EspacamentoH(h: 40),
              Tarefa(texto: 'Trabalhar'),
            ],
          ),
        ),
        floatingActionButton: Fab(),
      ),
    );
  }
}


