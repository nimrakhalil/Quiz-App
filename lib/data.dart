import 'model.dart';

const questions = [
  question('What is the primary purpose of using the BLoC (Business Logic Component) pattern in Flutter?', [
    'To manage and share application state',
    'To create custom widgets',
    'To implement platform-specific code',
    'To handle routing and navigation'
  ]),
  question('Which technique can be used to reduce the memory footprint of Flutter applications?', [
    'Using fewer widgets in the widget tree',
    'Increasing the image resolution of assets',
    'Using only the default Flutter animations',
    'Minimizing the use of asynchronous programming'
  ]),
  question(
      'When creating a custom widget in Flutter, which class should you extend to make your widget more efficient and reusable?',
      ['StatelessWidget', 'StatefulWidget', ' WidgetBase', ' CustomWidget']),
  question(
      'When developing a Flutter plugin to access platform-specific features, which programming languages are commonly used to write platform-specific code for Android and iOS, respectively?',
      [
        'Java and Swift',
        'Dart and Kotlin',
        'C++ and Objective-C',
        ' Python and Rust',
      ]),
  question(
      'Which type of testing in Flutter is suitable for testing individual units of code in isolation, such as functions or methods?',
      ['Unit testing', ' Widget testing', 'Integration testing', 'End-to-End testing']),
];
