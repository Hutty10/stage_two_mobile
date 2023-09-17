import 'package:flutter/material.dart';

import '../widget/textfield.dart';

class EditCVPage extends StatefulWidget {
  const EditCVPage({super.key});

  @override
  State<EditCVPage> createState() => _EditCVPageState();
}

class _EditCVPageState extends State<EditCVPage> {
  late TextEditingController _nameController,
      _stackController,
      _slackController,
      _emailController,
      _githubController,
      _phoneController,
      _locationController,
      _bioController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _stackController = TextEditingController();
    _slackController = TextEditingController();
    _emailController = TextEditingController();
    _githubController = TextEditingController();
    _phoneController = TextEditingController();
    _locationController = TextEditingController();
    _bioController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _stackController.dispose();
    _slackController.dispose();
    _emailController.dispose();
    _githubController.dispose();
    _phoneController.dispose();
    _locationController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  String? passText(TextEditingController controller) =>
      controller.text.isNotEmpty ? controller.text.trim() : null;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(
              {
                'name': passText(_nameController),
                'stack': passText(_stackController),
                'slack': passText(_slackController),
                'email': passText(_emailController),
                'github': passText(_githubController),
                'phone': passText(_phoneController),
                'location': passText(_locationController),
                'bio': passText(_bioController),
              },
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          foregroundColor: Colors.white,
          backgroundColor: theme.primaryColor,
          title: const Text('Edit Your Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelTextField(
                  controller: _nameController,
                  label: 'Name',
                  hintText: 'Edit your name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _stackController,
                  label: 'Stack',
                  hintText: 'Edit your stack',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _slackController,
                  label: 'Slack username',
                  hintText: 'Edit your slack username',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _githubController,
                  label: 'GitHub handle',
                  hintText: 'Edit your github handle',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _emailController,
                  label: 'Email address',
                  hintText: 'Edit your email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _phoneController,
                  label: 'Phone number',
                  hintText: 'Edit your phone number',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _locationController,
                  label: 'Location',
                  hintText: 'Edit your location',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LabelTextField(
                  controller: _bioController,
                  label: 'Bio',
                  hintText: 'Edit your bio',
                  maxLength: 100,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(
                      {
                        'name': passText(_nameController),
                        'stack': passText(_stackController),
                        'slack': passText(_slackController),
                        'email': passText(_emailController),
                        'github': passText(_githubController),
                        'phone': passText(_phoneController),
                        'location': passText(_locationController),
                        'bio': passText(_bioController),
                      },
                    ),
                    child: const Text('Save CV'),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
