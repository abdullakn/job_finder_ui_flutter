import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobDetails extends StatelessWidget {
  final Job job;
  const JobDetails({required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(39), topRight: Radius.circular(30))),
        height: 550,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.2),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(job.logoUrl),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            job.company,
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            job.isMark
                                ? Icons.bookmark
                                : Icons.bookmark_add_outlined,
                            color: job.isMark
                                ? Theme.of(context).primaryColor
                                : Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.more_horiz_outlined)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    job.title,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(
                          icon: Icons.location_on_outlined, text: job.location),
                      IconText(icon: Icons.access_time_outlined, text: job.time)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Requirements",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...job.req
                      .map((e) => Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width -
                                                75),
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          wordSpacing: 2.5, height: 1.5),
                                    ))
                              ],
                            ),
                          ))
                      .toList(),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                height: 45,
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text('Apply Now')),
              )
            ],
          ),
        ));
  }
}
