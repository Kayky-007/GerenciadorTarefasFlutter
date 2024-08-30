import 'package:flutter/material.dart';

class Criadortarefa extends StatefulWidget {
  const Criadortarefa({super.key});

  @override
  State<Criadortarefa> createState() => _CriadortarefaState();
}

class _CriadortarefaState extends State<Criadortarefa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Criação de Tarefas'),
        
      ),
      body: Column(
        children: [
          Text('Bem vindo ao inicio do gerenciador de tarefas!'),
          
              
        ],
      ),
      
    );
  }
}