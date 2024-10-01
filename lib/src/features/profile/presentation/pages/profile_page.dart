// ignore_for_file: library_private_types_in_public_api

import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/functions/app_functions.dart';
import '../../../../core/resources/icons/app_icons.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';
import '../../../community/data/datas.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: AppValues.s70,
        title: const Text(
          AppStrings.profile,
          style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: AppValues.s22),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.settings,
              width: AppValues.s20,
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppValues.s15,
              ),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      width: AppValues.s150,
                      height: AppValues.s150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppValues.s100),
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
                    Positioned(
                      bottom: AppValues.s1,
                      right: AppValues.s1,
                      child: Container(
                        padding: const EdgeInsets.all(AppValues.s5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(
                            width: AppValues.s5,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          borderRadius: BorderRadius.circular(AppValues.s50),
                        ),
                        child: const Icon(
                          Icons.image,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Center(
                child: Text(
                  datas.elementAt(0).displayName,
                  style: const TextStyle(
                    fontSize: AppValues.s22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.marker,
                    color: AppColors.grey,
                    width: AppValues.s14,
                  ),
                  const SizedBox(
                    width: AppValues.s5,
                  ),
                  Text(
                    "${municipios.elementAt(7).provincia}, ${municipios.elementAt(7).nome}",
                    style: const TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "+99",
                          style: TextStyle(
                            fontSize: AppValues.s38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppStrings.friends,
                          style: TextStyle(
                              fontSize: AppValues.s14,
                              color: AppColors.grey,
                              height: .5),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "08",
                          style: TextStyle(
                            fontSize: AppValues.s38,
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        Text(
                          AppStrings.visits,
                          style: TextStyle(
                              fontSize: AppValues.s14,
                              color: AppColors.grey,
                              height: .5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit),
                            SizedBox(
                              width: AppValues.s5,
                            ),
                            Text("Editar Perfil"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppValues.s50),
                        color: AppColors.strokeColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.userAdd,
                          color: AppColors.mainColor,
                          width: AppValues.s20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppValues.s50),
                        color: AppColors.strokeColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.bell,
                          color: AppColors.mainColor,
                          width: AppValues.s20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Divider(
                thickness: AppValues.s1,
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.about,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.loremIpsum,
                  style: TextStyle(
                    color: AppColors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Divider(
                thickness: AppValues.s1,
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.speek,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Wrap(
                      children: [
                        Container(
                          width: AppValues.s24,
                          height: AppValues.s24,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 68, 154, 201),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: Container(
                            width: AppValues.s24,
                            height: AppValues.s24,
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
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        const Text(AppStrings.kikongo),
                      ],
                    ),
                    Wrap(
                      children: [
                        Container(
                          width: AppValues.s24,
                          height: AppValues.s24,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: Container(
                            width: AppValues.s24,
                            height: AppValues.s24,
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
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        const Text(AppStrings.umbundu),
                      ],
                    ),
                    Wrap(
                      children: [
                        Container(
                          width: AppValues.s24,
                          height: AppValues.s24,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: Container(
                            width: AppValues.s24,
                            height: AppValues.s24,
                            decoration: BoxDecoration(
                              color: AppColors.secondColor,
                              borderRadius: BorderRadius.circular(
                                AppValues.s50,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                AppFuncions.generateAcronym(
                                  AppStrings.kimbundu,
                                ),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppValues.s10,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        const Text(AppStrings.kimbundu),
                      ],
                    ),
                    Wrap(
                      children: [
                        Container(
                          width: AppValues.s24,
                          height: AppValues.s24,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: Container(
                            width: AppValues.s24,
                            height: AppValues.s24,
                            decoration: BoxDecoration(
                              color: AppColors.secondColor,
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
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        const Text(AppStrings.chokwe),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Divider(
                thickness: AppValues.s1,
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.travelling,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: AppValues.s50,
                              height: AppValues.s50,
                              decoration: BoxDecoration(
                                color: AppColors.strokeColor,
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                                child: Image.asset(
                                  municipios.elementAt(0).image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: AppValues.s20,
                                height: AppValues.s20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: AppValues.s1_5,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s50),
                                  color: Colors.black.withOpacity(.9),
                                ),
                                child: const Center(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        Text(municipios.elementAt(3).provincia),
                      ],
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: AppValues.s50,
                              height: AppValues.s50,
                              decoration: BoxDecoration(
                                color: AppColors.strokeColor,
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                                child: Image.asset(
                                  municipios.elementAt(1).image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: AppValues.s20,
                                height: AppValues.s20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: AppValues.s1_5,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s50),
                                  color: Colors.black.withOpacity(.9),
                                ),
                                child: const Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        Text(municipios.elementAt(1).provincia),
                      ],
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: AppValues.s50,
                              height: AppValues.s50,
                              decoration: BoxDecoration(
                                color: AppColors.strokeColor,
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s15),
                                child: Image.asset(
                                  municipios.elementAt(2).image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: AppValues.s20,
                                height: AppValues.s20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: AppValues.s1_5,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s50),
                                  color: Colors.black.withOpacity(.9),
                                ),
                                child: const Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: AppValues.s5,
                        ),
                        Text(municipios.elementAt(2).provincia),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Divider(
                thickness: AppValues.s1,
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.interesting,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10,
                            vertical: AppValues.s5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppValues.s10,
                            ),
                            border: Border.all(
                              width: AppValues.s1_5,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: const Text(
                            AppStrings.football,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10,
                            vertical: AppValues.s5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppValues.s10,
                            ),
                            border: Border.all(
                              width: AppValues.s1_5,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: const Text(
                            AppStrings.computer,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10,
                            vertical: AppValues.s5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppValues.s10,
                            ),
                            border: Border.all(
                              width: AppValues.s1_5,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: const Text(
                            AppStrings.watching,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10,
                            vertical: AppValues.s5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppValues.s10,
                            ),
                            border: Border.all(
                              width: AppValues.s1_5,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: const Text(
                            AppStrings.party,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Divider(
                thickness: AppValues.s1,
              ),
              const SizedBox(
                height: AppValues.s7_5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  AppStrings.photo,
                  style: TextStyle(
                    fontSize: AppValues.s16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Número de colunas
                    crossAxisSpacing:
                        10.0, // Espaçamento horizontal entre os elementos
                    mainAxisSpacing:
                        10.0, // Espaçamento vertical entre os elementos
                  ),
                  itemCount:
                      municipios.length, // Número total de elementos (3x3)
                  itemBuilder: (BuildContext context, int index) {
                    final photo = municipios.elementAt(index);
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImagePreviewScreen(
                              imageUrls: municipios,
                              initialIndex: index,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.strokeColor,
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppValues.s10),
                          child: Image.asset(
                            photo.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePreviewScreen extends StatefulWidget {
  final List<Municipio> imageUrls;
  final int initialIndex;

  const ImagePreviewScreen(
      {super.key, required this.imageUrls, required this.initialIndex});

  @override
  _ImagePreviewScreenState createState() => _ImagePreviewScreenState();
}

class _ImagePreviewScreenState extends State<ImagePreviewScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BounceInUp(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pré-visualização de Imagem'),
        ),
        body: PhotoViewGallery.builder(
          pageController: _pageController,
          itemCount: widget.imageUrls.length,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider:
                  AssetImage(widget.imageUrls.elementAt(index).image),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 2,
            );
          },
          scrollPhysics: BouncingScrollPhysics(),
          backgroundDecoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
