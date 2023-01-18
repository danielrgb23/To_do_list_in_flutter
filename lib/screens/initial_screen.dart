import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                3),
            Task(
                'Postar no Linkedin',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPw-j-FtH0au31iMh7W6X2tofUMRMsGKxP9Q&usqp=CAU',
                4),
            Task(
                'Estudar as redes sociais',
                'https://static.todamateria.com.br/upload/re/de/redessociaisinteracaopessoas-cke.jpg',
                2),
            Task(
                'Estudar as redes sociais',
                'https://static.todamateria.com.br/upload/re/de/redessociaisinteracaopessoas-cke.jpg',
                3),
            Task(
                'Estudar as redes sociais',
                'https://static.todamateria.com.br/upload/re/de/redessociaisinteracaopessoas-cke.jpg',
                3),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}