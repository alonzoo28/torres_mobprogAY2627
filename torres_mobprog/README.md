# torres_mobprog

A new Flutter project.

During this laboratory activity, I learned how to install and set up Flutter on my computer. First, I downloaded the Flutter SDK version 3.47.9 and extracted it into the C drive. After that, I added Flutter to the environment variables and used the `flutter doctor -v` command to check if everything was installed correctly.

One challenge I encountered was that there were multiple Flutter paths in my environment variables. I solved this by prioritizing the latest Flutter SDK path. I also experienced a long Gradle build when I first launched my application on the Android emulator. At first, the emulator was showing an older Flutter application, but after the build finished, my Hello World application successfully appeared.

I also learned how to create a Flutter project in Visual Studio Code using the Empty Application template, install the Provider package, and run an application using an Android emulator. I modified the application to display my name after Hello World.

Overall, this activity helped me understand the basic process of setting up Flutter and running a mobile application. In the future, I will make sure to check my Flutter installation, configure my environment variables properly, and verify that my development tools are working before starting a project.

Enhancement 1: Adding Profile Pictures

I added profile pictures to the users by using image assets stored in the assets/images folder. I used the CircleAvatar widget and AssetImage() to display each user's picture beside their name.

Enhancement 2: Adding Images to News Feed Posts

I integrated images into newsfeed_card.dart by adding a postImage property and using the Image.asset() widget. I also added a hasImage Boolean property to make the image display dynamic. When hasImage is true and an image path is provided, the image appears. Otherwise, the image section is hidden.

Enhancement 3: Widget-Based Like and Comment Buttons

I created a reusable widget called PostActionButton in a separate Dart file. I used it for the Like and Comment buttons in the news feed. I also maintained the Like functionality, allowing the number of likes to increase or decrease when clicked.