import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kusala/src/core/functions/app_functions.dart';
import 'package:kusala/src/core/resources/icons/app_icons.dart';
import 'package:kusala/src/core/resources/images/app_images.dart';
import 'package:kusala/src/core/strings/app_strings.dart';
import 'package:kusala/src/core/utils/app_values.dart';
import 'package:kusala/src/features/community/data/datas.dart';

import '../../../../configs/themes/color_palette.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: AppValues.s70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppStrings.location),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.marker,
                  width: AppValues.s16,
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  width: AppValues.s8,
                ),
                const Text(AppStrings.morroBento),
                const Text(
                  AppStrings.lingard,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.settingsSliders,
              width: AppValues.s20,
              color: AppColors.mainColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: AppValues.s20,
              AppIcons.bellNotification,
              color: AppColors.mainColor,
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppValues.s15),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppValues.s15),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.3),
                        borderRadius: BorderRadius.circular(AppValues.s15),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.findNewTravelFriend,
                                  style: TextStyle(
                                    fontSize: AppValues.s20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(AppStrings.createYourPlannedTrip),
                                const SizedBox(
                                  height: AppValues.s12,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(AppStrings.startCreating),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: SizedBox.shrink(),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: AppValues.s10,
                      right: AppValues.s70,
                      child: Container(
                        width: AppValues.s50,
                        height: AppValues.s50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s50),
                          border: Border.all(
                              width: AppValues.s3,
                              color: AppColors.primaryColor),
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: datas.elementAt(1).profileImage,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit
                                .cover, // Para garantir que a imagem preencha o contêiner
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: AppValues.s60,
                      right: AppValues.s10,
                      child: Container(
                        width: AppValues.s50,
                        height: AppValues.s50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s50),
                          border: Border.all(
                              width: AppValues.s3,
                              color: AppColors.primaryColor),
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: datas.elementAt(0).profileImage,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit
                                .cover, // Para garantir que a imagem preencha o contêiner
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: AppValues.s10,
                      right: AppValues.s50,
                      child: Container(
                        width: AppValues.s50,
                        height: AppValues.s50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s50),
                          border: Border.all(
                              width: AppValues.s3,
                              color: AppColors.primaryColor),
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: datas.elementAt(2).profileImage,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit
                                .cover, // Para garantir que a imagem preencha o contêiner
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Container(
                padding: const EdgeInsets.all(AppValues.s10),
                color: AppColors.strokeColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.visitorsInTheLastWeek,
                      style: TextStyle(
                        fontSize: AppValues.s16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: AppValues.s10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                width: double.infinity,
                                height: AppValues.s50,
                              ),
                              Positioned(
                                right: 0,
                                top: AppValues.s14,
                                child: Container(
                                  width: AppValues.s50,
                                  height: AppValues.s24,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondColor,
                                    borderRadius: BorderRadius.circular(
                                      AppValues.s50,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      AppStrings.more24,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: AppValues.s5,
                                left: AppValues.s90,
                                child: Container(
                                  width: AppValues.s40,
                                  height: AppValues.s40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s50),
                                    border: Border.all(
                                      width: AppValues.s3,
                                      color: AppColors.strokeColor,
                                    ),
                                  ),
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl: datas.elementAt(9).profileImage,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit
                                          .cover, // Para garantir que a imagem preencha o contêiner
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: AppValues.s5,
                                left: AppValues.s60,
                                child: Container(
                                  width: AppValues.s40,
                                  height: AppValues.s40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s50),
                                    border: Border.all(
                                      width: AppValues.s3,
                                      color: AppColors.strokeColor,
                                    ),
                                  ),
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl: datas.elementAt(8).profileImage,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit
                                          .cover, // Para garantir que a imagem preencha o contêiner
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: AppValues.s5,
                                left: AppValues.s30,
                                child: Container(
                                  width: AppValues.s40,
                                  height: AppValues.s40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s50),
                                    border: Border.all(
                                      width: AppValues.s3,
                                      color: AppColors.strokeColor,
                                    ),
                                  ),
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl: datas.elementAt(7).profileImage,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit
                                          .cover, // Para garantir que a imagem preencha o contêiner
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: AppValues.s5,
                                left: 0,
                                child: Container(
                                  width: AppValues.s40,
                                  height: AppValues.s40,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s50),
                                    border: Border.all(
                                      width: AppValues.s3,
                                      color: AppColors.strokeColor,
                                    ),
                                  ),
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
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppValues.s15,
                                  vertical: AppValues.s5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                    AppValues.s50,
                                  ),
                                  border: Border.all(
                                    width: AppValues.s1_5,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                child: const Text(
                                  AppStrings.seeAll,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.newVisitors,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.separated(
                itemCount: datas.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(AppValues.s10),
                itemBuilder: (context, index) {
                  final dados = datas.elementAt(index);
                  final muni = municipios.elementAt(index);
                  return SizedBox(
                    height: AppValues.s100,
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppValues.s100,
                          height: AppValues.s100,
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
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: AppValues.s100,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        dados.displayName,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppValues.s20,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        dados.bio,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: null,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      AppStrings.speek,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: AppValues.s10,
                                    ),
                                    Container(
                                      width: AppValues.s20,
                                      height: AppValues.s20,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondColor,
                                        borderRadius: BorderRadius.circular(
                                          AppValues.s50,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          AppFuncions.generateAcronym(
                                            AppStrings.kikongo,
                                          ),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppValues.s10,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppValues.s5,
                                    ),
                                    Container(
                                      width: AppValues.s20,
                                      height: AppValues.s20,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(
                                          AppValues.s50,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          AppFuncions.generateAcronym(
                                            AppStrings.chokwe,
                                          ),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppValues.s10,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppValues.s5,
                                    ),
                                    Container(
                                      width: AppValues.s20,
                                      height: AppValues.s20,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondColor,
                                        borderRadius: BorderRadius.circular(
                                          AppValues.s50,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          AppFuncions.generateAcronym(
                                            AppStrings.umbundu,
                                          ),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppValues.s10,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        Expanded(
                          child: Container(
                            height: AppValues.s100,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  AppIcons.marker,
                                                  width: AppValues.s14,
                                                ),
                                                const SizedBox(
                                                  width: AppValues.s5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    muni.nome,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        AppStrings.now,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "2",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppValues.s5,
                                    ),
                                    SvgPicture.asset(
                                      AppIcons.commentAlt,
                                      width: AppValues.s16,
                                      color: AppColors.primaryColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: AppValues.s30,
                    color: AppColors.grey,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
