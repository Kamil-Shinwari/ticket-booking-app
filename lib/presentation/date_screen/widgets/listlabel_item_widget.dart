import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kamil_s_application2/core/app_export.dart';
import 'package:kamil_s_application2/widgets/custom_icon_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// ignore: must_be_immutable
class ListlabelItemWidget extends StatefulWidget {
  int number =1;
  ListlabelItemWidget({required this.number});

  @override
  State<ListlabelItemWidget> createState() => _ListlabelItemWidgetState();
}

class _ListlabelItemWidgetState extends State<ListlabelItemWidget> {

   String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 12,
        top: 11,
        right: 12,
        bottom: 11,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 12,
              bottom: 12,
            ),
            child: Text(
              "Adults",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.20,
                ),
                height: getVerticalSize(
                  1.17,
                ),
              ),
            ),
          ),
          Spacer(),
          CustomIconButton(
            onTap: () {
               if (widget.number > 0) {
                setState(() {});
                widget.number--;
              }
            },
            height: 42,
            width: 42,
            child: CustomImageView(
              svgPath: ImageConstant.imgVideocamera,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 48,
              top: 6,
              bottom: 6,
            ),
            child: Text(
              widget.number.toString(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          CustomIconButton(
            onTap: () {
              if (widget.number >= 0) {
                setState(() {
                  
                });
                widget.number++;
              }
            },
            height: 42,
            width: 42,
            margin: getMargin(
              left: 48,
            ),
            child: InkWell(
              onTap: () {
                 if (widget.number >= 0) {
                  setState(() {
                    
                  });
                  widget.number++;
                }
              },
              child: CustomImageView(
                svgPath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
