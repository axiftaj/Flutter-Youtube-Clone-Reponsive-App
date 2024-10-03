import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/channel_share_button.dart';
import 'package:flutter_responsive_admin_panel/screen/dashboard_screen/widgets/subscribe_button_widget.dart';


import '../../../responsive.dart';
import 'like_and_dislike_button_widget.dart';
import 'menu_icon_button_widget.dart';

class ChannelProfileButtonBar extends StatelessWidget {
  const ChannelProfileButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const SubscribeButtonWidget(),
              if(Responsive.isDesktop(context) || Responsive.isTablet(context))
                const Spacer(),
              if(Responsive.isDesktop(context) ||  Responsive.isTablet(context))
                const LikeAndDislikeButtonWidget(),
              const  SizedBox(width: 10,),

              if(MediaQuery.of(context).size.width > 1270 )
                const ChannelShareButton(),
              if(Responsive.isDesktop(context) || Responsive.isTablet(context))
                const SizedBox(width: 10,),
              if(Responsive.isDesktop(context) ||  Responsive.isTablet(context))
                const MenuButtonWidget(),
            ],
          ),
          if(Responsive.isMobile(context))
            const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
              child:   Row(
                children:  [
                  LikeAndDislikeButtonWidget(),
                  SizedBox(width: 12,),
                  ChannelShareButton(),
                  SizedBox(width: 12,),
                  MenuButtonWidget(),
                ],
              ),
            )

        ],
      ),
    );
  }
}
