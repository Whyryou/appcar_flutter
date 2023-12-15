import 'package:dio/dio.dart';
import '../index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool? create = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.
  Future<dynamic> apiLogin() async {
    var formData = FormData.fromMap({
      'email': emailAddressController.text,
      'password': passwordController.text,
    });
    var response = await dio.post(
      '$HOST_NAME/$HOST_URI/loginuser.php',
      data: formData,
    );
    return jsonDecode(response.data.toString());
  }

  /// Additional helper methods are added here.
}
