import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_button.dart';
import 'package:flutter_responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: "Customer Email", hint: "Type customer email"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Item name", hint: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
                    title: "Item mount", hint: "Type Item mount")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backgourndColor: Colors.transparent,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
