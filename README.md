# Flutter & Firestore ToDo app

This project is a simple ToDo app implemented with Flutter and Firestore (real time cloud database with Firebase).

The application contains simple ToDo app features:

- View pending todos
- View completed todos
- Add new todo
- Update/Edit existing todos
- Mark todo as completed
- Delete todo

Even though this application is a showcase app that covers simple form actions, validation, list loading etc. with BLoC state management approach it is important to mention that this project uses one more layer of abstraction by using [abstract_bloc](https://pub.dev/packages/abstract_bloc) package which is just a convenience for implementing already mentioned features with BLoC. It offers simple to use base classes for Bloc and few useful widgets for loading lists and handling forms, but in essence it is the same approach as with plain flutter_bloc package.

Take a look at the functionalities of the app:

<p style="display: flex; justify-content: space-between; width: 100vw;">
  <img src="https://user-images.githubusercontent.com/24563963/167363480-af2e712d-ec7f-46c1-b6f0-51be23d3e8db.gif" width="250" height="500"/>
  <img src="https://user-images.githubusercontent.com/24563963/167363508-cf5e2430-de2c-4aef-ab90-0bafef0c21b4.gif" width="250" height="500"/>
</p>

<p style="display: flex; justify-content: space-between; width: 100vw;">
  <img src="https://user-images.githubusercontent.com/24563963/167363480-af2e712d-ec7f-46c1-b6f0-51be23d3e8db.gif" width="250" height="500"/>
  <img src="https://user-images.githubusercontent.com/24563963/167363508-cf5e2430-de2c-4aef-ab90-0bafef0c21b4.gif" width="250" height="500"/>
</p>
