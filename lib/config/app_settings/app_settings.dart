class AppSettings {
  final String baseApiUrl;
  final String baseImageUrl;
  final bool resetStorageOnRestart;

  AppSettings({
    this.baseApiUrl = '<BASE_URL>',
    this.baseImageUrl = '<BASE_URL>',
    this.resetStorageOnRestart = false,
  });
}
