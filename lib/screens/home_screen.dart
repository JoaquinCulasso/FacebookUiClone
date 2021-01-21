import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final dividerZeroHeight = Divider(
    color: Colors.grey[350],
    height: 0,
    thickness: 1,
  );

  final dividerHeigh = Divider(
    color: Colors.grey[400],
    height: 10,
    thickness: 10,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
          title: Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconAppBar(icon: FontAwesomeIcons.search),
            SizedBox(width: 7),
            IconAppBar(icon: FontAwesomeIcons.facebookMessenger),
            SizedBox(width: 7),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: IconsSelectorBar(),
                ),
                dividerZeroHeight,
                Expanded(
                  flex: 1,
                  child: WriteStatus(),
                ),
                dividerZeroHeight,
                Expanded(
                  flex: 1,
                  child: SharedBar(),
                ),
                dividerHeigh,
                Expanded(
                  flex: 3,
                  child: GreetFriend(),
                ),
                dividerHeigh,
                Expanded(
                  flex: 4,
                  child: Histories(),
                ),
                Expanded(
                  flex: 4,
                  child: UsersStatus(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UsersStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
    final status = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/cap.jpeg',
                      scale: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Joaquin Culasso', style: title),
                      Text(
                        '2h',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop .. ",
            style: status,
          ),
        ],
      ),
    );
  }
}

class Histories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxHistories(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
      ],
    );
  }
}

class BoxHistories extends StatelessWidget {
  final String imagePath, name;

  const BoxHistories({@required this.imagePath, @required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Stack(
        children: [
          Container(
            width: 110,
            height: size.height,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/cap.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GreetFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
        BoxGreetFriend(
          imagePath: 'assets/profile.jpeg',
          name: 'Joaquin',
        ),
      ],
    );
  }
}

class BoxGreetFriend extends StatelessWidget {
  final String imagePath;
  final String name;

  const BoxGreetFriend({@required this.imagePath, @required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey[300]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fitWidth,
                        scale: 7,
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueAccent[200],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Saludar',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SharedBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        IconsSharedBar(
          icon: CupertinoIcons.video_camera_solid,
          color: Colors.red,
          text: 'Directo',
        ),
        VerticalDivider(
          color: Colors.grey[300],
          thickness: 1,
          width: 0,
          indent: 8,
          endIndent: 8,
        ),
        IconsSharedBar(
          icon: FontAwesomeIcons.images,
          color: Colors.green[300],
          text: 'Foto',
        ),
        VerticalDivider(
          color: Colors.grey[300],
          thickness: 1,
          width: 0,
          indent: 8,
          endIndent: 8,
        ),
        IconsSharedBar(
          icon: Icons.video_call,
          color: Colors.purple[300],
          text: 'Sala',
        ),
      ],
    );
  }
}

class IconsSharedBar extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const IconsSharedBar({
    @required this.color,
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 30),
        SizedBox(width: 7),
        Text(text),
      ],
    );
  }
}

class WriteStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipOval(
            child: Image.asset('assets/profile.jpeg'),
          ),
          Container(
            alignment: Alignment.center,
            width: (size.width / 2) * 1.5,
            constraints: BoxConstraints(
              maxWidth: size.width - 80,
              minHeight: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.elliptical(50, 50),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                hintText: '¿Que estas pensando?',
                prefixText: '     ',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconsSelectorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconsSelector(icon: Icons.home, selector: true),
          IconsSelector(icon: CupertinoIcons.person_3_fill),
          IconsSelector(icon: FontAwesomeIcons.storeAlt),
          IconsSelector(icon: CupertinoIcons.person_circle),
          IconsSelector(icon: CupertinoIcons.bell),
          IconsSelector(icon: CupertinoIcons.line_horizontal_3),
        ],
      ),
    );
  }
}

class IconsSelector extends StatelessWidget {
  final IconData icon;
  final bool selector;

  const IconsSelector({Key key, @required this.icon, this.selector})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: selector == true ? Colors.blue[800] : Colors.grey[600],
        size: 30,
      ),
    );
  }
}

class IconAppBar extends StatelessWidget {
  final IconData icon;

  const IconAppBar({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
