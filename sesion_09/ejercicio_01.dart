class User {
  var name = '';
  var id = 0;
}

void main() {
  final user = User();
  user.name = 'Don godin';
  user.id = 2030;

  final userSystem = User()
    ..name = 'Don sistemas'
    ..id = 3;
}
