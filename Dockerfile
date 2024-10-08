# Stage 1
FROM debian:latest AS build-env

RUN apt-get update 
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
RUN apt-get clean

RUN export PUB_HOSTED_URL="https://pub.flutter-io.cn"
RUN export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
RUN git clone --progress --verbose -b stable https://github.com/flutter/flutter.git /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter doctor -v

RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web


RUN mkdir /app/
COPY . /app/
WORKDIR /app/
RUN flutter clean
RUN flutter build web --release

# Stage 2
FROM nginx:latest
COPY ./.configurations/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-env /app/build/web /usr/share/nginx/html