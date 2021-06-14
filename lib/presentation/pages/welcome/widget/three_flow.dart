import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_watch_app/presentation/components/components.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';
import 'widget.dart';

class ThreeFlow extends StatelessWidget {
  final Function(List<ProvidersType>) onProviders;
  const ThreeFlow({
    Key? key,
    required this.onProviders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var providers = <ProvidersType>[];

    void verifyProvidersAndReturn(
        {required bool isSelected, required ProvidersType provider}) {
      if (isSelected) {
        providers.add(provider);
      } else {
        providers.removeWhere((element) => element == provider);
      }
      onProviders(providers);
    }

    return Column(
      children: [
        HeaderMessageFlow(
          message:
              'Quais as plataformas de streaming você gosta e são as favoritas?',
        ),
        withHeightSpacer(height: 30),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          shrinkWrap: true,
          children: [
            CardProvider(
              image: AppImages.prime_video,
              onSelected: (isActive) => verifyProvidersAndReturn(
                isSelected: isActive,
                provider: ProvidersType.prime_video,
              ),
            ),
            CardProvider(
              image: AppImages.globo_play,
              onSelected: (isActive) => verifyProvidersAndReturn(
                isSelected: isActive,
                provider: ProvidersType.globo_play,
              ),
            ),
            CardProvider(
              image: AppImages.netflix,
              onSelected: (isActive) => verifyProvidersAndReturn(
                isSelected: isActive,
                provider: ProvidersType.netflix,
              ),
            ),
            CardProvider(
              image: AppImages.disney_plus,
              onSelected: (isActive) => verifyProvidersAndReturn(
                isSelected: isActive,
                provider: ProvidersType.disney_plus,
              ),
            ),
          ],
        ),
        Spacer(),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: WWButton(
            onTap: () => Get.toNamed(RoutesConsts.home),
            child: Center(
              child: Text(
                'CONCLUIR',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ),
        )
      ],
    ).withPadding();
  }
}
