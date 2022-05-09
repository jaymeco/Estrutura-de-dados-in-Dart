import 'Classes/Queue.dart';

void main() {
  Queue myQueue = Queue();
  print('---- ${myQueue.title} ----');

  myQueue.add('jayme');
  myQueue.add('paulo');
  myQueue.add('carlos');
  myQueue.add('joao');
  myQueue.add('caio');
  // myQueue.remove();
  // myQueue.remove();
  // myQueue.removeAll();
  myQueue.printQueue();
  if (myQueue.size <= 0) {
    print('A fila está vazia!');
    return;
  }
  print('''Número de elementos: ${myQueue.size}''');
  print('''Primeiro da fila: ${myQueue.firtElement?.value}''');
  print('''Último da fila: ${myQueue.lastElement?.value}''');
}
