import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/sizes.dart';
import '../../../../../../core/resource/strings.dart';
import '../../../../../widgets/list_service.dart';
import 'container_profile.dart';
import '../../controller/service_provider_cont.dart';
class InfoComponent extends ConsumerWidget {
  const InfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedUserProv);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: SizesGeneral.size20,),
            containerProfileService(
                    StringsGeneral.price,
                    '${a?.price}'),

          const SizedBox(width: SizesGeneral.size17,),
            containerProfileService(
                    StringsGeneral.patients,
                    '+${a?.patients}')
              ,
          const SizedBox(width: SizesGeneral.size17,),
           containerProfileService(
                    StringsGeneral.session,
                    '${a?.session}')

        ],
      ),
    );
  }
}
/*

Widget infoComponent()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      const SizedBox(width: SizesGeneral.size20,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.price,
                '${value.getMyNotes.last.price}');
          } ),
      const SizedBox(width: SizesGeneral.size17,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.patients,
                '+${value.getMyNotes.last.patients}');
          } ),
      const SizedBox(width: SizesGeneral.size17,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.session,
                '${value.getMyNotes.last.session}');
          } ),
    ],
  ),
);*/
