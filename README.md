
# 🌦️ Hava Durumu Uygulaması  

Bu proje, kullanıcının konumunu alarak bulunduğu şehirdeki 7 günlük hava durumu tahminini bir API'den çekip gösteren basit bir hava durumu uygulamasıdır.  

## 🚀 Özellikler  
- Kullanıcının mevcut konumunu otomatik olarak algılar.  
- API kullanarak bulunduğu şehrin 7 günlük hava durumu tahminini gösterir.  
- Kullanıcı dostu ve basit bir arayüz.  

## 🛠️ Kullanılan Teknolojiler  
- **Flutter**: Uygulama geliştirme için.  
- **Dart**: Kodlama dili.  
- **HTTP**: API istekleri için.  
- **Geolocator**: Kullanıcının konumunu almak için.  
- **Hava Durumu API**: 7 günlük hava durumu verisi için.  

## 🔧 Kurulum  

1. **Depoyu Klonlayın**  
   ```bash  
   git clone https://github.com/kullaniciadi/hava-durumu-uygulamasi.git  
   cd hava-durumu-uygulamasi  
   ```  

2. **Gerekli Paketleri Yükleyin**  
   ```bash  
   flutter pub get  
   ```  

3. **API Anahtarınızı Ekleyin**  
   - Hava durumu API'sinden bir **API Key** alın.  
   - Projede `lib/api_config.dart` dosyasını oluşturun ve aşağıdaki kodu ekleyin:  
     ```dart  
     const String apiKey = 'SİZİN_API_KEYİNİZ';  
     ```  

4. **Uygulamayı Çalıştırın**  
   ```bash  
   flutter run  
   ```  

## 🖼️ Ekran Görüntüleri  
*(Ekran görüntülerini buraya ekleyebilirsiniz)*  

## 📚 Kütüphaneler ve Paketler  
Projede kullanılan başlıca paketler:  
- [http](https://pub.dev/packages/http)  
- [geolocator](https://pub.dev/packages/geolocator)  
- [flutter_spinkit](https://pub.dev/packages/flutter_spinkit) (isteğe bağlı olarak yüklenebilir).  

## 💡 Gelecekteki Geliştirmeler  
- Hava durumu detaylarını (nem, rüzgar hızı vb.) ekleme.  
- Çoklu dil desteği.  
- Daha gelişmiş bir tasarım.  

## 🤝 Katkıda Bulunun  
Projeye katkıda bulunmak için bir **pull request** gönderin ya da bir **issue** oluşturun.  

## 📄 Lisans  
Bu proje [MIT Lisansı](LICENSE) ile lisanslanmıştır.  
