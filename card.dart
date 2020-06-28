class Card {
  int id;
  String title;
  String content;

  //construtor
  Card(int id, String title, String content) {
    this.id = id;
    this.title = title;
    this.content = content;
  }
  // construtor nomeado
  Card.apartirDoMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    content = map['content'];
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'content': content};
  }

  @override
  String toString() {
    return 'id: $id, titulo: $title, conteudo: $content';
  }
}
