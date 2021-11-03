import 'package:flutter/material.dart';
import 'package:starter_project/assets/colors.dart';
import 'package:starter_project/home_screen.dart';
import 'package:starter_project/sxreens/screen_one.dart';
import 'package:starter_project/sxreens/screen_three.dart';
import 'package:starter_project/sxreens/screen_two.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //using Material instead of Container allows inkwell behavior
      child: Material(
        color: Colors.white12,
        child: Container(
          //height: double.infinity,
          //padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 3.0),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
            children: [
              const SizedBox(height: 70.0),
              //profile box
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 11.0, vertical: 3.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.cyan,
                      radius: 30.0,
                      backgroundImage:
                          AssetImage('lib/assets/images/chinaskiAvatar.jpg'),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Henry Chinaski',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Writer and skid row bum',
                          style: TextStyle(
                              fontSize: 14,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const FaIcon(
                      FontAwesomeIcons.beer,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              buildMenuItem(
                  text: 'Home',
                  icon: Icons.home_filled,
                  screen: const HomeScreen()),
              const SizedBox(height: 12.0),
              buildMenuItem(
                  text: 'One',
                  icon: Icons.face_rounded,
                  screen: const ScreenOne()),
              const SizedBox(height: 12.0),
              ListTile(
                hoverColor: Colors.blueGrey,
                leading: const FaIcon(
                  FontAwesomeIcons.fire,
                  color: darkFontStyle,
                ),
                title: const Text(
                  'Screen Two',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: darkFontStyle),
                ),
                subtitle: const Text(
                  'subtitle',
                  style: TextStyle(color: darkFontStyle),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenTwo()),
                  );
                },
              ),
              const SizedBox(height: 12.0),
              const Divider(
                color: lightFontStyle,
                thickness: 2.0,
              ),
              const SizedBox(height: 12.0),
              buildMenuItem(
                  text: 'Screen Three',
                  icon: Icons.favorite,
                  screen: const ScreenThree()),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required Widget screen,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30.0,
        color: darkFontStyle,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: const Text(
        'short description of this page\nshort description of page',
        style: TextStyle(color: darkFontStyle, fontSize: 15.0),
      ),
      onTap: () {
        //Navigator pop closes the drawer
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}
