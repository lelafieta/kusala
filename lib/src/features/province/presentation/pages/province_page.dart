import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kusala/src/features/community/data/datas.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/icons/app_icons.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';

class ProvincePage extends StatefulWidget {
  const ProvincePage({super.key});

  @override
  State<ProvincePage> createState() => _ProvincePageState();
}

class _ProvincePageState extends State<ProvincePage> {
  GoogleMapController? mapController;

  final LatLng _center =
      const LatLng(-11.2027, 17.8739); // Coordenadas de exemplo

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: AppValues.s70,
        title: const Text(
          AppStrings.mostSearched,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FadeIn(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppValues.s120,
                child: ListView.separated(
                  itemCount: municipios.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(AppValues.s10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = municipios.elementAt(index);
                    return Container(
                      width: AppValues.s300,
                      padding: const EdgeInsets.all(AppValues.s5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: AppValues.s1_5,
                          color: AppColors.strokeColor,
                        ),
                        borderRadius: BorderRadius.circular(AppValues.s10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppIcons.marker,
                                        width: AppValues.s15,
                                      ),
                                      const SizedBox(
                                        width: AppValues.s5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${data.provincia}, ${data.nome}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: AppValues.s16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "Cerca de 200 KM de Distância",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppValues.s10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppValues.s10,
                                    vertical: AppValues.s5,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: AppValues.s1_5,
                                        color: AppColors.primaryColor),
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s50),
                                  ),
                                  child: const Text("78 Visitantes agora"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: AppValues.s80,
                            height: AppValues.s80,
                            decoration: BoxDecoration(
                              color: AppColors.strokeColor,
                              borderRadius:
                                  BorderRadius.circular(AppValues.s10),
                              image: DecorationImage(
                                  image: AssetImage(data.image),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Container(
                width: double.infinity,
                height: AppValues.s300,
                margin: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                decoration: BoxDecoration(
                  color: AppColors.strokeColor,
                  borderRadius: BorderRadius.circular(AppValues.s10),
                ),
                child: Center(
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppValues.s15,
                ),
                child: FormBuilderTextField(
                  name: "search",
                  decoration: InputDecoration(
                    hintText: "Pesquise por um amigo de uma provincia",
                    fillColor: AppColors.strokeColor,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(AppValues.s14),
                      child: SvgPicture.asset(
                        AppIcons.search,
                        width: AppValues.s8,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
