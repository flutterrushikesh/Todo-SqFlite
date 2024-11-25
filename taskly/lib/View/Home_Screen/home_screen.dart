import 'package:flutter/material.dart';
import 'package:taskly/View/Home_Screen/Widget/my_bottom_sheet.dart';
import 'package:taskly/View/Home_Screen/Widget/task_card.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight:
                screenHeight(context: context, responsiveHeight: 0.11),
            floating: false,
            backgroundColor: Colors.white,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: RichText(
                text: TextSpan(
                  text: "Hello,\n",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                  children: [
                    TextSpan(
                      text: "Rushikesh",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
              titlePadding: EdgeInsets.symmetric(
                horizontal: screenWidth(
                  context: context,
                  responsiveWidth: 0.035,
                ),
                vertical:
                    screenHeight(context: context, responsiveHeight: 0.012),
              ),
            ),
          ),
          // Column(
          //         children: [
          //           Image.asset('assets/images/no task.png'),
          //           Text(
          //             "No Task Availble",
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .bodyMedium!
          //                 .copyWith(color: Colors.black),
          //           ),
          //         ],
          //       );
          const TaskCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          taskBottomSheet(context: context);
        },
        backgroundColor: Theme.of(context).primaryColor,
        label: Text(
          "Create Task",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
