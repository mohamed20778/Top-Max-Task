import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Image.asset(MyAssets.images.png.figma.path),
         SizedBox(height: 22.h,),  
        Text(
          "Let’s help you find the perfect",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Text("job or course",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w600)),
            Text(", you deserve!",
                style: Theme.of(context).textTheme.headlineMedium),
          ],
        )
      ],
    );
  }
}