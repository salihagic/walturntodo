import 'package:walturntodo/_all.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.images_splash_png,
      fit: BoxFit.cover,
    );
  }
}
