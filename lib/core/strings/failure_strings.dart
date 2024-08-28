import '../errors/failure.dart';

const String serverFailureMessage = "Please try again later";
const String emptyCacheFailureMessage = "No data";
const String offlineFailureMessage = "Please check your internet connection";
const String defaultFailureMessage = "Unexpected Error. Please try again later";

String getErrorMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure():
      return serverFailureMessage;
    case OfflineFailure():
      return offlineFailureMessage;
    default:
      return defaultFailureMessage;
  }
}
