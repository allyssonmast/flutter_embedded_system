import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    selectedIndex = tabsRouter.activeIndex;
    var mapDrawer = {
      'icons': [
        Icons.sensors,
       // Icons.bar_chart,
        Icons.timeline,

      ],
      'name': [
        'Sensores',
      //  'Histórico dos sensores',
        'Rastreamento',
      ],
    };

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Vitagema"),
              accountEmail: Text("vitagema@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/C4D0BAQGnME1IMU3vtA/company-logo_200_200/0/1522161926314?e=2147483647&v=beta&t=N6qvBwAU3BRDnzznKEvMFA2QoDC7EaCxWOAN3ZiHBNU'),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: mapDrawer['icons']!.length,
              itemBuilder: (_, index) {
                return ListTile(
                  selected: index == selectedIndex,
                  onTap: () {
                    context.router.pop();

                    tabsRouter.setActiveIndex(index);

                    selectedIndex = index;
                    setState(() {});
                  },
                  horizontalTitleGap: 8,
                  leading: Icon(mapDrawer['icons']![index] as IconData),
                  title: Text(mapDrawer['name']![index] as String),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
