FROM sukhada369/java_android

MAINTAINER Sukhada Sankpal<sukhadas@cybage.com>

# --- Adding android sdk

RUN wget http://dl.google.com/android/android-sdk_r24-linux.tgz

RUN tar -xzf android-sdk_r24-linux.tgz

RUN sudo mv android-sdk-linux /usr/local/android-sdk

#--- Add android tools and platform tools to PATH

ENV ANDROID_HOME /usr/local/android-sdk

ENV PATH $PATH:$ANDROID_HOME/tools

ENV PATH $PATH:$ANDROID_HOME/platform-tools

#--- Update android(everything)

RUN sudo echo "y" | android update sdk --filter platform-tool --no-ui --force
RUN sudo echo "y" | android update sdk --filter platform --no-ui --force
RUN sudo echo "y" | android update sdk --filter build-tools-22.0.1 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-x86-android-19 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-x86-android-21 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-x86-android-22 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-armeabi-v7a-android-19 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-armeabi-v7a-android-21 --no-ui -a
RUN sudo echo "y" | android update sdk --filter sys-img-armeabi-v7a-android-22 --no-ui -a
