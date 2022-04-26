import 'package:provider_playground/stream_provider/data.dart';

Stream<ModelStream> loadStream() {
  return Stream<ModelStream>.periodic(
          const Duration(seconds: 1), (value) => ModelStream(number: value))
      .take(10);
}
