import 'main.dart';
class Status extends Media{
  String _status;

  Status(
    this._status;
  );

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  @override
  String toString() {
    return 'Media(_value: $_value}';
  }

  @override
  bool equals(User other){
    return this.toString() == other.toString();
  }
}
