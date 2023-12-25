## Open CV for Android

> Auto building aar for OpenCV Android SDK
JitPack - Downloads [![JitPack](https://jitpack.io/v/Sauvio/opencv-android.svg)](https://jitpack.io/#Sauvio/opencv-android)


### Usage

Add JitPack repo at last in root build.gradle repositories block if not already added

```groovy
allprojects {
    repositories {
        ...
        maven { url 'https://jitpack.io' }
    }
}
```

Add the dependency in app/build.gradle
```groovy

dependencies {
    implementation 'com.github.iamareebjamal:opencv-android:<tag>'
}
```

**Note:** 
Replace `<tag>` with actual release. See latest releases [here](https://github.com/iamareebjamal/opencv-android/releases)
`-contrib` releases include extra contrib modules not found in core releases

### License
[OpenCV License](https://github.com/opencv/opencv/blob/master/LICENSE)
