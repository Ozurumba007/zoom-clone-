import 'package:flutter/material.dart';
import 'package:zoom_clone_app/widgets/home_meeting_button.dart';

import '../utili/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.videocam,
                text: 'New Meeting',
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting',
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.calendar_today,
                text: 'Schedule',
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen',
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just a lick!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14.0,
        backgroundColor: footerColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logo_dev),
            label: 'Meet & Chat',
          ),
        ],
      ),
    );
  }
}
