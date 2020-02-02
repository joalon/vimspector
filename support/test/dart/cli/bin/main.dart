import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
  const X = 'X';
  var y = X;

  print('Hello world: ${cli.calculate()}!');

  print( 'This is some ${X} and ${y}' );
}
