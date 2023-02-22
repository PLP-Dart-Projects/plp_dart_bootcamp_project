import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GroupForm extends StatefulWidget {
  const GroupForm({Key? key}) : super(key: key);

  @override
  _GroupFormState createState() => _GroupFormState();
}

class _GroupFormState extends State<GroupForm> {
  final _formKey = GlobalKey<FormState>();
  final _groupNameController = TextEditingController();
  final _interestRateController = TextEditingController();
  late bool _isSimpleInterest = true;
  late DateTime _startDate = DateTime.now();

  void _toggleInterestType() {
    setState(() {
      _isSimpleInterest = !_isSimpleInterest;
    });
  }

  Future<void> _createGroup() async {
    final response = await http.post(
      Uri.parse('your-api-endpoint-here'),
      body: {
        'groupName': _groupNameController.text,
        'interestRate': _interestRateController.text,
        'interestType': _isSimpleInterest ? 'simple' : 'compound',
        'startDate': _startDate.toString(),
      },
    );
    // handle the response here
  }

  @override
  void dispose() {
    _groupNameController.dispose();
    _interestRateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
          alignment: Alignment.center,
          child:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(

                            controller: _groupNameController,
                            decoration: const InputDecoration(
                              labelText: "Group Name",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),

                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Give a Group Name";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16.0),
                          TextFormField(
                            controller: _interestRateController,
                            decoration: const InputDecoration(
                              labelText: 'Interest rate',
                              suffixText: '%',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter an interest rate";
                              }
                              final rate = double.tryParse(value);
                              if (rate == null) {
                                return "Please enter a valid interest rate";
                              }
                              if (rate <= 0.0) {
                                return 'Interest rate must be greater than 0%';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Text("Interest Type:"),
                              Switch(
                                value: _isSimpleInterest,
                                onChanged: (value) => _toggleInterestType(),
                              ),
                              Text(_isSimpleInterest ? 'Simple' : 'Compound'),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () async {
                                  final picked = await showDatePicker(
                                    context: context,
                                    initialDate: _startDate,
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                  );
                                  if (picked != null) {
                                    setState(() {
                                      _startDate = picked;
                                    });
                                  }
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today),
                                    SizedBox(width: 8),
                                    Text('Start Date: ${_startDate.year}-${_startDate.month}-${_startDate.day}'),
                                  ],

                                ),
                                style: TextButton.styleFrom(
                                  primary: Color(0xFF3650FC),
                                ),

                              )
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _createGroup;
                              }
                            }, child: Text("Create group"),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),

                          )
                        ]
                    )
                  )
              )
          )
        )
    );
  }
}

