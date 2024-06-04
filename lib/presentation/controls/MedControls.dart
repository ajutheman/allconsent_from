import 'package:flutter/material.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:medicoplusconsent/presentation/theames/MedLayoutHelper.dart';
import 'package:medicoplusconsent/presentation/theames/MedTextStyles.dart';

// ignore: camel_case_types
class MedControls {
  // ignore: non_constant_identifier_names
  static Widget GetCard(BuildContext context, String Title, String Description,
      Widget widget, bool cardVisibility) {
    final Column title;
    if (Description == "") {
      title = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Title,
            style: MedTextStyles.cardTitleTextStyle(),
          )
        ],
      );
    } else {
      title = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Title,
            style: MedTextStyles.cardTitleTextStyle(),
          ),
          Text(Description, style: MedTextStyles.cardDetailsTextStyle())
        ],
      );
    }

    return Visibility(
      visible: cardVisibility,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 8.0,
        shadowColor: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: MedGradients.containerFillGrandient),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: MedGradients.containerFillGrandient,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 1.0,
                        blurStyle: BlurStyle.outer //New
                        )
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
                    child: title),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: widget,
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget formView1(Map<String, String> items) {
    List<Padding> rows = [];
    items.forEach((key, value) => rows.add(Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(children: [
              Expanded(flex: 3, child: Text(key.toString())),
              Expanded(
                  flex: 7,
                  child: MedLayoutHelper.formViewTextBox(Text(
                    value.toString(),
                    style: MedTextStyles.cardInnerFontStyle(),
                  )))
            ]),
          ))
        );
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: rows),
    );
  }

  static Widget formView(Map<String, String> items, BuildContext context) {
    List<Column> rows = [];
    items.forEach((key, value) => rows.add(
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(key.toString()),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: MedLayoutHelper.formViewTextBox(
                    Text(value.toString(),
                        textAlign: TextAlign.left,
                        style: MedTextStyles.cardInnerFontStyle()),
                  )),
            )
          ]))
        );

    return Padding(
      padding: const EdgeInsets.all(10),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: rows),
    );
  }

  static Widget InputField(
      String label, onChange(String value), BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(label),
          MedLayoutHelper.widgetContainer(TextField(
            decoration: const InputDecoration(
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
            onChanged: (value) => onChange(value),
          ))
        ]));
  }

  static Widget kaizenRetryButton(String text, Function() onpressed) {
    return SizedBox(
      width: 139,
      height: 40,
      child: ElevatedButton(
        style: MedButtonStyles.retryButtonStyle,
        onPressed: onpressed,
        child: Wrap(children: [
          /* Icon(
            iconname, SVG Cancel Type Icon here
          ), */
          Text(text)
        ]),
      ),
    );
  }

  static Widget panConfirmButton(String text, Function() onpressed) {
    return SizedBox(
      width: 139,
      height: 40,
      child: ElevatedButton(
        style: MedButtonStyles.okButtonStyle,
        onPressed: onpressed,
        child: Wrap(children: [
          /*  Icon(
            iconname,// SGV Cancel icon here
          ), */
          Text(text)
        ]),
      ),
    );
  }

  static Widget panOutlineButton1(
      IconData iconname, String text, void Function()? onbtnPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style:
            //OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),
            MedButtonStyles.outlineButtonStyle,
        onPressed: onbtnPressed,
        child: Wrap(
          children: [
            Icon(
              size: 30,
              iconname,
              color: MedColors.outlineButtonColor,
            ),
            SizedBox(width: 8),
            Text(
              text,
              style:
                  MedTextStyles.buttonContentStyle(MedColors.fontColorPrimary),
            )
          ],
        ),
        //child: Row(children[Text(text),Icon()]
      ),
    );
  }

  static Widget panOutlineButton(
      IconData iconname, String text, void Function()? onbtnPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        style: MedButtonStyles.outlineButtonStyle,
        icon: Icon(
          size: 30,
          iconname,
          color: MedColors.outlineButtonColor,
        ),
        onPressed: onbtnPressed,
        label: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            text,
            style: MedTextStyles.buttonContentStyle(MedColors.fontColorPrimary),
          ),
        ),

        //child: Row(children[Text(text),Icon()]
      ),
    );
  }

  static Widget panRoundedTextbox(TextEditingController controller,
      [bool isPassword = false]) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(          
          height: 40,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.top,          
            obscureText: isPassword,
            controller: controller,
            decoration: InputDecoration(             
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
      
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255), width: 2)),
            ),
          ),
        ));
  }


  static Widget panTextfield(TextEditingController controller,
      [bool isPassword = false]) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
          height: 39,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            obscureText: isPassword,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: const BorderSide(
                      color: MedColors.borderGreyColor, width: 2)),
            ),
          ),
        ));
  }

  static Widget panCheckboxControl(bool value, String text) {
    return Text(
      text,
      style: MedTextStyles.pageSubheadingFontStyle(MedColors.fontColorPrimary),
    );
  }

  static Widget normallabelBold(String text) {
    return Text(
      text,
      style:
          MedTextStyles.pageSubheadingBoldFontStyle(MedColors.fontColorPrimary),
    );
  }

  static Widget normallabel(String text) {
    return Text(
      text,
      style: MedTextStyles.pageSubheadingFontStyle(MedColors.fontColorPrimary),
      softWrap: true,
      maxLines: 2,
    );
  }

  static Widget extraLargelabel(String text) {
    return Text(
      text,
      style: MedTextStyles.LargeFontStyle(Colors.white),
      softWrap: true,
      maxLines: 2,
    );
  }

  static Widget confirmationMessagebox(
      IconData iconname, String text, bool isvisible, BuildContext context) {
    return Visibility(
        visible: isvisible,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: MedColors.warningMessageBoxBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Container(
                decoration: const BoxDecoration(
                    color: MedColors.warningMessageBackColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                height: 40,
                width: 50,
                child: const Icon(Icons.warning_rounded),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * .60,
                      child: Text(text,
                          style: MedTextStyles.cardInnerFontStyle())),
                ),
              )
            ]),
          ),
        ));
  }

  static Widget getConfirmationCard(
    BuildContext context,
    String text,
    String msg,
    Widget widget,
    bool isvisible,
  ) {
    return Visibility(
      visible: isvisible,
      child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: MedGradients.containerFillGrandient),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: MedTextStyles.cardTitleTextStyle(),
                ),
                Text(
                  msg,
                  style: MedTextStyles.cardDetailsTextStyle(),
                ),
                widget
              ],
            ),
          )),
    );
  }

  static Widget okCancelButtons(BuildContext context, String okLabel,
      String cancelLabel, Function() okPressed, Function() cancelPressed) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MedControls.kaizenRetryButton(cancelLabel, cancelPressed),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MedControls.panConfirmButton(okLabel, okPressed),
        )
      ],
    );
  }
}

class CheckboxController {
  ValueNotifier<bool> isChecked = ValueNotifier<bool>(false);

  void toggle() {
    isChecked.value = !isChecked.value;
  }
}

class DatePickerDropdown extends StatefulWidget {
  final Function(DateTime?) onChanged;
  final DateTime? initialDate;

  DatePickerDropdown({required this.onChanged, this.initialDate});

  @override
  _DatePickerDropdownState createState() => _DatePickerDropdownState();
}

class _DatePickerDropdownState extends State<DatePickerDropdown> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: widget.initialDate ?? DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.onChanged(_selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<DateTime>(
      value: _selectedDate,
      decoration: InputDecoration(
        labelText: 'Select Date',
      ),
      onChanged: (value) {
        setState(() {
          _selectedDate = value;
          widget.onChanged(_selectedDate);
        });
      },
      items: [
        DropdownMenuItem<DateTime>(
          value: _selectedDate,
          child: Row(
            children: <Widget>[
              Icon(Icons.calendar_today),
              SizedBox(
                width: 8,
              ),
              Text(
                _selectedDate != null
                    ? _selectedDate.toString()
                    : 'Select Date',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
