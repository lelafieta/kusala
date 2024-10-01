import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kusala/src/core/resources/icons/app_icons.dart';
import 'package:kusala/src/core/utils/app_values.dart';
import 'package:kusala/src/features/chat/presentation/pages/message_page.dart';
import 'package:kusala/src/features/community/presentation/pages/community_page.dart';
import 'package:kusala/src/features/profile/presentation/pages/profile_page.dart';
import 'package:kusala/src/features/province/presentation/pages/province_page.dart';
import 'package:uicons/uicons.dart';

import '../../../community/data/datas.dart';

class KusalaPage extends StatefulWidget {
  const KusalaPage({super.key});

  @override
  State<KusalaPage> createState() => _KusalaPageState();
}

class _KusalaPageState extends State<KusalaPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const List<Widget> _widgetOptions = [
    CommunityPage(),
    ProvincePage(),
    MessagePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppValues.s10,
              vertical: AppValues.s10,
            ),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 6,
              //activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(
                horizontal: AppValues.s20,
                vertical: AppValues.s12,
              ),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: UIcons.boldRounded.users_alt,
                  text: 'Comunidade',
                  leading: Container(
                    width: AppValues.s24,
                    height: AppValues.s24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppValues.s50),
                    ),
                    child: (_selectedIndex == 0)
                        ? SvgPicture.asset(
                            AppIcons.usersAltBold,
                            width: AppValues.s16,
                            color: Colors.black,
                          )
                        : SvgPicture.asset(
                            AppIcons.usersAlt,
                            width: AppValues.s16,
                            color: Colors.black,
                          ),
                  ),
                ),
                GButton(
                  icon: UIcons.regularRounded.map_marker,
                  text: 'Províncias',
                  leading: Container(
                    width: AppValues.s24,
                    height: AppValues.s24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppValues.s50),
                    ),
                    child: (_selectedIndex == 1)
                        ? SvgPicture.asset(
                            AppIcons.regionPinAltBold,
                            width: AppValues.s16,
                            color: Colors.black,
                          )
                        : SvgPicture.asset(
                            AppIcons.regionPinAlt,
                            width: AppValues.s16,
                            color: Colors.black,
                          ),
                  ),
                ),
                GButton(
                  icon: UIcons.boldRounded.comment,
                  text: 'Chat',
                  leading: Container(
                    width: AppValues.s24,
                    height: AppValues.s24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppValues.s50),
                    ),
                    child: (_selectedIndex == 2)
                        ? SvgPicture.asset(
                            AppIcons.chatBold,
                            width: AppValues.s16,
                            color: Colors.black,
                          )
                        : SvgPicture.asset(
                            AppIcons.chat,
                            width: AppValues.s16,
                            color: Colors.black,
                          ),
                  ),
                ),
                GButton(
                  leading: SizedBox(
                    width: AppValues.s28,
                    height: AppValues.s28,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: datas.elementAt(6).profileImage,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit
                            .cover, // Para garantir que a imagem preencha o contêiner
                      ),
                    ),
                  ),
                  icon: UIcons.boldRounded.comment_user,
                  text: 'Perfil',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
