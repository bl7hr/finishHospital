
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/icons.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/list_service.dart';
import '../../../../../widgets/text.dart';
import '../../controller/service_provider_cont.dart';
class FirstRow extends ConsumerWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedUserProv);
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(width: SizesGeneral.size5,),

    text(txt: '${a?.stars}.0', size: SizesGeneral.size15),
        Icon(IconGeneral.star,color: ColorGeneral.pink,size: SizesGeneral.size16,),
        Center(child: Container(width:SizesGeneral.size125,height:SizesGeneral.size125,
            child:
            CircleAvatar(
                  radius: SizesGeneral.size62_5,
                  backgroundImage: NetworkImage(
                     " ${a?.image}"
                  ),
                ),

            ))
        ,Icon(IconGeneral.location,color: ColorGeneral.pink,size: SizesGeneral.size18,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: SizesGeneral.size16,),
             text(txt: '${a?.country}', size: SizesGeneral.size16),
            text(txt: '${a?.subcountry}', size: SizesGeneral.size16
                  ,clr: ColorGeneral.textGrey),
          ],
        )
      ],
    );
  }
}