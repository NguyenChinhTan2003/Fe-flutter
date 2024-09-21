import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:wallet_app/core/themes/app_icons_animations.dart';
import 'package:wallet_app/core/themes/colors/custom_color.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';
import 'package:wallet_app/core/values/app_font.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';

class CustomTextField extends StatefulWidget {
  /// Tạo TextFiled widget
  ///
  /// Truyền vào [isRequired] hoặc [validateRegex], form sẽ tự validate và hiện error sau khi edit complete
  /// Wrap widget [CustomTextField] vào widget [Form] nếu cần check validate trước khi submit
  ///
  ///
  /// Ví dụ :
  ///
  /// ```dart
  /// CustomTextField(
  ///   labelInput: labelInput,
  ///   controller: controller.emailController,
  ///   hintText: hintText,
  ///   isRequired: true,
  ///   validateRegex: AppRegex.emailRegex,
  /// )
  /// ```

  const CustomTextField(
      {Key? key,
      this.labelInput,
      required this.controller,
      this.hintText = '',
      this.infoText,
      this.errorText,
      this.isRequired = false,
      this.isShowLable = true,
      this.enabled = true,
      this.keyboardType,
      this.textInputAction = TextInputAction.done,
      this.textAction,
      this.maxLength,
      this.prefixIcon,
      this.obscureText = false,
      this.validateRegex,
      this.actionFunction,
      this.onSubmitted,
      this.backgroundColor,
      this.borderColor,
      this.borderWidth = 0,
      this.textColor,
      this.iconColor,
      this.errorColor,
      this.focusBorder,
      this.border,
      this.height = 50,
      this.inputFormatters,
      this.paddingLeftContent = 10,
      this.focusNode,
      this.enableBorder})
      : super(key: key);

  final String? labelInput;
  final bool isRequired;
  final bool? enabled;
  final bool obscureText;
  final bool isShowLable;
  final TextEditingController controller;
  final String? hintText;
  final String? infoText;
  final String? errorText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? textAction;
  final int? maxLength;
  final RegExp? validateRegex;
  final Function()? actionFunction;
  final Function()? onSubmitted;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double? borderWidth;
  final Color? iconColor;
  final Color? errorColor;
  final InputBorder? enableBorder;
  final InputBorder? border;
  final InputBorder? focusBorder;
  final double height;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final double paddingLeftContent;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool? _isValid;
  String error = '';
  final Key _checkKey = UniqueKey();
  final Key _errorKey = UniqueKey();

  bool _isShowPassword = false;

  @override
  void initState() {
    super.initState();

    if (widget.obscureText) {
      _isShowPassword = true;
    }
  }

  void _showPassword() {
    setState(() {
      _isShowPassword = !_isShowPassword;
    });
  }

  String? _validateFunction(String value) {
    String error0 = error;
    if (value.isEmpty && widget.isRequired) {
      error0 = "${widget.labelInput} không được để trống";
      setState(() {
        _isValid = false;
        error = error0;
      });
      return error0;
    }

    if (value.isEmpty && !widget.isRequired) {
      setState(() {
        _isValid = null;
        error = '';
      });

      return null;
    }

    if (widget.validateRegex == null) {
      setState(() {
        error = '';
      });
      return null;
    }

    if (!widget.validateRegex!.hasMatch(value)) {
      error0 = "${widget.labelInput} không hợp lệ";
      setState(() {
        _isValid = false;
        error = error0;
      });
      return error0;
    }

    setState(() {
      _isValid = true;
      error = '';
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
          width: widget.borderWidth!,
          color: error.isEmpty
              ? Theme.of(context).colorScheme.outline
              : Theme.of(context).colorScheme.error),
    );
    OutlineInputBorder focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
          width: widget.borderWidth!,
          color: Theme.of(context).colorScheme.outline),
    );
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
          width: widget.borderWidth!,
          color: Theme.of(context).colorScheme.outline),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelInput?.isNotEmpty ?? false
            ? Row(
                children: [
                  widget.labelInput != null && widget.isShowLable
                      ? Text(
                          widget.labelInput ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontFamily: AppFonts.bold),
                        )
                      : const SizedBox.shrink(),
                  widget.isRequired && widget.isShowLable
                      ? Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            "*",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Theme.of(context).colorScheme.error),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              )
            : const SizedBox.shrink(),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            height: widget.height,
            child: Focus(
              onFocusChange: (isFocus) =>
                  !isFocus ? _validateFunction(widget.controller.text) : null,
              child: TextFormField(
                focusNode: widget.focusNode,
                onTap: () {
                  widget.textAction?.isNotEmpty ?? false
                      ? widget.actionFunction!()
                      : null;
                },
                validator: (value) {
                  return _validateFunction(value ?? '');
                },
                controller: widget.controller,
                obscureText: _isShowPassword,
                cursorColor:
                    widget.textColor ?? Theme.of(context).colorScheme.onPrimary,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: widget.textColor,
                      fontFamily: AppFonts.regular,
                      fontWeight: FontWeight.normal,
                    ),
                inputFormatters: widget.inputFormatters,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                readOnly: widget.textAction?.isNotEmpty ?? false,
                maxLength: widget.maxLength,
                onFieldSubmitted: (value) {
                  //widget.onSubmitted!();
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: widget.enabled!
                        ? widget.backgroundColor
                        : Theme.of(context).colorScheme.outline,
                    errorStyle: const TextStyle(fontSize: 0),
                    focusedErrorBorder: widget.focusBorder ?? focusBorder,
                    errorBorder: widget.enableBorder ?? enableBorder,
                    enabled: widget.enabled ?? true,
                    border: widget.border ?? border,
                    constraints: BoxConstraints(maxHeight: widget.height),
                    contentPadding: EdgeInsets.only(
                        top: 10, left: widget.paddingLeftContent),
                    enabledBorder: widget.enableBorder ?? enableBorder,
                    focusedBorder: widget.focusBorder ?? focusBorder,
                    counter: const Offstage(),
                    counterStyle: const TextStyle(
                      height: double.minPositive,
                    ),
                    prefixIcon: widget.prefixIcon,
                    suffixIcon: widget.textAction?.isNotEmpty ?? false
                        ? SizedBox(
                            width: 100,
                            child: Align(
                              child: Text(
                                widget.textAction!,
                                style: Theme.of(context).textTheme.bodyLarge,
                                maxLines: 1,
                              ),
                            ),
                          )
                        : widget.obscureText
                            ? InkWell(
                                onTap: _showPassword,
                                child: !_isShowPassword
                                    ? Icon(
                                        AppIconHelper.getIcon(
                                            'fas-eye', AppIconType.awesome),
                                        color: widget.iconColor ??
                                            Theme.of(context)
                                                .extension<CustomColors>()!
                                                .textCustomColor,
                                      )
                                    : Icon(
                                        AppIconHelper.getIcon('fas-eye-slash',
                                            AppIconType.awesome),
                                        color: widget.iconColor ??
                                            Theme.of(context)
                                                .extension<CustomColors>()!
                                                .textCustomColor,
                                      ),
                              )
                            : _isValid == null
                                ? const SizedBox.shrink()
                                : _isValid!
                                    ? Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Lottie.asset(
                                          AppIconAnimations.check,
                                          key: _checkKey,
                                          width: 5,
                                          height: 5,
                                          repeat: false,
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Lottie.asset(
                                          AppIconAnimations.error,
                                          key: _errorKey,
                                          width: 5,
                                          height: 5,
                                          repeat: false,
                                        ),
                                      ),
                    hintText: widget.hintText,
                    hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: AppFonts.regular, color: widget.textColor)),
              ),
            )),
        if (error.isNotEmpty)
          Text(error,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: widget.errorColor ??
                        Theme.of(context).colorScheme.error,
                    fontFamily: AppFonts.regularItalic,
                  )),
        if (widget.infoText?.isNotEmpty ?? false)
          const SizedBox(
            height: 2,
          ),
        if (widget.infoText?.isNotEmpty ?? false)
          Text(widget.infoText!,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary))
      ],
    );
  }
}