

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../controller/menu_controller.dart';
import '../../../responsive.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset(
              'assets/youtube_logo.svg',
              semanticsLabel: 'Acme Logo' ,
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),

        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 1 : 1),
        if (!Responsive.isMobile(context))
        Expanded(
            flex: 4,
            child: SearchField()),
        if (Responsive.isMobile(context))
          Spacer(),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        if (Responsive.isMobile(context))
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        if (Responsive.isMobile(context))
          IconButton(onPressed: (){}, icon: const Icon(Icons.mic)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.video_call_outlined)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined)),
        const SizedBox(width: 20,),
        const   CircleAvatar(
          radius: 17,
          backgroundImage: NetworkImage('https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ), // Adds a border
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          borderSide: const BorderSide(color: Colors.white, width: 1), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          borderSide:const  BorderSide(color: Colors.white, width: 1), // Enabled border color
        ),
        suffixIcon: Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )
          ),
          child: const Icon(CupertinoIcons.search),
        ),
      ),
    );
  }
}
