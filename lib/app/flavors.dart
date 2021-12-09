enum Flavor {
  staging,
  preview,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.staging:
        return '[Staging] Xenshop';
      case Flavor.preview:
        return '[Preview] Xenshop';
      case Flavor.production:
        return 'Xenshop';
      default:
        return 'title';
    }
  }

  static void updateFlavor(String flavor) {
    switch (flavor) {
      case 'preview':
        F.appFlavor = Flavor.preview;
        break;
      case 'production':
        F.appFlavor = Flavor.production;
        break;
      default:
        F.appFlavor = Flavor.staging;
        break;
    }
  }
}
