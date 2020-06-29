import 'package:flutter/material.dart';
import 'user.dart'

class Media {
  int _numOfLikes;
  User _user;
  List<User> _likedBy;
  List<Comment> _comments;
  Board _board;
  String _id;
  Date _timeStamp;

  Media(
    this._numOfLikes,
    this._user,
    this._likedBy,
    this._comments,
    this._board,
    this._id,
    this._timeStamp);

  Media.simple(
    this._numOfLikes,
    this._timeStamp;
  )

  //Getters
  int get numOfLikes => _numOfLikes;
  User get user => _user;
  User get likedBy => _likedBy;
  Comment get comments => _comments;
  Board get board => _board;
  String get id => _id;
  Date get timeStamp => _timeStamp;

  //Setters
  set numOfLikes(int value) {
    _numOfLikes = value;
  }

  set id(String value) {
    _id = value;
  }

  @override
  String toString() {
    return 'Media(_numOfLikes: $_numOfLikes, _user: $_user, _likedBy: $_likedBy, _comments: $_comments,
     _board = $_board, _id: $_id, _timeStamp: $_timeStamp}';
  }

  @override
  bool equals(User other){
    return this.toString() == other.toString();
  }

  int compareTo(Media other) {
    if(other.getDate() > getDate()) {
      return -1;
    }
    else if (other.getDate() == getDate()) {
      return 0;
    }
    else {
      return 1;
    }
  }
}
