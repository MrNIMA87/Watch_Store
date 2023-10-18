/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/avatar.png
  AssetGenImage get avatar =>
      const AssetGenImage('assets/images/png/avatar.png');

  /// File path: assets/images/png/main_logo.png
  AssetGenImage get mainLogo =>
      const AssetGenImage('assets/images/png/main_logo.png');

  /// File path: assets/images/png/unnamed.png
  AssetGenImage get unnamed =>
      const AssetGenImage('assets/images/png/unnamed.png');

  /// List of all assets
  List<AssetGenImage> get values => [avatar, mainLogo, unnamed];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/avatar.svg
  String get avatar => 'assets/images/svg/avatar.svg';

  /// File path: assets/images/svg/back.svg
  String get back => 'assets/images/svg/back.svg';

  /// File path: assets/images/svg/basket.svg
  String get basket => 'assets/images/svg/basket.svg';

  /// File path: assets/images/svg/cancelled.svg
  String get cancelled => 'assets/images/svg/cancelled.svg';

  /// File path: assets/images/svg/clasic.svg
  String get clasic => 'assets/images/svg/clasic.svg';

  /// File path: assets/images/svg/close.svg
  String get close => 'assets/images/svg/close.svg';

  /// File path: assets/images/svg/delete.svg
  String get delete => 'assets/images/svg/delete.svg';

  /// File path: assets/images/svg/delivered.svg
  String get delivered => 'assets/images/svg/delivered.svg';

  /// File path: assets/images/svg/desktop.svg
  String get desktop => 'assets/images/svg/desktop.svg';

  /// File path: assets/images/svg/digital.svg
  String get digital => 'assets/images/svg/digital.svg';

  /// File path: assets/images/svg/home.svg
  String get home => 'assets/images/svg/home.svg';

  /// File path: assets/images/svg/in_proccess.svg
  String get inProccess => 'assets/images/svg/in_proccess.svg';

  /// File path: assets/images/svg/left_arrow.svg
  String get leftArrow => 'assets/images/svg/left_arrow.svg';

  /// File path: assets/images/svg/location.svg
  String get location => 'assets/images/svg/location.svg';

  /// File path: assets/images/svg/minus.svg
  String get minus => 'assets/images/svg/minus.svg';

  /// File path: assets/images/svg/phone.svg
  String get phone => 'assets/images/svg/phone.svg';

  /// File path: assets/images/svg/plus.svg
  String get plus => 'assets/images/svg/plus.svg';

  /// File path: assets/images/svg/postal_code.svg
  String get postalCode => 'assets/images/svg/postal_code.svg';

  /// File path: assets/images/svg/search.svg
  String get search => 'assets/images/svg/search.svg';

  /// File path: assets/images/svg/smart.svg
  String get smart => 'assets/images/svg/smart.svg';

  /// File path: assets/images/svg/sort.svg
  String get sort => 'assets/images/svg/sort.svg';

  /// File path: assets/images/svg/user.svg
  String get user => 'assets/images/svg/user.svg';

  /// File path: assets/images/svg/user_menu.svg
  String get userMenu => 'assets/images/svg/user_menu.svg';

  /// List of all assets
  List<String> get values => [
        avatar,
        back,
        basket,
        cancelled,
        clasic,
        close,
        delete,
        delivered,
        desktop,
        digital,
        home,
        inProccess,
        leftArrow,
        location,
        minus,
        phone,
        plus,
        postalCode,
        search,
        smart,
        sort,
        user,
        userMenu
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
