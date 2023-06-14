import 'package:walturntodo/_all.dart';

class AppNavigation extends StatelessWidget {
  static const route = '/';

  const AppNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TodosPage();
  }
}
