import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:flutter/material.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  Local state fields for this page.

  bool isPhoto = true;

  List<DocumentReference> selectedDogs = [];
  void addToSelectedDogs(DocumentReference item) => selectedDogs.add(item);
  void removeFromSelectedDogs(DocumentReference item) =>
      selectedDogs.remove(item);
  void removeAtIndexFromSelectedDogs(int index) => selectedDogs.removeAt(index);
  void insertAtIndexInSelectedDogs(int index, DocumentReference item) =>
      selectedDogs.insert(index, item);
  void updateSelectedDogsAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedDogs[index] = updateFn(selectedDogs[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - pickImage] action in Container widget.
  String? pickedImage;
  // Stores action output result for [Custom Action - compressImage] action in Container widget.
  FFUploadedFile? compressImage;
  bool isDataUploading_uploadDataNtw = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtw =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtw = '';

  // Stores action output result for [Custom Action - pickVideo] action in Container widget.
  String? pickVideo;
  // Stores action output result for [Custom Action - compressVideo] action in Container widget.
  FFUploadedFile? compressVideo;
  // Stores action output result for [Custom Action - generate2SecondVideoPreview] action in Container widget.
  FFUploadedFile? previewVideo;
  bool isDataUploading_uploadDataNtwVideo = false;
  FFUploadedFile uploadedLocalFile_uploadDataNtwVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNtwVideo = '';

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Currency widget.
  String? currencyValue;
  FormFieldController<String>? currencyValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<DogsRecord, bool> checkboxValueMap = {};
  List<DogsRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  bool isDataUploading_uploadDataDcl = false;
  FFUploadedFile uploadedLocalFile_uploadDataDcl =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDcl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ageFocusNode?.dispose();
    ageTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
