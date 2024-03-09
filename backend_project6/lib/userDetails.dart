import 'package:flutter/material.dart';

class UserDetail extends StatefulWidget {
  Map userDetails = {};
  UserDetail({super.key, required this.userDetails});

  @override
  State<UserDetail> createState() => _UserDetailState(userDetails);
}

class _UserDetailState extends State<UserDetail> {
  Map userDetails = {};
  _UserDetailState(this.userDetails);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userDetails['username']),
      ),
    );
  }
}
