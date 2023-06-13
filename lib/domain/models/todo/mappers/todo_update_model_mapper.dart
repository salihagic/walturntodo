import 'package:walturntodo/_all.dart';

EntityMapper<DocumentSnapshot<Map<String, dynamic>>, TodoUpdateModel> get todoUpdateModelMapper => (response) => TodoUpdateModel(
      id: response.id,
      isCompleted: response.get('isCompleted') as bool,
      title: response.get('title') as String,
    );
