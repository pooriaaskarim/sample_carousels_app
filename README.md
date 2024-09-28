![CarouselsApp](https://raw.githubusercontent.com/pooriaaskarim/sample_carousels_app/refs/heads/master/android/app/src/main/res/mipmap-xhdpi/ic_launcher_adaptive_fore.png)
# 📱 The Ultimate Carousel App 📱
Sample app implemented as part of a PoS, simply a Carousl list and a detials representation.

## Try it out


+ Latest Android releases are located at [**Releases**](https://github.com/pooriaaskarim/sample_carousels_app/releases)

+ You can alternatively run web app on docker image by running:
    ```
    #!/bin/sh
  
    docker pull ghcr.io/pooriaaskarim/carousel-pwa:latest
  
    docker run -d -p 88:80  ghcr.io/pooriaaskarim/carousel-pwa:latest

    ```
  and then accessing [**localhost on Port 88**](http://localhost:88) on your local machine


## Sleeves up, Hands On Code


+ Pull the repository.Master and setup your build environment. CarouselApp is build with **Flutter**, uses three layers to keep Code nice and clean:
  - Domain
      Hold Entities of the project
  - Infrastructure
      Sets up tools to access data on network and Repositories that provides data to application flow
  - Presentation
      Contatining Ui elements and Logic of the application
    
   You'd need to set up Flutter and pull project packages and you're good to build app in your prefered development environment.
+ **Dockerfile** and **compose** file are present at the root of the app, so you can run your build simply by running
  ```
  
  docker compose up --build
  
  ```
  in repository root.


That's pretty much it!

Have a nice one.
