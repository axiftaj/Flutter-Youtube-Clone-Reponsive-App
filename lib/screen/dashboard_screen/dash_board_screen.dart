


import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/header.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/recommend_video_list.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/subscribe_button_widget.dart';

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
           const Padding(
              padding:  EdgeInsets.all(8),
              child:  Header(),
            ),
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
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(16),
                             color: Colors.teal,

                           ),
                         ),
                       ),
                     ),
                     const Padding(
                      padding:  EdgeInsets.only(left: 8, right: 8 , top: 8, bottom: 8),
                      child:  ChannelProfileButtonBar(),
                    ),

                     if (Responsive.isDesktop(context) || Responsive.isTablet(context) )
                       VideoRecommendationList(),

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
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              VideoRecommendationList()

          ],
        )
    );
  }
}
