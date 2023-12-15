import 'package:dio/dio.dart';

// Export pages
export '/login/login_widget.dart' show LoginWidget;
export '/data_renting/data_renting_widget.dart' show DataRentingWidget;
export '/welcome/welcome_widget.dart' show WelcomeWidget;
export '/register/register_widget.dart' show RegisterWidget;
export '/home/home_widget.dart' show HomeWidget;
export '/select_car/select_car_widget.dart' show SelectCarWidget;
export '/data_car/data_car_widget.dart' show DataCarWidget;
export '/data_car2/data_car2_widget.dart' show DataCar2Widget;
export '/data_check/data_check_widget.dart' show DataCheckWidget;
export '/qr_code/qr_code_widget.dart' show QrCodeWidget;
export '/history/history_widget.dart' show HistoryWidget;
export '/data_renting2/data_renting2_widget.dart' show DataRenting2Widget;
export '/report2/report2_widget.dart' show Report2Widget;
export '/report/report_widget.dart' show ReportWidget;
export '/cancel2/cancel2_widget.dart' show Cancel2Widget;
export '/cancel/cancel_widget.dart' show CancelWidget;
export '/details_cancel2/details_cancel2_widget.dart' show DetailsCancel2Widget;
export '/details_cancel/details_cancel_widget.dart' show DetailsCancelWidget;
export '/contact/contact_widget.dart' show ContactWidget;
export '/about_us/about_us_widget.dart' show AboutUsWidget;
export '/insurance/insurance_widget.dart' show InsuranceWidget;
export '/data/data_widget.dart' show DataWidget;
export '/history_cancel/history_cancel_widget.dart' show HistoryCancelWidget;
export '/data_check2/data_check2_widget.dart' show DataCheck2Widget;
export '/qr_code2/qr_code2_widget.dart' show QrCode2Widget;
export '/profile/profile_widget.dart' show ProfileWidget;
export '/data2/data2_widget.dart' show Data2Widget;

// Export pages - ADMIN
export '/admin/login/login_widget.dart' show LoginWidgetAdmin;
export '/admin/data_pending/data_pending_widget.dart'
    show DataPendingWidgetAdmin;
export '/admin/data_pending2/data_pending2_widget.dart'
    show DataPending2WidgetAdmin;
export '/admin/pending/pending_widget.dart' show PendingWidgetAdmin;
export '/admin/pending2/pending2_widget.dart' show Pending2WidgetAdmin;

final dio = Dio();
String HOST_NAME = 'http://student.crru.ac.th/651513010';
String HOST_URI_APP = 'app_car1';
String HOST_URI = 'api';

dynamic adminDATA;
String adminID = '';
dynamic userDATA;
String userID = '';
String rentID = '';
int rentSUM = 0;
