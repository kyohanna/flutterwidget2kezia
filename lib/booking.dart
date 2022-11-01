part of 'halaman.dart';
 
class Book extends StatefulWidget {
  const Book({ Key? key }) : super(key: key);
  static const String routeName = '/booking';
  @override
  _BookState createState() => _BookState();
}
 
class _BookState extends State<Book> {
  @override
  void initState() {
    super.initState();
  }
    final ctrlPhone = TextEditingController();
   final ctrlAddress = TextEditingController();
  final _loginKey = GlobalKey<FormState>();
   final ctrlPass = TextEditingController();
  final ctrlEmail = TextEditingController();
  bool isHide = true;
 
  @override
  void dispose() {
     super.dispose();
     ctrlPhone.dispose();
    ctrlEmail.dispose();
    ctrlPass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        centerTitle: true,
      ),
 
      body: Container(padding: EdgeInsets.all(15),child: Form( key: _loginKey,
          child: Column(children: [ SizedBox(height: 16,),TextFormField( keyboardType: TextInputType.emailAddress,decoration: InputDecoration(labelText: "email", prefixIcon: Icon(Icons.email)),
            controller: ctrlEmail,autovalidateMode: AutovalidateMode.onUserInteraction,validator: (value){return !EmailValidator.validate(value.toString())
                   ? 'email tidak valid': null;},
              ),SizedBox(height: 16,),
              TextFormField(obscureText: isHide, decoration: InputDecoration(labelText: "Password",prefixIcon: Icon(Icons.password),suffixIcon: GestureDetector(onTap: (){
                      setState(() {isHide = !isHide;});},child: Icon(isHide ? Icons.visibility: Icons.visibility_off
                    ),
                    )),
                controller: ctrlPass, autovalidateMode: AutovalidateMode.onUserInteraction,validator: (value){return value.toString().length < 8 ? 'password at least 8 character!': null;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(keyboardType: TextInputType.number,decoration: InputDecoration(labelText: "no telp",prefixIcon: Icon(Icons.phone)),
                controller: ctrlPhone,autovalidateMode: AutovalidateMode.onUserInteraction,validator: (value){return value.toString().length < 6 ? 'number at least 6 character!': null;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(keyboardType: TextInputType.text,decoration: InputDecoration(labelText: "alamat",prefixIcon: Icon(Icons.map)
                ),
                controller: ctrlAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,),
 
              SizedBox(height: 32,),ElevatedButton(onPressed: (){if(_loginKey.currentState!.validate()){showDialog(context: context,builder: (context)=>AlertDialog(
                      title: Text('Udah booking!'),content: Text(
                        'email : '+ctrlEmail.text.toString()+
                        ', password: '+ctrlPass.text.toString()+
                        ', no telp : '+ctrlPhone.text.toString()+
                        ', alamat : '+ctrlAddress.text.toString(),
                      ),
                      actions: [
                        TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext){
                              return Hal1();
                            }));
                          }, 
                          child: Text("RETURN")
                        )
                      ],
                    )
                  );
                }else{
                  showDialog(context: context,builder: (context) => AlertDialog(title: Text('gagal'),content: Text('isi kabeh rek'), 
                    )
                  );
                }
              }, child: Text('submit gas')),
            ],
          ),
        ),
      ),
    );
  }
}