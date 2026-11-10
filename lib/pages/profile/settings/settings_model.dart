import '/components/section_header3_widget.dart';
import '/components/setting_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeader3Model sectionHeaderModel1;
  // Model for SettingItem.
  late SettingItemModel settingItemModel1;
  // Model for SettingItem.
  late SettingItemModel settingItemModel2;
  // Model for SettingItem.
  late SettingItemModel settingItemModel3;
  // Model for SectionHeader.
  late SectionHeader3Model sectionHeaderModel2;
  // Model for SettingItem.
  late SettingItemModel settingItemModel4;
  // Model for SettingItem.
  late SettingItemModel settingItemModel5;
  // Model for SectionHeader.
  late SectionHeader3Model sectionHeaderModel3;
  // Model for SettingItem.
  late SettingItemModel settingItemModel6;
  // Model for SettingItem.
  late SettingItemModel settingItemModel7;
  // Model for SettingItem.
  late SettingItemModel settingItemModel8;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeader3Model());
    settingItemModel1 = createModel(context, () => SettingItemModel());
    settingItemModel2 = createModel(context, () => SettingItemModel());
    settingItemModel3 = createModel(context, () => SettingItemModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeader3Model());
    settingItemModel4 = createModel(context, () => SettingItemModel());
    settingItemModel5 = createModel(context, () => SettingItemModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeader3Model());
    settingItemModel6 = createModel(context, () => SettingItemModel());
    settingItemModel7 = createModel(context, () => SettingItemModel());
    settingItemModel8 = createModel(context, () => SettingItemModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    settingItemModel1.dispose();
    settingItemModel2.dispose();
    settingItemModel3.dispose();
    sectionHeaderModel2.dispose();
    settingItemModel4.dispose();
    settingItemModel5.dispose();
    sectionHeaderModel3.dispose();
    settingItemModel6.dispose();
    settingItemModel7.dispose();
    settingItemModel8.dispose();
  }
}
