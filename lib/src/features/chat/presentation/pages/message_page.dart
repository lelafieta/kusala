import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kusala/src/configs/routes/routes.dart';
import 'package:kusala/src/core/resources/icons/app_icons.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';
import '../../../community/data/datas.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: AppValues.s70,
        title: const Text(
          AppStrings.message,
          style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: AppValues.s22),
        ),
      ),
      body: FadeIn(
        child: ListView.separated(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            final data = datas.elementAt(index);
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.chatRoute);
              },
              child: ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: 10,
                titleAlignment: ListTileTitleAlignment.center,
                leading: SizedBox(
                  width: AppValues.s40,
                  height: AppValues.s40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppValues.s10),
                    child: CachedNetworkImage(
                      imageUrl: datas.elementAt(index).profileImage,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit
                          .cover, // Para garantir que a imagem preencha o contêiner
                    ),
                  ),
                ),
                title: Text(
                  data.displayName,
                  style: const TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  data.bio,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "a 5 min",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppValues.s10,
                    ),
                    SvgPicture.asset(
                      AppIcons.checkDouble,
                      width: AppValues.s12,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: AppValues.s15,
            );
          },
        ),
      ),
    );
  }
}
