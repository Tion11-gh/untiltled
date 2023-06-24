import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RequestOtp(),
        RequestOtp(),
        RequestOtp(),
        RequestOtp(),

      ],
    );
  }
}


class RequestOtp extends StatefulWidget {
  const RequestOtp({super.key});

  @override
  State<RequestOtp> createState() => _RequestOtpState();
}

class _RequestOtpState extends State<RequestOtp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 60,
      child: TextFormField(
        onChanged: (Value){
          if (Value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
          textAlign:TextAlign.center,
        inputFormatters: [

          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.purple,width: 1),
          ),
           enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(color: Colors.purple),
           ),
        ),
      ),

    );
  }
}
