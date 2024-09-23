


import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/header.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/recommend_video_list.dart';

import '../../constants.dart';
import '../../responsive.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: [
            Header(),
            SizedBox(height: defaultPadding),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(
                 flex: 2,
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: AspectRatio(
                         aspectRatio: 16/9,
                         child: Container(
                           color: Colors.teal,
                         ),
                       ),
                     ),
                     if (Responsive.isDesktop(context) || Responsive.isTablet(context) )
                     ListView.builder(
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         itemCount: 10,
                         itemBuilder: (context, index){
                           return  Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 120,
                               color: Colors.deepPurple[200],
                             ),
                           );
                         }
                     ),
                   ],
                 ),
               ),
               if (Responsive.isDesktop(context))
                 Expanded(
                   flex: 1,
                   child: VideoRecommendationList(),
                 )
             ],
           ),
            if (Responsive.isMobile(context))
              VideoRecommendationList()

          ],
        )
    );
  }
}
