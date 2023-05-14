import 'package:embedded_system/app/data/models/setores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetoresCard extends StatelessWidget {
  final Setores setores;
  const SetoresCard({Key? key, required this.setores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: SizedBox(
          height: 150.sp,
          width: 150.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
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
