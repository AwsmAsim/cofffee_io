import 'package:coffeee/model/founder.dart';
import 'package:get/get.dart';

class TeamController extends GetxController{

  List<FounderModel> founders = <FounderModel>[].obs;
  
  Future<bool> loadFounder() async{
    await Future.delayed(Duration(milliseconds: 1));
    
    List<FounderModel> retrievedFounders = [
      FounderModel(name: 'Neha Sharma', position: 'Cheif Sales Officer', subDesignation: 'Strategy Wizard, Urban Nomad', description: 'Neha brings over 16 years of invaluable enterprise leadership experience in emerging tech companies across industries - from ITeS and telecom to airlines. An outdoorsy soul, Neha loves to unwind by exploring offbeat destinations and hiking through the wilderness.', imgURL: 'assets/images/neha_sharma_maam.png'),
      FounderModel(name: 'Amit Veer', position: 'Cheif Executive Oficer', subDesignation: 'Marketing Maverick. Resident Singer.', description: 'Across his 17 years of experience, Amit has held key leadership positions in some of India’s biggest homegrown companies and MNCs alike. During his stint at Paytm, Amit helped build one of the largest QR payments networks in India. When he’s not busy with Coffeee, you’ll find him singing his favorite Bollywood songs or running half-marathons!', imgURL: 'assets/images/amit_veer_sir.png'),
      FounderModel(name: 'Ankt Mittal', position: 'Cheif Technological Officer', subDesignation: 'Tech Guru. Baddy Buff.', description: 'Throughout his prolific tech career, Ankit developed cutting-edge digital initiatives and scalable technologies for the likes of IBM, Goldman Sachs, Zest Money, and Dunzo. An out-and-out sports enthusiast, Ankit is always up for a game of chess or badminton if you are!', imgURL: 'ankit_mittal_sir.png')
    ];
    
    return true;
  }


}