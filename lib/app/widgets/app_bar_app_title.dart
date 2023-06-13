import 'package:walturntodo/_all.dart';

class AppBarAppTitle extends StatelessWidget {
  const AppBarAppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'ToDo',
      style: context.theme.textTheme.headlineLarge?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 30,
      ),
    );
  }
}
