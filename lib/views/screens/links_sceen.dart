import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/links_estaticos.dart';
import '../../themes/my_themes.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';
import '../widgets/link_button.dart';

class Links_screen extends StatefulWidget {
  const Links_screen({Key? key}) : super(key: key);

  @override
  State<Links_screen> createState() => _Links_screenState();
}

class _Links_screenState extends State<Links_screen> {

  void launchExternalWebsite(String url) async {
    var urlUri = Uri.parse(url);
    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'could not lanch $urlUri';

    }
  }
  @override
  Widget build (BuildContext context) {
     return  Scaffold(
       appBar: CustomAppBar('Links úteis'),
       drawer:  DrawerAppbar(),
       body: SingleChildScrollView(
         child: Center(
           child: Column(

             children: [
               SizedBox(height: 15,),
               Text(
                 'Somos um movimento de mobilização para encarar problemas socioambientais.',
                 style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
                 textAlign: TextAlign.center,
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: links_list
                     .map((Link) => Link_button(
                   titulo: Link.titulo,
                   imagePath: Link.imagePath,
                   url: Link.url,
                   imageHeigth:  MediaQuery.of(context).size.height * 0.10,))
                     .toList(),
               ),
             ],
           ),
         ),
       ),
       backgroundColor: MyThemes.colorScreen,

     );
  }
}


