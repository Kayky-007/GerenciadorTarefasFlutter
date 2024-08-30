import 'package:flutter/material.dart';
import 'package:gerenciador/components/espacamento_h.dart';

class AdicionartarefView extends StatefulWidget {
  const AdicionartarefView({super.key});

  @override
  State<AdicionartarefView> createState() => _AdicionartarefViewState();
}

class _AdicionartarefViewState extends State<AdicionartarefView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Tarefa'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Título',
                labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                prefixIcon:
                    const Icon(Icons.title, color: Colors.deepPurpleAccent),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Colors.deepPurple, width: 2.0),
                ),
              ),
            ),
            const EspacamentoH(h: 20),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Descrição',
                labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                prefixIcon: const Icon(Icons.description,
                    color: Colors.deepPurpleAccent),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Colors.deepPurple, width: 2.0),
                ),
              ),
            ),
            const EspacamentoH(h: 30),
            InputDatePickerFormField(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(
                  const Duration(days: 365)), 
              lastDate: DateTime.now().add(const Duration(
                  days: 365)), 
              onDateSubmitted: (date) {
             
              },
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, '/main');
                  },
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: const Text(
                    'Adicionar',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 61, 54, 83),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    elevation: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
