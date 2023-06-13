import 'package:walturntodo/_all.dart';

class AppBarAppLogo extends StatelessWidget {
  const AppBarAppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.images_logo_png,
          height: 40,
          color: context.theme.primaryColor,
        ),
        const Gap(20),
        const AppBarAppTitle(),
      ],
    );
  }
}
