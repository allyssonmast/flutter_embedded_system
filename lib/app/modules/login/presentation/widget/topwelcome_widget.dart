import 'package:flutter/material.dart';

class WidgetTopWelcome extends StatelessWidget {
  const WidgetTopWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/C4D0BAQGnME1IMU3vtA/company-logo_200_200/0/1522161926314?e=2147483647&v=beta&t=N6qvBwAU3BRDnzznKEvMFA2QoDC7EaCxWOAN3ZiHBNU'),
        ),
        Text('Seja Bem-vindo', style: Theme.of(context).textTheme.bodyLarge),
        Text('Faça login para acessa sua conta',
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
