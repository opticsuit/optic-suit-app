// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class InternationalPhoneInput extends StatefulWidget {
  const InternationalPhoneInput({
    super.key,
    this.width,
    this.height,
    this.initialValue = '',
  });

  final double? width;
  final double? height;
  final String initialValue;

  @override
  State<InternationalPhoneInput> createState() =>
      _InternationalPhoneInputState();
}

class _InternationalPhoneInputState extends State<InternationalPhoneInput> {
  late Country _country;
  late final TextEditingController _controller;
  String _localNumber = '';
  bool _valid = true;

  @override
  void initState() {
    super.initState();
    _country = CountryParser.parseCountryCode('IN')!;
    _controller = TextEditingController();
    _loadInitialValue(widget.initialValue);
  }

  @override
  void didUpdateWidget(covariant InternationalPhoneInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue) {
      _loadInitialValue(widget.initialValue);
    }
  }

  void _loadInitialValue(String value) {
    final input = value.trim();
    if (input.isEmpty) {
      _localNumber = '';
      _controller.value = TextEditingValue.empty;
      if (mounted) setState(() => _valid = true);
      return;
    }
    try {
      final parsed = PhoneNumber.parse(input);
      final code = parsed.isoCode.name;
      final country = CountryParser.parseCountryCode(code);
      if (country != null) _country = country;
      _localNumber = parsed.nsn;
      _controller.value = TextEditingValue(
        text: _localNumber,
        selection: TextSelection.collapsed(offset: _localNumber.length),
      );
      _valid = parsed.isValid();
    } catch (_) {
      _localNumber = input.replaceAll(RegExp(r'\D'), '');
      _controller.value = TextEditingValue(
        text: _localNumber,
        selection: TextSelection.collapsed(offset: _localNumber.length),
      );
      _valid = false;
    }
    if (mounted) setState(() {});
  }

  void _emitValue() {
    final digits = _localNumber.replaceAll(RegExp(r'\D'), '');
    var valid = false;
    var international = '+${_country.phoneCode}$digits';
    if (digits.isNotEmpty) {
      try {
        final parsed = PhoneNumber.parse(
          _localNumber,
          destinationCountry: IsoCode.values.byName(_country.countryCode),
        );
        valid = parsed.isValid();
        international = parsed.international;
      } catch (_) {
        valid = false;
      }
    }
    if (mounted) setState(() => _valid = digits.isEmpty || valid);
    FFAppState().profilePhoneInternational =
        digits.isEmpty ? '' : international;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        width: widget.width,
        height: widget.height ?? 52,
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => showCountryPicker(
                context: context,
                showPhoneCode: true,
                showSearch: true,
                onSelect: (country) {
                  setState(() => _country = country);
                  _emitValue();
                },
              ),
              child: Container(
                width: 88,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '${_country.flagEmoji} +${_country.phoneCode}',
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
                onChanged: (value) {
                  _localNumber = value;
                  _emitValue();
                },
                decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  hintStyle: const TextStyle(
                    color: Color(0xFF808080),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFFFFF),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF1F3A87)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFBA1A1A)),
                  ),
                  errorText: _valid ? null : 'Enter a valid phone number',
                ),
              ),
            ),
          ],
        ),
      );
}
