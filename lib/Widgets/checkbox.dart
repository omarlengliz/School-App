import 'package:flutter/material.dart';

class CheckboxCo extends StatefulWidget {
  const CheckboxCo({ Key? key }) : super(key: key);

  @override
  State<Checkbox> createState() => _CheckboxCoState();
}

class _CheckboxCoState extends State<Checkbox> {
  var isWinnerTakesAll = true ; 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: SizedBox(
        width: Checkbox.width,
        height: Checkbox.width,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.transparent,
            ),
            child: Checkbox(
              value: isWinnerTakesAll,
              onChanged: (state) =>
                  setState(() => isWinnerTakesAll = !isWinnerTakesAll),
              activeColor: Colors.transparent,
              checkColor: Colors.red,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
        ),
      ),
    );
  }
}