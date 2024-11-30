abstract class userevent {}

class Adduser extends userevent {
  final String name;
  Adduser(this.name);
}

class Removeuser extends userevent {
  final String name;
  Removeuser(this.name);
}

class Clearuser extends userevent {}
