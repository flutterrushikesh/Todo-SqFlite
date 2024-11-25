import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Controller/task_controller.dart';
import 'package:taskly/View/Home_Screen/Widget/my_bottom_sheet.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> listOfColor = [
      const Color.fromRGBO(36, 161, 156, 1),
      const Color.fromRGBO(14, 98, 81, 1),
      const Color.fromRGBO(21, 67, 96, 1),
      const Color.fromRGBO(81, 46, 95, 1),
    ];
    final List<String> listOfPopupButton = [
      "Update task",
      "Delete Task",
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: Provider.of<TaskController>(context).listOfTask.length, //
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context: context, responsiveWidth: 0.041),
              vertical: screenHeight(context: context, responsiveHeight: 0.018),
            ),
            child: Container(
              padding: EdgeInsets.only(
                bottom: screenHeight(context: context, responsiveHeight: 0.018),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 40,
                    color: Color.fromRGBO(15, 22, 58, 0.3),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          screenWidth(context: context, responsiveWidth: 0.041),
                      vertical: screenHeight(
                          context: context, responsiveHeight: 0.018),
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: listOfColor[index % listOfColor.length],
                    ),
                    child: Row(
                      children: [
                        Text(
                          Provider.of<TaskController>(context)
                              .listOfTask[index]
                              .task,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                fontSize: screenWidth(
                                  context: context,
                                  responsiveWidth: 0.051,
                                ),
                                color: const Color.fromRGBO(255, 255, 255, 01),
                              ),
                        ),
                        const Spacer(),
                        PopupMenuButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () {
                                taskBottomSheet(context: context);
                              },
                              height: screenHeight(
                                  context: context, responsiveHeight: 0.04),
                              child: Text(
                                "Update Task",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: listOfColor[
                                          index % listOfColor.length],
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Provider.of<TaskController>(context,
                                        listen: false)
                                    .deleteTask(index: index);
                              },
                              height: screenHeight(
                                  context: context, responsiveHeight: 0.04),
                              child: Text(
                                "Delete Task",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: listOfColor[
                                          index % listOfColor.length],
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                          ],

                          // [
                          //
                          // ],
                          icon: Icon(
                            Icons.more_horiz,
                            size: screenWidth(
                                context: context, responsiveWidth: 0.07),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right:
                          screenWidth(context: context, responsiveWidth: 0.041),
                      left:
                          screenWidth(context: context, responsiveWidth: 0.041),
                      top: screenHeight(
                        context: context,
                        responsiveHeight: 0.018,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Provider.of<TaskController>(context)
                              .listOfTask[index]
                              .description,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Checkbox(
                              value: Provider.of<TaskController>(context)
                                  .listOfTask[index]
                                  .isComplete,
                              checkColor: Colors.white,
                              activeColor:
                                  listOfColor[index % listOfColor.length],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              onChanged: (value) {
                                Provider.of<TaskController>(context,
                                        listen: false)
                                    .completeTask(index: index);
                              },
                            ),
                            const Spacer(),
                            Text(
                              Provider.of<TaskController>(context)
                                  .listOfTask[index]
                                  .date,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
