import 'package:embedded_system/app/modules/setores/presentation/widgets/setores_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entity/setor.dart';

class SetoresListView extends StatelessWidget {
  final List<Setor> list;
  final String name;
  final Function(int) onTap;
  final String title;
  const SetoresListView(
      {Key? key, required this.list, required this.name, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          height: 100.sp,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.sp),
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return SetoresCard(
                setores: list[index],
                select: ()=>onTap(index),
                isSelected: list[index].name == name,
              );
            },
          ),
        ),
      ],
    );
  }
}
