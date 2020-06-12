import 'package:flutter/material.dart';
import 'package:swype_flutter/models/user_model.dart';
import 'package:swype_flutter/widgets/custom_drawer.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  ProfileScreen({this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    widget.user.backgroundImageUrl,
                  ),
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 30.0,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
