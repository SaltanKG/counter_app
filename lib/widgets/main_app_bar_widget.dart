import 'package:flutter/material.dart';
import 'package:tapshyrma_1/constants/text_styles/app_text_styles.dart';

  class MainAppBarWidget extends StatelessWidget
    implements PreferredSize {
  final String appBarText;
  // final AppBar appBar;

  const MainAppBarWidget({
    required this.appBarText,
    
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        appBarText,
        style: AppTextStyles.appBar,
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
  // @override
  // // TODO: implement child
  // Widget get child => throw UnimplementedError();
  // @override
  // Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
