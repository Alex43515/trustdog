import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dog_profile_update_widget.dart' show DogProfileUpdateWidget;
import 'package:flutter/material.dart';

class DogProfileUpdateModel extends FlutterFlowModel<DogProfileUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataNtw23 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataNtw23 = [];
  List<String> uploadedFileUrls_uploadDataNtw23 = [];

  bool isDataUploading_uploadDataNtwVideo24 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo24 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo24 = '';

  bool isDataUploading_uploadDataNtwVideo35 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo35 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo35 = '';

  bool isDataUploading_uploadDataNtwVideo45 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo45 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo45 = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for years_months widget.
  String? yearsMonthsValue;
  FormFieldController<String>? yearsMonthsValueController;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for currency widget.
  String? currencyValue;
  FormFieldController<String>? currencyValueController;
  // State field(s) for sex widget.
  String? sexValue;
  FormFieldController<String>? sexValueController;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ageFocusNode?.dispose();
    ageTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
