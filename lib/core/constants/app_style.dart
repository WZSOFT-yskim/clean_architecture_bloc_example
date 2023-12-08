import 'package:flutter/material.dart';
///참조 : https://github.com/SinaSys/flutter_go_rest_app/blob/master/%234%20-%20Clean%20Architecture%20Version%20(Bloc)/lib/core/app_style.dart

class AppColors {
  const AppColors._();

  static const Color salmon1 = Color(0xffFFCAC2);
  static const Color salmon2 = Color(0xffFFAFA3);
  static const Color salmon3 = Color(0xffFF998A);
  static const Color salmon4 = Color(0xff66433D);
  static const Color salmon5 = Color(0xff7F2D20);

  static const Color indigo1 = Color(0xffCCCFFF);
  static const Color indigo2 = Color(0xffB2B8FF);
  static const Color indigo3 = Color(0xff99A0FF);
  static const Color indigo4 = Color(0xff3D4066);
  static const Color indigo5 = Color(0xff20267F);

  static const Color mint1 = Color(0xffADFFDC);
  static const Color mint2 = Color(0xff6ee5b2);
  static const Color mint3 = Color(0xff2EE596);
  static const Color mint4 = Color(0xff3D6654);
  static const Color mint5 = Color(0xff207F56);

  static const Color arcticBlue1 = Color(0xffB2E8FF);
  static const Color arcticBlue2 = Color(0xff87D4F5);
  static const Color arcticBlue3 = Color(0xff52BDEB);
  static const Color arcticBlue4 = Color(0xff3D5A66);
  static const Color arcticBlue5 = Color(0xff20637F);

  static const Color golden1 = Color(0xffFFD7A3);
  static const Color golden2 = Color(0xffFFCA85);
  static const Color golden3 = Color(0xffFFBD66);
  static const Color golden4 = Color(0xff66543D);
  static const Color golden5 = Color(0xff7F5620);

  static const Color white1 = Colors.white;
  static const Color black1 = Colors.black;

  static const LinearGradient salmonGradient1 = LinearGradient(
    colors: [AppColors.white1, AppColors.salmon1],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient salmonGradient2 = LinearGradient(
    colors: [AppColors.salmon1, AppColors.salmon2],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient indigoGradient1 = LinearGradient(
    colors: [AppColors.white1, AppColors.indigo1],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient indigoGradient2 = LinearGradient(
    colors: [AppColors.indigo1, AppColors.indigo2],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient mintGradient1 = LinearGradient(
    colors: [AppColors.white1, AppColors.mint1],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient mintGradient2 = LinearGradient(
    colors: [AppColors.mint1, AppColors.mint2],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient arcticBlueGradient1 = LinearGradient(
    colors: [AppColors.white1, AppColors.arcticBlue1],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient arcticBlueGradient2 = LinearGradient(
    colors: [AppColors.arcticBlue1, AppColors.arcticBlue2],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient goldenGradient1 = LinearGradient(
    colors: [AppColors.white1, AppColors.golden1],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const LinearGradient goldenGradient2 = LinearGradient(
    colors: [AppColors.golden1, AppColors.golden2],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );
}


const List<Color> colorList = [
  Color(0xFFF4511E),
  Color(0xFFFDD835),
  Color(0xFF7CB342),
  Color(0xFF00ACC1),
  Color(0xFF673AB7),
  Color(0xFFE53935),
  Color(0xFFD81B60),
  Color(0xFF8E24AA),
  Color(0xFF3949AB),
  Color(0xFF1E88E5),
  Color(0xFF039BE5),
  Color(0xFF00ACC1),
  Color(0xFF00897B),
  Color(0xFF43A047),
  Color(0xFF7CB342),
  Color(0xFFC0CA33),
];

const headLine6 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  overflow: TextOverflow.ellipsis,
);

const headLine5 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const headLine4 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine3 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine2 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.ellipsis,
);

const headLine1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black54, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black12, width: 1.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(color: Colors.redAccent),
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);

