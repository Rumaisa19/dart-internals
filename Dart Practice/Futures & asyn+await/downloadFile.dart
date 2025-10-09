/**Write a function downloadFile() that:

Prints "Downloading..." immediately

Waits 2 seconds

Prints "Download complete" */

Future downloadFile() async {
  print('Downloading....');
  await Future.delayed(Duration(seconds: 3));
  print('Download complete');
}

void main() async {
  await downloadFile();
  print('Download complete');
}
