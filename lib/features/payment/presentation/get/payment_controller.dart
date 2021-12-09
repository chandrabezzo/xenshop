import 'package:get/get.dart';
import '../../domain/entities/bank.dart';

class PaymentController extends GetxController {
  final _banks = Rx<List<Bank>>([]);
  final _isLoadingRetrieveBanks = false.obs;
  final _selectedBank = Rx<Bank?>(null);

  List<Bank> get banks => _banks.value;
  bool get isLoadingRetrieveBanks => _isLoadingRetrieveBanks.value;
  Bank? get selectedBank => _selectedBank.value;

  @override
  void onInit() {
    super.onInit();
    retrieveBanks();
  }

  void retrieveBanks() async {
    _isLoadingRetrieveBanks.value = true;
    await Future.delayed(const Duration(seconds: 3));
    _banks.value = List.generate(
      5,
      (index) => Bank(
        id: index,
        image: 'https://media-eu.jobylon.com/CACHE/companies/company-logo/bank-central-asia/halobca.616d9ea2/1f80b43b32d4a008da5e8ee11bc3bd0d.jpg',
        name: 'Bank $index',
        virtualAccount: '$index-8-88-888-8888',
      ),
    );
    _isLoadingRetrieveBanks.value = false;
  }

  void setSelectedBank(Bank? bank) => _selectedBank.value = bank;
}
