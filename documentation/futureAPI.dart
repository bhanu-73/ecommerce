// generic function to Future Response
void main() async {
  await loadingIssue();
  print(await function()); // if it takes time whether we need to wait or not

  // using then()
  loadingIssueButNeedNotToWait().then((_) => print('Waiting succeded....'));
  print(await intFunction());
  // Collects data as a response(instance)
}

Future<String> function() async {
  return 'Data Processing via an Async Future function';
}

Future<int> intFunction() async {
  return 1500;
}

Future loadingIssue() async {
  print('loading...');
  return Future.delayed(
      Duration(seconds: 10), () => print('My name is Praveen Kumar...'));
}

Future loadingIssueButNeedNotToWait() async {
  print('loading started...');
  return Future.delayed(Duration(seconds: 10),
      () => print('List of products loaded so far is 10000...'));
}

// Async: Asynchronous - wait a bit to get the result
// Await: Wait here until you get the value
// Future: Promise, Future<List<dynamic>>
// Then() --> Callback function to process a data
