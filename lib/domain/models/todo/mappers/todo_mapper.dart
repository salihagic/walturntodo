import 'package:walturntodo/_all.dart';

EntityMapper<QueryDocumentSnapshot<Map<String, dynamic>>, Todo>
    get todoMapper => (response) => Todo(
          id: response.id,
          isCompleted: response.get('isCompleted') as bool,
          title: response.get('title') as String,
          description: response.get('description') as String,
        );
