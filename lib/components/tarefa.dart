import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador/components/espacamento_h.dart';
import 'package:gerenciador/components/titulo.dart';

class Tarefa extends StatelessWidget {
  final String texto;
  const Tarefa({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Titulo1(texto: texto, tamanho: 20),
                    Text(
                      '21-08-2024',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Ação para o botão de edição
                      },
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.confirm,
                          text: "Deseja excluir esta tarefa?",
                        );
                      },
                      child: Icon(
                        Icons.delete, // Cor do ícone
                      ),
                    ),
                  ],
                ),
              ],
            ),
            EspacamentoH(h: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COLABORADORES (Kayky)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      'Descrição da tarefa',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ],
    );
  }
}
