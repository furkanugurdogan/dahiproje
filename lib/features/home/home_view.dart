import 'package:flutter/material.dart';
import 'package:dahiproje/core/utils/constants.dart';
import 'package:dahiproje/widgets/all_doctors_widget.dart';
import 'package:dahiproje/widgets/custom_category_widget.dart';
import 'package:dahiproje/widgets/custom_title_widget.dart';
import 'package:dahiproje/widgets/prev_card_widget.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.appBarColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.table_rows_outlined,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSearchBox(context, controller),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.filter_alt_outlined,
                    color: Constants.appBarColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: customPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitle(title: 'Category'),
              _customCategory(),
              const CustomTitle(title: 'Previous Doctors'),
              _previousDoctorsListView(context),
              const CustomTitle(title: 'All Doctors'),
              _allDoctorsListView(context),
            ],
          ),
        ),
      ),
    );
  }


  SizedBox _allDoctorsListView(BuildContext context) {
    return SizedBox(
      height: screenHeight(context)/3,
      width: screenWidth(context),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AllDoctorsWidget(
            doctorName: 'Dr. Pediatrician',
            doctorSpecialist: 'Specialist Cardiologist',
            doctorRate: '4.4',
          ),
          SizedBox(height: 20),
          AllDoctorsWidget(
            doctorName: 'Dr. Daryl Nehls',
            doctorSpecialist: 'Specialist Cardiologist',
            doctorRate: '4.4',
          ),
        ],
      ),
    );
  }


  SizedBox _previousDoctorsListView(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) / 3,
      width: screenWidth(context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          PreviousCard(
            doctorImage: 'assets/images/doctorOne.jpg',
            doctorName: 'Dr.Daryl Nehls',
            doctorProffesion: 'Family Doctor',
            doctorAvailableness: 'Available',
            isBusy: true,
          ),
          SizedBox(width: 15),
          PreviousCard(
            doctorImage: 'assets/images/doctorOne.jpg',
            doctorName: 'Dr.Ester Howard',
            doctorProffesion: 'Psychologist',
            doctorAvailableness: 'Busy',
            isBusy: false,
          ),
          SizedBox(width: 15),
          PreviousCard(
            doctorImage: 'assets/images/doctorOne.jpg',
            doctorName: 'Dr.Ester Howard',
            doctorProffesion: 'Psychologist',
            doctorAvailableness: 'Busy',
            isBusy: true,
          ),
        ],
      ),
    );
  }


  Widget _buildSearchBox(
      BuildContext context, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth(context) / 1.3,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ListTile(
          leading: const Icon(Icons.search),
          title: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Search Item',
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
          trailing: IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              controller.clear();
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
    );
  }


  Row _customCategory() {
    return Row(
      children: const [
        CustomCategoryWidget(
          color: Constants.consultantColor,
          iconData: Icons.heart_broken,
          text: 'Consultant',
        ),
        SizedBox(width: 25),
        CustomCategoryWidget(
          color: Constants.heartColor,
          iconData: Icons.heart_broken,
          text: 'Heart',
        ),
        SizedBox(width: 25),
        CustomCategoryWidget(
          color: Constants.dentalColor,
          iconData: Icons.heart_broken,
          text: 'Dental',
        ),
        SizedBox(width: 25),
        CustomCategoryWidget(
          color: Constants.appBarColor,
          iconData: Icons.heart_broken,
          text: 'More',
        ),
      ],
    );
  }
}
