import 'package:flutter/material.dart';
import 'package:where_watch_app/presentation/pages/home/widgets/gender_button.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';

class FilterGenders extends StatefulWidget {
  final Function(GenderType) onGender;
  const FilterGenders({
    Key? key,
    required this.onGender,
  }) : super(key: key);

  @override
  _FilterGendersState createState() => _FilterGendersState();
}

class _FilterGendersState extends State<FilterGenders> {
  late GenderType genderType;
  @override
  void initState() {
    genderType = GenderType.all;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GenderButton(
            gender: GenderType.all,
            isActive: GenderType.all == genderType,
            onGender: (gender) {
              setState(() {
                genderType = gender;
              });
              widget.onGender(genderType);
            },
          ),
          GenderButton(
            gender: GenderType.movies,
            isActive: GenderType.movies == genderType,
            onGender: (gender) {
              setState(() {
                genderType = gender;
              });
              widget.onGender(genderType);
            },
          ),
          GenderButton(
            gender: GenderType.tvProgram,
            isActive: GenderType.tvProgram == genderType,
            onGender: (gender) {
              setState(() {
                genderType = gender;
              });
              widget.onGender(genderType);
            },
          ),
          GenderButton(
            gender: GenderType.documentary,
            isActive: GenderType.documentary == genderType,
            onGender: (gender) {
              setState(() {
                genderType = gender;
              });
              widget.onGender(genderType);
            },
          ),
        ],
      ).withPadding(vertical: 0),
    );
  }
}
