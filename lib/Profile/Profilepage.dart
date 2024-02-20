import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/Profile/Header.dart';
import '../controllers/ControllerProfile.dart';
import '../widgets/bottomNavbar.dart';
import '../widgets/reused_components/ProfilMenus.dart';

// our data
const url = "meshivanshsingh.me";
const email = "me.shivansh007@gmail.com";
const phone = "90441539202"; // not real number :)
const location = "Lucknow, India";

class Profile extends StatelessWidget {
  ProfilePageController controller = Get.put(ProfilePageController());
  final int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
        title: Center(child: Text("Profile",style:TextStyle(fontSize: 18,fontFamily: 'productsans_normal',fontWeight: FontWeight.bold),))
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            // SizedBox(height: 10,),
            Header(),
            SizedBox(
              height: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => Text(
                  controller.username.value,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ))
              ],
            ),

            SizedBox(height: 20),
            ProfilMenus(title: "Setting",icon: Icons.settings,),
            ProfilMenus(title: "My Account",icon: Icons.person,),
            ProfilMenus(title: "Help Center",icon: Icons.help,),
            ProfilMenus(title: "Information",icon: Icons.info,),
         ProfilMenus2(title:"Logout", icon: Icons.logout_rounded),

        // Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(left: 20.0),
        //         child: Icon(Icons.logout_rounded),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 20.0),
        //         child: Text("Logout",style: TextStyle(fontSize: 15,color: Colors.red),),
        //       ),
        //       Spacer(),
        //       Icon(Icons.arrow_forward_ios_rounded)
        //     ]
        // )

          ],
        ),
      ),

    );
  }
}
