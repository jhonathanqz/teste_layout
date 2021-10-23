import 'package:flutter/material.dart';
import 'package:teste_layout/app/injection_container.dart';
import 'package:teste_layout/presentation/features/splash/mobx/splash.store.dart';
import 'package:teste_layout/presentation/shared/style/app_images.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/widgets/loading/color_loader.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void checkSettings() async {
    await sl<SplashStore>().dismissSplashScreen(context);
  }

  @override
  void initState() {
    checkSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.back6),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                AppImages.logo,
                fit: BoxFit.cover,
              ),
            ),
            AppSpacing.xl,
            AppSpacing.xl,
            AppSpacing.xl,
            const ColorLoader(
              dotOneColor: Colors.white,
              dotTwoColor: Colors.white,
              dotThreeColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
