import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'meal_card_loading_model.dart';
export 'meal_card_loading_model.dart';

class MealCardLoadingWidget extends StatefulWidget {
  const MealCardLoadingWidget({super.key});

  @override
  State<MealCardLoadingWidget> createState() => _MealCardLoadingWidgetState();
}

class _MealCardLoadingWidgetState extends State<MealCardLoadingWidget> {
  late MealCardLoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCardLoadingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
