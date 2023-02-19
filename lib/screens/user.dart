import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';
import 'package:plpdartbootcampproject/widgets/button.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    return ListView(
      children: [
        Center(
          child: Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: AssetImage('assets/picture.jpeg'),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        // Text(
        //   'Personal Details:',
        //   style: TextStyle(
        //     fontSize: 17.sp,
        //     color: AppColor.dark,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(
              color: AppColors.border,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: firstNameController,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: const InputDecoration(
                          labelText: 'First name',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: TextFormField(
                        controller: lastNameController,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: const InputDecoration(
                          labelText: 'Last name',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: TextFormField(
                  controller: emailController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: TextFormField(
                  controller: emailController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        LargeButton(color: AppColors.primary, text: "Save")
      ],
    );
  }
}
