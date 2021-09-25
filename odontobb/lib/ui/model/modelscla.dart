
class ModelClass {
  String title;
  // String subtitle;
  // String description;
  // String infected;
  // String cured;
  // String dead;
  String image;

  ModelClass(
      { required this.title, 
        // this.subtitle,
        // this.description,
        required this.image
        // this.infected,
        // this.cured,
        // this.dead
       });
}
//HomeScreenList
List<ModelClass> homeScreenHomitelList = [
  ModelClass(image: "icons/ic_general_check.png",title: "Chequeo General"),
  ModelClass(image: "icons/ic_chat.png",title: "Chat Directo"),
  ModelClass(image: "icons/ic_health_news.png",title: "Noticias de Salud"),
  ModelClass(image: "icons/ic_doc.png",title: "Obtenga Asesoramiento médico"),
];
//homeScreenDiseaseList 
// List<ModelClass> homeScreenDiseaseList = [
//   ModelClass(image: "assets/icons/ic_uk_flag.png",title: "UK",
//       infected: "Infected: 40",cured: "Cured: 40",dead: "Dead: 33"),
//   ModelClass(image: "assets/icons/ic_world.png",title: "World",
//       infected: "Infected: 90.929",cured: "Cured: 47.796",dead: "Dead: 3.118"),
// ];
//HomeScreenList
List<ModelClass> homeScreenTestList = [
  ModelClass(image: "icons/ic_endocrine.png",title: "Endocrino"),
  ModelClass(image: "icons/ic_dermatology.png",title: "Dermatología"),
  ModelClass(image: "assets/icons/ic_heart.png",title: "Corazón"),
  ModelClass(image: "assets/icons/ic_andrology.png",title: "Corazón"),
  ModelClass(image: "assets/icons/ic_nutrition.png",title: "Corazón"),
  ModelClass(image: "assets/icons/ic_neurology.png",title: "Corazón"),
];

List<ModelClass> allNewsScreenSlider=[
  ModelClass(image: "imgs/libartry_img.jpg",
      title: "COVID-19 symptoms: what are they and should i see a doctor?"
  ),
  ModelClass(image: "assets/imgs/libartry_img.jpg",
      title: "China Records Lowest Infections"
  ),
  ModelClass(image: "assets/imgs/libartry_img.jpg",
      title: "Coronavirus reaches world leaders and disrupts global sporting events"
  ),
];
List<ModelClass> allNewsScreenList=[
  ModelClass(image: "assets/imgs/checkup.jpg",
             title: "USA: At Least 5 States Will Close Schools"
            ),
  ModelClass(image: "assets/imgs/checkup.jpg",
      title: "China Records Lowest Infections"
  ),
  ModelClass(image: "assets/imgs/checkup.jpg",
      title: "Coronavirus reaches world leaders and disrupts global sporting events"
  ),
];