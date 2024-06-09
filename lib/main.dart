import 'package:flutter/material.dart';

void main()  {
runApp(  ProfileScreen(),

  );}
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 5, 93),
        title: Text("Profile"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: 
       
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 216, 5, 93),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                                'assets/images/girl.jpg'), // تأكد من وجود الصورة في مجلد assets
                          ),
                        ),
                        Text(
                          'Rahaf Algonma',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Rahaf@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.camera)),
                                Text("Camera"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.fingerprint)),
                                Text("Security"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                                Text("Phone"),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.settings)),
                                Text("Settings"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 55,),
        
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconTextBox(
                    icon: Icons.dashboard,
                    text: "Dashboard",
                  ),
                  IconTextBox(
                    icon: Icons.balance,
                    text: "Balance",
                  ),
                  IconTextBox(
                    icon: Icons.credit_card,
                    text: "creditCard",
                  ),
                ],
              ),
          
          SizedBox(height: 20,),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconTextBox(
                icon: Icons.language,
                text: "Language",
              ),
              IconTextBox(
                icon: Icons.message,
                text: "Questions",
              ),
              IconTextBox(
                icon: Icons.remove_red_eye,
                text: "Visibilty",
              ),
            ],
          ),

            ],
          ),
 
              ],
          
          ),
          ),

            bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 216, 5, 93),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}




class IconTextBox extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextBox({required this.icon, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 27.0,
            color: Colors.black,
          ),
          SizedBox(height: 5.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
