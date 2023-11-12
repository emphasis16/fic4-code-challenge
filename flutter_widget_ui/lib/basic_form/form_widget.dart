import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool isOn = false;

  String selected = 'Python';
  final List<String> dropDownList = [
    'Flutter',
    'Java',
    'Dart',
    'Python',
    'Scala',
  ];

  String? sex;

  bool? isChecked = false;

  TextEditingController textFieldNameController =
      TextEditingController(text: 'Nono');
  TextEditingController textFieldPassController = TextEditingController();
  bool hidePass = true;

  List<String> itemStringList = ['Female', 'Male'];
  late String choosedGender = itemStringList[0].toString();

  // String dateChoosed =
  //     DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
  TextEditingController datePickerController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()).toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Form'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: textFieldNameController,
                maxLength: 20,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Fill your name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name boy?",
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: hidePass,
                controller: textFieldPassController,
                maxLength: 20,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: hidePass == true
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          hidePass = !hidePass;
                        });
                      }),
                  focusedBorder: const OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Fill your desired password',
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your password will be?",
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Your Favorite Language: '),
                  const SizedBox(width: 8),
                  DropdownButton(
                    value: selected,
                    items: dropDownList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (String? val) {
                      setState(
                        () {
                          if (val != null) selected = val;
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.blue,
                    ),
                    iconSize: 20,
                    style: const TextStyle(color: Colors.blue),
                    underline: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text('Connect to Instagram: '),
                  Switch(
                    value: isOn,
                    onChanged: (bool? newVal) {
                      setState(() {
                        if (newVal != null) {
                          isOn = newVal;
                        }
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text('Gender: '),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Radio(
                        value: 'cowok',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(
                            () {
                              if (val != null) sex = val;
                            },
                          );
                        },
                      ),
                      const Text('Male'),
                      Radio(
                        value: 'cewek',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(
                            () {
                              if (val != null) sex = val;
                            },
                          );
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? val) {
                      setState(
                        () {
                          if (val != null) isChecked = val;
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Agree Terms & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  setState(
                    () {
                      if (pickedDate != null) {
                        final dateChoosed = DateFormat('yyyy-MM-dd')
                            .format(pickedDate)
                            .toString();
                        datePickerController.text = dateChoosed;
                      }
                    },
                  );
                },
                child: TextFormField(
                  controller: datePickerController,
                  maxLength: 20,
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: 'Birth Date',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    suffixIcon: const Icon(Icons.date_range),
                    helperText: "What's your birthdate?",
                  ),
                  onChanged: (value) {},
                ),
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Gender',
                          errorText: field.errorText,
                          helperText: 'Your gender',
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: choosedGender,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.arrow_downward,
                                  size: 26,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              underline: Container(
                                color: Colors.grey[300],
                                height: 2,
                                width: 5,
                              ),
                              items:
                                  itemStringList.map<DropdownMenuItem<String>>(
                                (e) {
                                  return DropdownMenuItem<String>(
                                    value: e,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(e),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    if (newValue != null) {
                                      choosedGender = newValue;
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
