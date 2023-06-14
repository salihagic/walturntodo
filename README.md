# Flutter & Firestore ToDo app

This project is a simple ToDo app implemented with Flutter and Firestore (real time cloud database with Firebase).

The application contains simple ToDo app features:

- View pending todos
- View completed todos
- Add new todo
- Update/Edit existing todos
- Mark todo as completed
- Delete todo

And few general app features:

- Theme setup
- Localization (translations on multiple languages)
- Error handling setup
- Toast messages
- No-connection listener and overlay widget
- Multiple environments
- Android & iOS ready

Even though this application is a showcase app that covers simple form actions, validation, list loading etc. with BLoC state management approach it is important to mention that this project uses one more layer of abstraction by using [abstract_bloc](https://pub.dev/packages/abstract_bloc) package which is just a convenience for implementing already mentioned features with BLoC. It offers simple to use base classes for Bloc and few useful widgets for loading lists and handling forms, but in essence it is the same approach as with plain flutter_bloc package.

Take a look at the functionalities of the app:

![Add](https://github.com/salihagic/walturntodo/assets/24563963/94759401-5f76-4575-91ff-3414b7cfa0a5)
![Update](https://github.com/salihagic/walturntodo/assets/24563963/55a40e81-bfe9-4186-b2e7-029e8a55dabc)
![Complete](https://github.com/salihagic/walturntodo/assets/24563963/2072a211-cf0a-4451-9ef5-bd17582b5e2d)
![Delete](https://github.com/salihagic/walturntodo/assets/24563963/967831af-0ec2-4893-8758-377bc5a06a03)
![View](https://github.com/salihagic/walturntodo/assets/24563963/d1437b7f-b96f-4b21-91fd-ce06b93a9094)
