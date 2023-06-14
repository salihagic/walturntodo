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

Even though this application is a showcase app that covers simple form actions, validation, list loading etc. with BLoC state management approach it is important to mention that this project uses one more layer of abstraction by using [abstract_bloc](https://pub.dev/packages/abstract_bloc) package which is just a convenience for implementing already mentioned features with BLoC. It offers simple to use base classes for Bloc and few useful widgets for loading lists and handling forms, but in essence it is the same approach as with plain flutter_bloc package.

Take a look at the functionalities of the app:

![Add](https://github.com/salihagic/walturntodo/assets/24563963/a865449c-d9c8-4b49-941e-daf8bf531a09)
![Update](https://github.com/salihagic/walturntodo/assets/24563963/7ec368fa-0745-43cc-9800-e61bfa3d739f)
![Complete](https://github.com/salihagic/walturntodo/assets/24563963/378a31a9-f32b-4cdb-ba16-1b55bd89dff1)
![Delete](https://github.com/salihagic/walturntodo/assets/24563963/69804b53-9e7c-46bc-a0b0-72917d7195c4)
