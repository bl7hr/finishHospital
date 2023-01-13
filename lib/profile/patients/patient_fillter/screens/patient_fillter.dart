import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/components/fillters_components/city_search_component.dart';
import 'package:testfirebase/profile/components/fillters_components/district_search_component.dart';
import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/fonts.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../components/fillters_components/checkbox_component.dart';
import '../../../components/title.dart';
import '../../../service_provider/service_provider_fillter/screens/service_provider_fillter.dart';
import '../../../widgets/appbar_icon.dart';
import '../../../widgets/button.dart';
import '../../../widgets/chip.dart';
import '../../../widgets/text.dart';
import '../../patients/presentation/screens/patients.dart';

@override
class PatientFillter extends StatelessWidget {
  bool homeChecked = true;
  bool onlineChecked = true;
  bool centerChecked = true;
  bool gaziantap = true;
  bool adana = true;
  bool any = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorGeneral.background,
        body: Padding(
          padding: const EdgeInsets.all(SizesGeneral.size20),
          child: Column(
            children: [
              appbarIcon(() {
                Navigator.pop(context);
              }),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizesGeneral.size34,
                      ),
                      GeneralTitle(mainTitle: StringsGeneral.titlePatients, subTitle: StringsGeneral.pleaseDetermineYourCriteria,),
                      const SizedBox(
                        height: SizesGeneral.size42,
                      ),
                      //first fillter search
                      CitySearchComponent(gaziantap, adana),
                      const SizedBox(
                        height: SizesGeneral.size10,
                      ),
                      DistrictSearchComponent(any),
                      const SizedBox(
                        height: SizesGeneral.size28,
                      ),
                      CheckBoxComponent(
                          homeChecked, centerChecked, onlineChecked),
                      const SizedBox(
                        height: SizesGeneral.size50,
                      ),
                      //button**********************************
                      defultButton(
                          txt: StringsGeneral.applay,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Patients()));
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
