import 'package:flutter/material.dart';

// ojala git lo asocie
void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contacto es favorito");
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    "https://th.bing.com/th/id/R.17471ec1c06d9832211881eaa0a0ea02?rik=BnnNsbPjbZUiLw&riu=http%3a%2f%2fgifsde.com%2fuploads%2ff7732f_2voltaasaulasmagiagifs.gif&ehk=a5KJRVCqil4R5VpPj6SHgeMyY1AiAlJ9WcohHgrmP0E%3d&risl=&pid=ImgRaw&r=0",
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Nombre usuario",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Adding Profile action items
                      buildTextButton(),
                      buildEmailButton(),
                    ],
                  ),
                ),
                //Divider to separate action items section
                Divider(
                  color: Colors.grey,
                ),

                //Agregando "Numero de telefono" item
                mobilePhoneListTile(),
                otherPhoneListTile(),

                //Divider to separate out phone numbers section
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Email address item
                emailListTile(),

                //NEW CODE: Divider to separate physical address
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Contact's home address item
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Agregando "Enviar tarea"  item de accion
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.task_alt,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Revisar tareas completadas"),
      ],
    );
  }

  //Adding "Email" action item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.assignment,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Asignar"),
      ],
    );
  }

  //Adding "Mobile Phone Number" item
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("330-803-3390"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }

  //Adding "Other Phone Number" item
  Widget otherPhoneListTile() {
    return ListTile(
      leading: Text(""),
      title: Text("440-440-3390"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }

  //NEW CODE: Adding "Email Address" item
  Widget emailListTile() {
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("priyanka@priyanka.com"),
      subtitle: Text("Correo escolar"),
    );
  }
}
