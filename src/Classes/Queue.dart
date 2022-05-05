class Queue {
  String _title = 'Fila com apontadores';
  Map<String, Map<String, Map?>> _firtElement = {};
  Map<String, Map<String, Map?>> _lastElement = {};
  int _size = 0;

  String get title {
    return _title;
  }

  Map<String, Map<String, Map?>> get firtElement {
    return _firtElement;
  }

  Map<String, Map<String, Map?>> get lastElement {
    return _lastElement;
  }

  int get size {
    return _size;
  }

  void add(String value) {
    if (firtElement.isEmpty) {
      _firtElement = {
        value: {
          'previous': null,
          'next': null,
        }
      };
      _lastElement = _firtElement;
    } else {
      _lastElement = {
        value: {
          'previous': _lastElement,
          'next': null,
        }
      };
    }
    _size++;
  }
}
