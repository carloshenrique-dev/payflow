class BarCodeScannerStatus {
  final bool isCameraAvaliable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarCodeScannerStatus({
    this.isCameraAvaliable = false,
    this.error = '',
    this.barcode = '',
    this.stopScanner = false,
  });

  factory BarCodeScannerStatus.avaliable() =>
      BarCodeScannerStatus(isCameraAvaliable: true, stopScanner: false);

  factory BarCodeScannerStatus.error(String message) =>
      BarCodeScannerStatus(error: message, stopScanner: true);

  factory BarCodeScannerStatus.barcode(String barcode) =>
      BarCodeScannerStatus(barcode: barcode, stopScanner: true);

  bool get showCamera => isCameraAvaliable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarCode => barcode.isNotEmpty;
}
