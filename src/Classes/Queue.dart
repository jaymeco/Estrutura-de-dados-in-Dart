class ElementQueue {
  ElementQueue? _previous;
  ElementQueue? _next;
  String _value = '';

  ElementQueue(
      {ElementQueue? previous, ElementQueue? next, required String value}) {
    this._previous = previous;
    this._next = next;
    this._value = value;
  }

  ElementQueue? get previous {
    return _previous;
  }

  ElementQueue? get next {
    return _next;
  }

  String get value {
    return _value;
  }
}

class Queue {
  String _title = 'Fila com apontadores';
  ElementQueue? _firtElement;
  ElementQueue? _lastElement;
  int _size = 0;

  Queue() {
    _firtElement = _lastElement = null;
  }

  String get title {
    return _title;
  }

  ElementQueue? get firtElement {
    return _firtElement;
  }

  ElementQueue? get lastElement {
    return _lastElement;
  }

  int get size {
    return _size;
  }

  void add(String value) {
    ElementQueue newElement = ElementQueue(value: value);
    if (firtElement == null) {
      _firtElement = _lastElement = newElement;
    } else {
      _lastElement?._next = newElement;
      newElement._previous = _lastElement;
      _lastElement = newElement;
    }
    _size++;
  }

  void remove() {
    if (_firtElement == null) {
      print('\nNão pode remover items de uma fila vazia!');
      return;
    }

    _firtElement?.next?._previous = null;
    _firtElement = _firtElement?._next;
    _size--;
  }

  void removeAll() {
    _firtElement = _lastElement;
    _size = 0;
  }

  void printQueue() {
    ElementQueue? aux = _firtElement;
    String queue = 'Fila de elementos: ';
    for (int i = 0; i < _size; i++) {
      if (aux != null) {
        if (i == 0) {
          queue += '${_firtElement?.value}';
        } else {
          queue += ', ${aux.next?.value}';
          aux = aux.next;
        }
      }
    }
    print(queue);
  }
}
