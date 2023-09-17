import 'package:flutter/material.dart';
import 'package:stage_two_mobile/screens/edit_screen.dart';

import '../widget/details_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = 'Uthman Ahmed';
  String _stack = 'Mobile & Backend Developer';
  String _slack = 'Hutty';
  String _email = 'opedayo81@gmail.com';
  String _github = 'Hutty10';
  String _phone = '+2347062570739';
  String _location = 'Nigeria';
  String _bio =
      'I am a skilled software developer with a passion for creating user-friendly and efficient applications.';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffECECEC),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  width: size.width,
                  bottom: -60,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile_pic.jpeg'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 5,
                  child: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                        builder: (_) => const EditCVPage(),
                      ),
                    )
                        .then((value) {
                      setState(() {
                        _name = value['name'] ?? _name;
                        _stack = value['stack'] ?? _stack;
                        _slack = value['slack'] ?? _slack;
                        _email = value['email'] ?? _email;
                        _phone = value['phone'] ?? _phone;
                        _github = value['github'] ?? _github;
                        _location = value['location'] ?? _location;
                        _bio = value['bio'] ?? _bio;
                      });
                    }),
                    color: Colors.white,
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          Text(
            _name,
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  _stack,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Details(
                      text: _slack,
                      image: 'assets/images/slack_logo.png',
                      width: 70,
                    ),
                    const SizedBox(width: 30),
                    Details(
                      text: _email,
                      icon: Icons.email_outlined,
                      width: 180,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Details(
                      text: _github,
                      image: 'assets/images/github_logo.png',
                      width: 70,
                    ),
                    const SizedBox(width: 32),
                    Details(
                      text: _phone,
                      icon: Icons.phone,
                      width: 180,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const SizedBox(width: 100),
                    Details(
                      text: _location,
                      icon: Icons.location_on_outlined,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                Text(
                  _bio,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'Language & Framework: ',
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: SizedBox(
                    width: size.width * .85,
                    child: Text(
                      'Dart, Flutter, Python, Django, HTML, CSS, Javascript',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'Skills: ',
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: SizedBox(
                    width: size.width * .85,
                    child: Text(
                      'Problem Solving, Good Communication, Team Leader, Team Work, Time Management',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
