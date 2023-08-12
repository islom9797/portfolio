class Project {
  final String? title, description,link;

  Project({this.title, this.description,this.link});
}

List<Project> demo_projects = [
  Project(
    link: "https://play.google.com/store/apps/details?id=com.hamkorbank.mobile",
    title: "Banking App in Flutter - Hamkor",
    description:        "The Hamkor mobile app is your financial and digital assistant. To make using the application even more comfortable, we have made significant changes and completely updated it. If you are not a Hamkorbank client, then you have the opportunity to become one by downloading the application and applying for a microloan or debit card for free. ",
  ),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.resoinc.supershot",
    title: "Golf ball trajectory tracker  - SuperShot",
    description: "Special service for amateur golfers"
        " Artificial intelligence predicts your golf ball trajectory.And show distance of shoot,App sends videos uploaded or recorded in app send it to server to analyze video",
  ),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.sample.edgedetectionexample",
      title: "Optical character recognition app – SuperDOC",
      description: "Free text extraction"
          " Extracting the text contained in the photographed image,"
          " Allows you to copy text for free.We used TTS(Text to speech) model"),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.fourlab.lostBall",
      title: "Find your lost golf ball with AI - Lostball",
      description: "App used AI model trained for detection golf ball and detect ball via camera"),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.anabada.app",
      title: "Luxury bag barter app - Annabada",
      description: "Now try trading your luxury items for Annabada!"
          "Anabada - the first used online barter platform!"
          "I supported app,Usually bug fixes"),
  Project(
   link: "https://play.google.com/store/apps/details?id=com.kof.ficl_app",
    title: "FICL Manager- Flutter UI",
    description:
        "App based on Webview .We add feature using Camera,Bank certificate,push and firebase which don't support from webview",
  ),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.gcgfuntact.mobile",
    title: "Credit Guarantee Fund- Easy One",
    description:
    "App based on Webview .We add feature using Camera,Bank certificate,push and firebase which don't support from webview",
  ),
  Project(
    link: "https://play.google.com/store/apps/details?id=kr.co.inocoms.heartbeat",
    title: "ECG(Electrocardiography) get via ECG device- Breathm",
    description:
    "App based on ECG device show ECG state of fetus ",
  ),
  Project(
    link: "https://play.google.com/store/apps/details?id=com.wooridoctor.woodocapp",
    title: "Chat with  psychological counselor- 마음편해",
    description:
    "You can chat with psychological counselor  when you have stress, and make reservation for  counselor",
  ),
];
