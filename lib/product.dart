class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

List<Product> products = [
  
  Product(
  name: "Akıllı Telefon",
  description: "En son teknoloji özelliklere sahip amiral gemisi telefon. Güçlü işlemcisi sayesinde yüksek performans sunar. Gelişmiş kamera sistemi ile profesyonel fotoğraflar çekmenizi sağlar.",
  imageUrl: "https://www.gizerler.com/assets/product-images/149000/iphone-16-128-gb-laciverttas-telefon_91796.jpg",
  price: 15000.0,
),
Product(
  name: "Kablosuz Kulaklık",
  description: "Gürültü engelleme özellikli yüksek kaliteli kulaklık. Uzun süreli kullanım için ergonomik bir tasarıma sahiptir. Net ses deneyimiyle müzik ve görüşmeleri keyifli hâle getirir.",
  imageUrl: "https://cdn.cimri.io/image/1200x1200/apple-airpods-pro-2-nesil-mtjv3tua-bluetooth-kulaklik_820538947.jpg",
  price: 3500.0,
),
Product(
  name: "Dizüstü Bilgisayar",
  description: "Yüksek performanslı, ince ve hafif tasarıma sahip laptop. Hem iş hem de günlük kullanım için idealdir. Uzun pil ömrüyle mobil kullanım avantajı sunar.",
  imageUrl: "https://images-eu.ssl-images-amazon.com/images/I/61KU1gZSoiL._AC_UL375_SR375,375_.jpg",
  price: 28000.0,
),
Product(
  name: "Akıllı Saat",
  description: "Sağlık takibi ve bildirim özellikleri sunan akıllı saat. Günlük aktivitelerinizi detaylı şekilde analiz eder. Şık tasarımıyla her stile uyum sağlar.",
  imageUrl: "https://productimages.hepsiburada.net/s/258/375-375/110000241885336.jpg",
  price: 4200.0,
),
Product(
  name: "Tablet",
  description: "Geniş ekranlı, multimedya ve iş için ideal tablet. Film izleme ve belge düzenleme deneyimini geliştirir. Hafif yapısıyla her yere kolayca taşınabilir.",
  imageUrl: "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/144971-4_large.jpg",
  price: 9800.0,
),
Product(
  name: "Bluetooth Hoparlör",
  description: "Yüksek ses kalitesi ve taşınabilir tasarım. Açık ve kapalı alanlarda güçlü ses sunar. Uzun pil ömrüyle kesintisiz müzik keyfi sağlar.",
  imageUrl: "https://www.dikmen.com.tr/idea/el/11/myassets/products/230/jbl-go4-bluetooth-hoparlor-ip67-siyah-9916.jpeg?revision=1769258158",
  price: 2600.0,
),
Product(
  name: "Oyun Mouse",
  description: "RGB aydınlatmalı, yüksek hassasiyetli oyuncu mouse’u. Hızlı tepki süresiyle rekabetçi oyunlarda avantaj sağlar. Ergonomik yapısı uzun kullanımlarda konfor sunar.",
  imageUrl: "https://static.ticimax.cloud/55525/Uploads/UrunResimleri/buyuk/4a0def48-252e-42d2-93ed-9721f511b149-73615d.jpg",
  price: 1200.0,
),
Product(
  name: "Mekanik Klavye",
  description: "Dayanıklı tuş yapısına sahip mekanik oyuncu klavyesi. Yüksek yazma hassasiyeti sunar. RGB aydınlatmasıyla görsel olarak dikkat çeker.",
  imageUrl: "https://iis-akakce.akamaized.net/p.z?https%3A%2F%2Fimg%2Epzrmcdn%2Ecom%2Fasset%2F8692031479787%2Fimages%2Fk50siyahrgbredswitchtrkeqgamingoyuncumekanikklavye%2D1%2Ejpg",
  price: 3100.0,
),
Product(
  name: "4K Monitör",
  description: "Ultra yüksek çözünürlüklü profesyonel monitör. Detaylı görüntü kalitesi ile tasarım ve video işlerine uygundur. Geniş ekranı verimli bir çalışma alanı sağlar.",
  imageUrl: "https://www.oktostore.com/images/urunler/benq-pd2725u-27-4k-uhd-display-p-resim4-18350.webp",
  price: 14500.0,
),
Product(
  name: "Powerbank",
  description: "Hızlı şarj destekli yüksek kapasiteli taşınabilir şarj cihazı. Gün boyu enerjinizin bitmesini engeller. Kompakt tasarımı sayesinde çantada kolayca taşınır.",
  imageUrl: "https://cdn.sandberg.world/products/images/rt/420-75_rt.jpg",
  price: 1800.0,
),
Product(
  name: "Akıllı TV",
  description: "4K HDR destekli geniş ekran akıllı televizyon. Canlı renkler ve yüksek kontrast sunar. Akıllı uygulama desteğiyle dijital platformlara kolay erişim sağlar.",
  imageUrl: "https://cdn.shopify.com/s/files/1/0647/9986/6991/files/11.png?v=1754229685",
  price: 32000.0,
),
Product(
  name: "Oyun Konsolu",
  description: "Yeni nesil grafik performansı sunan oyun konsolu. Akıcı ve gerçekçi oyun deneyimi sağlar. Geniş oyun kütüphanesiyle uzun süreli eğlence sunar.",
  imageUrl: "https://www.gaming.gen.tr/wp-content/uploads/2024/07/sony-dualsense-kablosuz-ps5-oyun-kolu-beyaz-resmi-distributor-garantili-1.jpg",
  price: 24000.0,
),
Product(
  name: "Kablosuz Şarj Standı",
  description: "Telefonlar için hızlı ve güvenli kablosuz şarj standı. Kablo karmaşasını ortadan kaldırır. Masaüstü kullanım için şık bir tasarıma sahiptir.",
  imageUrl: "https://productimages.hepsiburada.net/s/305/375-375/110000297858764.jpg",
  price: 1500.0,
),
Product(
  name: "Akıllı Süpürge",
  description: "Haritalama özellikli robot süpürge. Otomatik temizlik planları oluşturabilir. Ev işlerini minimum eforla yönetmenizi sağlar.",
  imageUrl: "https://cdn.evkur.com.tr/c/Product/fakir-robert-rs-780-plus-1_zd7q0t.jpg",
  price: 18500.0,
),
Product(
  name: "Web Kamera",
  description: "Full HD görüntü kalitesi sunan web kamerası. Online toplantılar ve yayınlar için idealdir. Net ve doğal görüntü sağlar.",
  imageUrl: "https://m.media-amazon.com/images/I/61-K2lXmHQL._AC_UF1000,1000_QL80_.jpg",
  price: 2300.0,
),
Product(
  name: "Harici SSD",
  description: "Yüksek hızlı veri aktarımı sağlayan taşınabilir SSD. Büyük dosyaları saniyeler içinde taşır. Dayanıklı yapısıyla uzun ömürlü kullanım sunar.",
  imageUrl: "https://cdn.akakce.com/z/sandisk/sandisk-extreme-v2-4-tb-sdssde61-4t00-g25-2-5-ssd-usb-3-2-tasinabilir-disk.jpg",
  price: 5200.0,
),
Product(
  name: "Akıllı Ampul",
  description: "Mobil uygulama ile kontrol edilebilen LED ampul. Işık rengini ve parlaklığı ayarlamaya olanak tanır. Enerji tasarrufu sağlar.",
  imageUrl: "https://cdn03.ciceksepeti.com/cicek/kcm15749893-1/L/simart-akilli-wi-fi-led-ampul-kcm15749893-1-adff5f3cf7c34d1dab37b1bdbd17115f.jpg",
  price: 950.0,
),
Product(
  name: "VR Gözlük",
  description: "Sanal gerçeklik deneyimi sunan VR gözlük. Oyun ve uygulamalarda gerçekçi bir atmosfer oluşturur. Geniş görüş açısıyla etkileyici deneyim sağlar.",
  imageUrl: "https://cdn.dsmcdn.com/ty1528/product/media/images/prod/QC/20240906/14/0378b07f-4399-3b2f-90ac-5dcdad7a0964/1_org_zoom.jpg",
  price: 8900.0,
),
Product(
  name: "Drone",
  description: "4K kamera destekli profesyonel drone. Havadan yüksek kaliteli görüntüler yakalar. Stabil uçuş sistemiyle güvenli kullanım sunar.",
  imageUrl: "https://cdn.dsmcdn.com/ty1032/product/media/images/prod/SPM/PIM/20231105/23/12196446-37c4-32a1-ab2c-beefd8fddb86/1_org_zoom.jpg",
  price: 27500.0,
),
Product(
  name: "Gaming Kulaklık",
  description: "Surround ses destekli oyuncu kulaklığı. Oyunlarda yönlü ses avantajı sağlar. Uzun süreli kullanımlarda konfor sunar.",
  imageUrl: "https://static.sinerji.gen.tr/Images/LG/H8K-gb-h44-main.jpg",
  price: 3600.0,
),
Product(
  name: "Mini Projeksiyon",
  description: "Taşınabilir ve yüksek çözünürlüklü mini projeksiyon cihazı. Küçük alanlarda büyük ekran deneyimi sunar. Kolay kurulumu ile pratik kullanım sağlar.",
  imageUrl: "https://cdn.dsmcdn.com/mnresize/400/-/ty1514/product/media/images/prod/QC/20240830/12/fbffa5d9-4e4c-3004-8072-92c557c35ec0/1_org_zoom.jpg",
  price: 11200.0,
),
Product(
  name: "Akıllı Kamera",
  description: "Ev güvenliği için gece görüşlü akıllı kamera. Anlık bildirimlerle güvenliği artırır. Mobil uygulama üzerinden uzaktan izleme sağlar.",
  imageUrl: "https://www.kadrajteknoloji.com/idea/pw/09/myassets/products/484/e0e8ac9697cc48ada32d33915b75ae77-jpg.jpeg?revision=1736511467",
  price: 4100.0,
),
Product(
  name: "USB-C Hub",
  description: "Çoklu bağlantı desteği sunan USB-C dönüştürücü. Tek porttan birçok cihaz bağlamayı sağlar. Ofis ve mobil kullanım için idealdir.",
  imageUrl: "https://cdn.sandberg.world/products/images/rt/136-41_rt.jpg",
  price: 1700.0,
),
Product(
  name: "E-Kitap Okuyucu",
  description: "Göz yormayan ekran teknolojisine sahip e-kitap okuyucu. Uzun süreli okumalar için konfor sunar. Hafif yapısıyla kolay taşınır.",
  imageUrl: "https://aydinlarticaret.com/wp-content/uploads/2024/12/amazon-kindle-paperwhite-2024-7-inc-16gb-yesil-600x600.jpg",
  price: 6400.0,
),
Product(
  name: "Akıllı Tartı",
  description: "Vücut analiz özellikli dijital akıllı tartı. Kilo ve vücut verilerini detaylı gösterir. Sağlıklı yaşam takibini kolaylaştırır.",
  imageUrl: "https://www.monofe.com/userfiles/urunler//orjinal/RENPHO_Eyeris_Masc_Akilli_Goz_Masaji_1720510742_10.jpg",
  price: 2100.0,
),
Product(
  name: "Wi-Fi Router",
  description: "Yüksek hızlı ve geniş kapsama alanı sunan modem. Stabil internet bağlantısı sağlar. Ev ve ofis kullanımı için uygundur.",
  imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReMWBEvwhlPbBuRdZegnCCrxsvCHLcEztsXA&s",
  price: 3900.0,
),
Product(
  name: "Akıllı Priz",
  description: "Uzaktan kontrol edilebilen enerji tasarruflu priz. Elektronik cihazları mobil uygulamayla yönetir. Enerji tüketimini azaltmaya yardımcı olur.",
  imageUrl: "https://www.alpsmart.net/wp-content/uploads/2024/12/AS-816-Hero_New.jpg",
  price: 900.0,
),
Product(
  name: "Grafik Tablet",
  description: "Dijital çizim ve tasarım için profesyonel tablet. Hassas kalem desteği sunar. Tasarımcılar için yüksek kontrol sağlar.",
  imageUrl: "https://store.wacomturkiye.com/uploads/urun_de439f4a731642d1b87e6c6563cc088c.png",
  price: 7800.0,
),
Product(
  name: "Akıllı Bileklik",
  description: "Adım sayar ve uyku takibi özellikli bileklik. Günlük aktivite verilerini kaydeder. Hafif yapısıyla gün boyu rahat kullanım sunar.",
  imageUrl: "https://cdn2.a101.com.tr/dbmk89vnr/CALL/Image/getcl/livephotos/8/26008565DEFAULT/26008565DEFAULT_635.jpg",
  price: 1600.0,
),
Product(
  name: "Masaüstü Bilgisayar",
  description: "Yüksek performanslı oyun ve iş bilgisayarı. Çoklu görevlerde akıcı kullanım sağlar. Güçlü donanımıyla uzun süreli performans sunar.",
  imageUrl: "https://iis-akakce.akamaized.net/p.z?https%3A%2F%2Fimage01%2Eidefix%2Ecom%2Fresize%2F500%2F500%2Fproduct%2F1686525%2Fintel%2Di3%2D2n%2D8gb%2D120gb%2Dssd%2D19%2Dmonitorlu%2Dmasaustu%2Dbilgisayar%2D66c3a4b5f3f19%2Ejpg",
  price: 45000.0,
),
Product(
  name: "Kablosuz Mouse",
  description: "Uzun pil ömrüne sahip ergonomik mouse. Günlük kullanımda rahatlık sağlar. Hassas algılama ile akıcı bir deneyim sunar.",
  imageUrl: "https://reimg-teknosa-cloud-prod.mncdn.com/mnresize/600/600/productimage/125191099/125191099_0_MC/73019223.jpg",
  price: 1100.0,
),
Product(
  name: "Akıllı Kapı Zili",
  description: "Kameralı ve mobil bildirim destekli kapı zili. Kapı önünü anlık olarak izleme imkânı sunar. Ev güvenliğini artırır.",
  imageUrl: "https://cdn.dsmcdn.com/mnresize/420/620/ty1737/prod/QC_ENRICHMENT/20250825/15/8e8c90d6-395a-3b70-a338-4d83d40dd18e/1_org_zoom.jpg",
  price: 5200.0,
),
Product(
  name: "Kulak Üstü Kulaklık",
  description: "Derin bas ve net ses kalitesi sunan kulaklık. Müzik ve oyun deneyimini üst seviyeye taşır. Konforlu pedleriyle uzun kullanım sağlar.",
  imageUrl: "https://sennheiser-hearing.com.tr/cdn/shop/files/ACCENTUM_Wireless_ATF_Main_Image_2020x2020_69bea364-5d14-482e-bcec-564112b6828a.jpg?v=1736170170&width=2048",
  price: 4900.0,
),
Product(
  name: "Oyun Laptopu",
  description: "Yüksek ekran kartına sahip güçlü oyun bilgisayarı. Yeni nesil oyunları akıcı şekilde çalıştırır. Gelişmiş soğutma sistemiyle stabil performans sunar.",
  imageUrl: "https://file.casper.com.tr/media/laptop-oyun-bilgisayari_op.webp",
  price: 39000.0,
),
Product(
  name: "Kablosuz Şarj Powerbank",
  description: "Kablosuz şarj destekli taşınabilir powerbank. Kabloya ihtiyaç duymadan şarj imkânı sunar. Günlük kullanım için pratik bir çözümdür.",
  imageUrl: "https://woyax.com.tr/8668-large_default/woyax-by-deji-powerbank-10000mah-225w-kablosuz-hizli-tasinabilir-sarj-cihazi.jpg",
  price: 3200.0,
),
Product(
  name: "Taşınabilir Monitör",
  description: "İkinci ekran olarak kullanılabilen taşınabilir monitör. Mobil çalışanlar için verimliliği artırır. İnce ve hafif tasarımıyla kolay taşınır.",
  imageUrl: "https://cdn.akakce.com/z/asus/asus-zenscreen-mb16qhg-16-5-ms-ips-tasinabilir.jpg",
  price: 8700.0,
),
Product(
  name: "Akıllı Kilit",
  description: "Parmak izi ve mobil kontrol destekli kapı kilidi. Güvenliği üst seviyeye çıkarır. Anahtarsız giriş kolaylığı sağlar.",
  imageUrl: "https://www.monocelikkapi.com/idea/kn/92/myassets/blogs/blog-40.png?revision=1701085909",
  price: 13200.0,
),
Product(
  name: "Oyun Sandalyesi",
  description: "Ergonomik tasarımlı profesyonel oyuncu koltuğu. Uzun oyun seanslarında konfor sağlar. Ayarlanabilir yapısıyla kişisel kullanım sunar.",
  imageUrl: "https://static.ticimax.cloud/13863/uploads/urunresimleri/buyuk/oyuncu-koltugu-ofis-sandalyeleri-sedun-35999-.jpg",
  price: 11500.0,
),
Product(
  name: "Mikrofon",
  description: "Yayın ve podcast için stüdyo kalitesinde mikrofon. Net ve temiz ses kaydı almanızı sağlar. Profesyonel içerik üreticileri için idealdir.",
  imageUrl: "https://row.hyperx.com/cdn/shop/products/hyperx_solocast_04_back.jpg?v=1662449693&width=1946",
  price: 7200.0,
),


];