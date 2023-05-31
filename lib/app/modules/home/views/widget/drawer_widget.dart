import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mapDrawer = {
      'icons': [
        Icons.sensors,
        Icons.remove_circle_outline,
        Icons.inventory_2_outlined,
        Icons.group_outlined,
        Icons.groups,
      ],
      'name': ['Sensores', 'Perdas', 'Lotes', 'Clientes', 'Funcionarios'],
    };

    return Drawer(
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
                selected: index == 0,
                onTap: () {
                  context.router.pop();
                  final tabsRouter = AutoTabsRouter.of(context);
                  tabsRouter.setActiveIndex(index);
                },
                horizontalTitleGap: 8,
                leading: Icon(mapDrawer['icons']![index] as IconData),
                title: Text(mapDrawer['name']![index] as String),
              );
            },
          ),
        ],
      ),
    );
  }
}
