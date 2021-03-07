import 'dart:io';

import 'package:circular_check_box/circular_check_box.dart';

import 'package:flutter/material.dart';

import 'package:petcode_app/utils/style_constants.dart';

import 'package:provider/provider.dart';

class PetInfoEditingScreen extends StatefulWidget {
  @override
  _PetInfoEditingScreenState createState() => _PetInfoEditingScreenState();
}

class _PetInfoEditingScreenState extends State<PetInfoEditingScreen> {
  TextEditingController _nameInputController;
  TextEditingController _breedInputController;
  TextEditingController _colorInputController;
  TextEditingController _temperamentInputController;
  TextEditingController _additionalInfoInputController;

  TextEditingController _birthdayDateController;

  File chosenImageFile;
  ImageProvider updatedImage;

  bool _isServiceAnimal;

  DateTime _birthDate;

  bool _changedImage;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: TextButton(
          child: Text(
            'Cancel',
            style: StyleConstants.boldText
                .copyWith(color: StyleConstants.pcBlue, fontSize: 13.0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Update Pet Info',
            style:
                StyleConstants.boldText.copyWith(color: StyleConstants.pcBlue)),
        actions: [
          TextButton(
            child: Text(
              'Save',
              style: StyleConstants.boldText
                  .copyWith(color: StyleConstants.pcBlue, fontSize: 13.0),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: width,
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Container(
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: ListView(
                      shrinkWrap: true,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: updatedImage,
                              radius: width * 0.13,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Change Profile Photo',
                              style: TextStyle(
                                  color: StyleConstants.grey,
                                  fontSize: 13.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pet Full Name',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _nameInputController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Full Name',
                                                  hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Animal',
                                  style: StyleConstants.regSubtitleText,
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: width * 0.2,
                                        height: height * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: StyleConstants.pcBlue,
                                              width: 3.0,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 6.0,
                                                offset: Offset(0, 3),
                                              ),
                                            ]),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: width * 0.01),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.pets,
                                                  color: StyleConstants.pcBlue,
                                                  size: height * 0.05,
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Text(
                                                  'Dog',
                                                  style: StyleConstants
                                                      .regSubtitleText,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: width * 0.2,
                                        height: height * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                            border: true
                                                ? Border.all(
                                                    color:
                                                        StyleConstants.pcBlue,
                                                    width: 3.0,
                                                  )
                                                : null,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 6.0,
                                                offset: Offset(0, 3),
                                              ),
                                            ]),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: width * 0.01),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.pets_outlined,
                                                  color: StyleConstants.pcBlue,
                                                  size: height * 0.05,
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Text(
                                                  'Cat',
                                                  style: StyleConstants
                                                      .regSubtitleText,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: width * 0.2,
                                        height: height * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                            border: true
                                                ? Border.all(
                                                    color:
                                                        StyleConstants.pcBlue,
                                                    width: 3.0,
                                                  )
                                                : null,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 6.0,
                                                offset: Offset(0, 3),
                                              ),
                                            ]),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: width * 0.03),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.pets_rounded,
                                                  color: StyleConstants.pcBlue,
                                                  size: height * 0.05,
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Text(
                                                  'Other',
                                                  style: StyleConstants
                                                      .regSubtitleText,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                /*
                                DropdownButtonFormField<Species>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Species',
                                    hintStyle: TextStyle(fontSize: 14.0),
                                  ),
                                  onChanged: (Species species) {
                                    setState(() {
                                      _petSpecies = species;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Dog'),
                                      value: Species.Dog,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Cat'),
                                      value: Species.Cat,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Other'),
                                      value: Species.Other,
                                    ),
                                  ],
                                  value: _petSpecies,
                                )
                                */
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pet Breed',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _breedInputController,
                                              decoration: InputDecoration(
                                                  border: StyleConstants.textBoxBorder,
                                                  focusedBorder: StyleConstants.textBoxBorderFocused,
                                                  enabledBorder: StyleConstants.textBoxBorderEnabled,
                                                  hintText: 'Full Name',
                                                  hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Birthday',
                                  style: StyleConstants.regSubtitleText,
                                ),
                                TextField(
                                  controller: _birthdayDateController,
                                  style: StyleConstants.regSubtitleText,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: height * 0.02),
                                    //border: OutlineInputBorder(),
                                    //contentPadding: EdgeInsets.only(bottom: -height * 0.02),
                                    hintText: 'Start Date',
                                    hintStyle: TextStyle(fontSize: 14.0),
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                    ),
                                  ),
                                  onTap: () {
                                    showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2019),
                                            lastDate: DateTime(2050))
                                        .then((DateTime selectedDate) {
                                      if (selectedDate != null) {
                                        setState(() {
                                          _birthdayDateController =
                                              new TextEditingController(
                                            text: 'Date',
                                          );
                                          //_birthdayDateController = selectedDate;
                                        });
                                      }
                                    });
                                  },
                                  readOnly: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Color',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _colorInputController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(8.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color(0xff575b5f),
                                                        //StyleConstants.darkPurpleGrey,
                                                        width: 2.0),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      //color: StyleConstants.darkPurpleGrey,
                                                        color: Color(0xff575b5f),
                                                        width: 1.5),
                                                  ),
                                                  hintText: 'Full Name',
                                                  hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Temperament',
                                        style: StyleConstants
                                            .boldText,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        height: height * 0.055,
                                        child: Center(
                                          child: TextFormField(
                                              controller: _temperamentInputController,
                                              decoration: InputDecoration(
                                                  border: StyleConstants.textBoxBorder,
                                                  focusedBorder: StyleConstants.textBoxBorderFocused,
                                                  enabledBorder: StyleConstants.textBoxBorderEnabled,
                                                  hintText: 'Full Name',
                                                  hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        /*
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Adopted',
                                  style: StyleConstants.regSubtitleText,),
                                CircularCheckBox(
                                    tristate: false,
                                    value: _isAdopted,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _isAdopted = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ),
                        */
                        Container(
                          width: width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Service Animal',
                                  style: StyleConstants.regSubtitleText,
                                ),
                                CircularCheckBox(
                                    tristate: false,
                                    activeColor: StyleConstants.yellow,
                                    value: true,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _isServiceAnimal = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                            width: width * 0.9,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: width * 0.9,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Medical Needs',
                                          style: StyleConstants
                                              .boldText,
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15.0),
                                          ),
                                          height: height * 0.055,
                                          child: Center(
                                            child: TextFormField(
                                                controller: _additionalInfoInputController,
                                                decoration: InputDecoration(
                                                    border: StyleConstants.textBoxBorder,
                                                    focusedBorder: StyleConstants.textBoxBorderFocused,
                                                    enabledBorder: StyleConstants.textBoxBorderEnabled,
                                                    hintText: 'Full Name',
                                                    hintStyle: StyleConstants.boldText.copyWith(color: StyleConstants.lightGrey),
                                                )
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setUpInputControllers() {
//    _nameInputController =
//        new TextEditingController(text: widget.currentPet.name);
//    _breedInputController =
//        new TextEditingController(text: widget.currentPet.breed);
//    _temperamentInputController =
//        new TextEditingController(text: widget.currentPet.temperament);
//    _additionalInfoInputController =
//        new TextEditingController(text: widget.currentPet.additionalInfo);
//    _colorInputController =
//        new TextEditingController(text: widget.currentPet.color);

    /*
    _owner1NameInputController =
        new TextEditingController(text: widget.currentPet.contact_1.name);
    _owner1EmailInputController =
        new TextEditingController(text: widget.currentPet.contact_1.email);
    _owner1PhoneInputController = new TextEditingController(
        text: widget.currentPet.contact_1.phoneNumber);
    _owner1AddressInputController =
        new TextEditingController(text: widget.currentPet.contact_1.address);

    _owner2NameInputController = new TextEditingController();
    _owner2EmailInputController = new TextEditingController();
    _owner2PhoneInputController = new TextEditingController();
    _owner2AddressInputController = new TextEditingController();

    if (widget.currentPet.contact_2 != null) {
      _owner2NameInputController.text = widget.currentPet.contact_2.name;
      _owner2EmailInputController.text = widget.currentPet.contact_2.email;
      _owner2PhoneInputController.text =
          widget.currentPet.contact_2.phoneNumber;
      _owner2AddressInputController.text = widget.currentPet.contact_2.address;
    }
  }

  bool owner2IsNull() {
    return _owner2NameInputController.text.trim().isEmpty &&
        _owner2EmailInputController.text.trim().isEmpty &&
        _owner2PhoneInputController.text.trim().isEmpty &&
        _owner2AddressInputController.text.trim().isEmpty;
  }
  */
  }
}
