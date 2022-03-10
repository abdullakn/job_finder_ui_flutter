import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.getJob();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(context: context, builder: builder)
                },
                child: JobItem(job: jobList[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
