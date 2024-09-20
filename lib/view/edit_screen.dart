import 'package:flutter/material.dart';
import 'package:lesson4/controller/edit_controller.dart';
import 'package:lesson4/model/editscreen_model.dart';
import 'package:lesson4/model/user_record.dart';

class EditScreen extends StatefulWidget {
  const EditScreen(this.user, {super.key});

  final UserRecord user;

  static const routeName = '/editScreen';

  @override
  State<StatefulWidget> createState() {
    return EditState();
  }
}

class EditState extends State<EditScreen> {
  late EditScreenModel model;
  late EditController con;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    model = EditScreenModel(widget.user);
    con = EditController(this);
  }

  void callSetState(fn) => setState(fn);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit: ${widget.user.name}'),
        actions: [
          IconButton.outlined(
            onPressed: con.save,
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                nameRow(context),
                phoneRow(context),
                ageRow(context),
                const SizedBox(
                  height: 12.0,
                ),
                Text('Classification', style: Theme.of(context).textTheme.titleLarge,),
                classificationDropdownbutton(),
                 const SizedBox(
                  height: 12.0,
                ),
                Text('Major', style: Theme.of(context).textTheme.titleLarge,),
                majorRadiobuttons(),
                 const SizedBox(
                  height: 12.0,
                ),
                Text('Prog Language Proficiency', style: Theme.of(context).textTheme.titleLarge,),
                progLanguageCheckboxes(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget progLanguageCheckboxes() {
    return Column(
      children: [
        for (var v in ProgLanguages.values)
        CheckboxListTile(
          value: model.user.progLanguages![v],
          title: Text(v.name),
          onChanged: (value) =>  con.onChangedLanguage(value, v),
        ),
      ],
    );
  }

  Widget majorRadiobuttons() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        border: Border.all(
          color: Colors.blue[900]!,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          for (var m in Major.values)
          RadioListTile<Major>(
            title: Text(m.name),
            value: m,
            groupValue: model.user.major,
            onChanged: con.onChangedMajor,
          ),
        ],
      ),
    );
  }

  Container classificationDropdownbutton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        border: Border.all(
          color: Colors.green[900]!,
          width: 2.0,
        ),
      ),
      child: DropdownButton(
        value: model.user.classification,
        items: [
          for (var c in Classification.values)
            DropdownMenuItem(
              value: c,
              child: Text(c.name),
            ),
        ],
        onChanged: con.onChangedClassification,
      ),
    );
  }

  Row ageRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              'Age',
              style: Theme.of(context).textTheme.titleMedium,
            )),
        Expanded(
          flex: 3,
          child: TextFormField(
            initialValue: '${model.user.age}',
            validator: con.validateAge,
            onSaved: con.saveAge,
          ),
        ),
      ],
    );
  }

  Row phoneRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              'phone',
              style: Theme.of(context).textTheme.titleMedium,
            )),
        Expanded(
          flex: 3,
          child: TextFormField(
            initialValue: model.user.phone,
            validator: con.validatePhone,
            onSaved: con.savePhone,
          ),
        ),
      ],
    );
  }

  Row nameRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              'Name',
              style: Theme.of(context).textTheme.titleMedium,
            )),
        Expanded(
          flex: 3,
          child: TextFormField(
            initialValue: model.user.name,
            validator: con.validateName,
            onSaved: con.saveName,
          ),
        ),
      ],
    );
  }
}
