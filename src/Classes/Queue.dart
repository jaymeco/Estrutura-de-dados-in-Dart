class Queue {
  String _title = 'Fila com apontadores';
  Map<String, Map<String, String>> _firtElement = {};
  Map<String, Map<String, String>> _lasttElement = {};
  int _size = 0;

  String get title {
    return _title;
  }

  Map<String, Map<String, String>> get firtElement {
    return _firtElement;
  }

  Map<String, Map<String, String>> get lasttElement {
    return _lasttElement;
  }

  int get size {
    return _size;
  }
}