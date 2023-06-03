import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../domain/entity/setor.dart';

class SetoresCard extends StatelessWidget {
  final Setor setores;
  final Function() select;
  final bool isSelected;
  const SetoresCard(
      {Key? key,
      required this.setores,
      required this.select,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Theme.of(context).primaryColor : null,
      child: InkWell(
        onTap: select,
        child: SizedBox(
          height: 150.sp,
          width: 150.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                setores.icon,
                size: 30.sp,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(setores.name),
              )
            ],
          ),
        ),
      ),
    );
  }
}
