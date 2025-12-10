import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_dog_profile_new_widget.dart' show CreateDogProfileNewWidget;
import 'package:flutter/material.dart';

class CreateDogProfileNewModel
    extends FlutterFlowModel<CreateDogProfileNewWidget> {
  ///  Local state fields for this page.

  bool geoLoc = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - pickAndCompressImages] action in Container widget.
  List<FFUploadedFile>? multipleImages;
  bool isDataUploading_uploadDataNtw2 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataNtw2 = [];
  List<String> uploadedFileUrls_uploadDataNtw2 = [];

  // Stores action output result for [Custom Action - pickVideo] action in video1 widget.
  String? pickVideo;
  // Stores action output result for [Custom Action - compressVideo] action in video1 widget.
  FFUploadedFile? compressVideo;
  // Stores action output result for [Custom Action - generate2SecondVideoPreview] action in video1 widget.
  FFUploadedFile? videoPreview;
  bool isDataUploading_uploadDataNtwVideo2 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo2 = '';

  // Stores action output result for [Custom Action - pickVideo] action in video2 widget.
  String? pickvideo2;
  // Stores action output result for [Custom Action - compressVideo] action in video2 widget.
  FFUploadedFile? compressvideo2;
  // Stores action output result for [Custom Action - generate2SecondVideoPreview] action in video2 widget.
  FFUploadedFile? previewVideo2;
  bool isDataUploading_uploadDataNtwVideo3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo3 = '';

  // Stores action output result for [Custom Action - pickVideo] action in video3 widget.
  String? pickVideo3;
  // Stores action output result for [Custom Action - compressVideo] action in video3 widget.
  FFUploadedFile? compressVideo3;
  // Stores action output result for [Custom Action - generate2SecondVideoPreview] action in video3 widget.
  FFUploadedFile? previewVideo3;
  bool isDataUploading_uploadDataNtwVideo4 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo4 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo4 = '';

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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DogsRecord? newDog;

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
