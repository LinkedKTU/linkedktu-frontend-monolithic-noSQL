# Bitirme Mongo Monolit

Bu, `bitirme_mongo_monolit` adlı yeni bir Flutter projesidir. Bu proje, Flutter kullanılarak geliştirilmiş ve modern mobil uygulama geliştirme ihtiyaçlarına yönelik çeşitli özellikler sunmaktadır. Proje, veri işleme ve kullanıcı arayüzü oluşturma konularında kapsamlı fonksiyonellikler içermektedir.

## Başlangıç

1. Projeyi Intellij Idea ya da Android Studio'da aç 
2. Aşağıdaki gereksinimlere uygun SDK ve JDK ve Gradle versiyonuna geçin
3. IDE arayüzünden android emülatör oluşturun
4. IDE ara yüzünden run tuşuna basın

### Önkoşullar

Bu projeyi çalıştırmak için aşağıdaki önkoşulların yerine getirilmesi gerekmektedir:

- Java SDK: Oracle OpenJDK sürüm 11.0.15
- Flutter SDK: Sürüm '>=3.2.5 <4.0.0'

Flutter'ın nasıl kurulacağına dair resmi dokümantasyona [buradan](https://flutter.dev/docs/get-started/install) ulaşabilirsiniz.

### Kurulum

1. Bu repoyu klonlayın.
   ```bash
   git clone https://github.com/LinkedKTU/linkedktu-frontend-monolithic-noSQL.git

2. Ya da Intellij Idea veya Android Studio'yu açın unzip ettiğiniz projen dosyasını seçin
   
Proje dizinine gidin.
bash
Copy code
cd bitirme_mongo_monolit
Gerekli paketleri yükleyin.
bash
Copy code
flutter pub get
Uygulamayı başlatın.
bash
Copy code
flutter run
Bağımlılıklar
Proje, aşağıdaki Flutter bağımlılıklarını kullanmaktadır:

flutter_riverpod: ^2.4.9
http: ^0.13.5
fluttertoast: ^8.2.4
shared_preferences: ^2.0.15
flutter_native_splash: ^2.2.16
flutter_launcher_icons: ^0.11.0
url_launcher: ^6.1.7
cupertino_icons: ^1.0.2
Bu bağımlılıklar, proje dosyasındaki pubspec.yaml dosyasına dahil edilmiştir ve yukarıdaki flutter pub get komutu ile yüklenebilir.

Kullanım
Bu bölümde, projenizin nasıl kullanılacağına dair örnekler ve kod parçaları sağlanacaktır (uygulamanızın özelliklerine bağlı olarak buraya özel bilgiler ekleyin).
