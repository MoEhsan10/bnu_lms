import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'content_box.dart';

class UpcomingItemsList extends StatelessWidget {
  const UpcomingItemsList({super.key, required this.upcomingItems});
  final List<Map<String, dynamic>> upcomingItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      // Add this line
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: upcomingItems.length,
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        final item = upcomingItems[index];
        return Slidable(
          key: ValueKey(index),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            // dismissible: DismissiblePane(onDismissed: () {
            //   setState(() {
            //     // upcomingItems.removeAt(index);
            //   });
            // }),
            children: [
              SlidableAction(
                onPressed: (context) {
                  // setState(() {
                  //   upcomingItems.removeAt(index);
                  // });
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
                borderRadius: BorderRadius.circular(18.r),
              ),
            ],
          ),
          child: ContentBox(
            icon: item['icon'],
            title: item['title'],
            subtitle: item['subtitle'],
          ),
        );
      },
    );
  }
}
