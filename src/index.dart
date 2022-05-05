import 'Classes/Queue.dart';

void main() {
  Queue myQueue = Queue();
  print('---- ${myQueue.title} ----');

  if(myQueue.size <= 0) {
    print('A fila está vazia!');
    return;
  }
  print('''Primeiro da fila: ${myQueue.firtElement}''');
  print('''Último da fila: ${myQueue.firtElement}''');
}
