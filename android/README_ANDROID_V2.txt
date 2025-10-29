# Android (Flutter V2) — إعداد جديد

هذا مجلد Android جديد لمشروع Flutter بصيغة **V2 Embedding**.
تم ضبط:
- compileSdk/targetSdk = 34
- minSdk = 21
- Kotlin 1.9.0
- Android Gradle Plugin 8.1.1
- بدون توقيع (Release unsigned)

## ما الذي تحتاجه محليًا؟
1) تأكد أن `android/local.properties` يحتوي على المسارات الصحيحة:
   ```
   sdk.dir=/path/to/Android/sdk
   flutter.sdk=/path/to/flutter
   ```
2) افتح المجلد في Android Studio ودع Gradle يقوم بالمزامنة.
   - إذا احتجت لـ Gradle Wrapper، أنشئه من Android Studio أو شغّل:
     ```
     gradle wrapper
     ```
   - ثم بناؤه:
     ```
     ./gradlew assembleRelease
     ```
   - أو عبر Flutter:
     ```
     flutter build apk --release
     ```

## التوقيع (لاحقًا)
أضف إعدادات التوقيع في `app/build.gradle` عبر `signingConfigs` و `buildTypes.release.signingConfig` أو من Android Studio.
