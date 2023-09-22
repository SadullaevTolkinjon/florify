import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class OfertaPage extends StatelessWidget {
  const OfertaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text("Oferta"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppSizes.getH(context) * 0.02,
                  horizontal: AppSizes.geth(context, 0.020)),
              child: Text(
                  """ “Florify” MCHJ sayti orqali mahsulotlar, tovarlar sotish va xizmat ko‘rsatish bo‘yicha 1. Terminlar va taʼriflar Sotuvchi -“Florify” MCHJ (masʼuliyati cheklangan jamiyati), Manzil: Tashkent shahar, Sergeli tumani, 5 - dah, O’zgarish MFY. Xaridor - jismoniy va yuridik shaxslar. Oferta - sotuvchining nomuayyan shaxslar doirasiga chakana savdo-sotiq qilish yo‘li bilan internet orqali masofadan turib xizmatni sotib olish bo‘yicha sotuvchining shartlari doirasida shartnoma tuzishga yo‘llangan taklifdir. Aksept - xaridor tomonidan ofertani to‘liq va shartlarsiz qabul qilish va shartnomani tuzilgan deb hisoblash. Shartnoma (matnda – shartnoma) – internet orqali masofadan turib xizmatni sotib olish bo‘yicha sotuvchining shartlari bilan xaridorning tanishishi va roziligi asosida hamda belgilangan katalog yoki ro‘yhat doirasida taklif etilayotgan xizmatni sotib olish bo‘yicha kelishuv.
            Tomon (lar) - xaridor va/yoki sotuvchi.
            
            Buyurtma - elektron hujjat, unda xaridorni tanlagan xizmat turi, uning narxi (belgilangan hollarda esa tanlangan bonus(lar), xizmatni va/yoki uning natijasini eltib berish maqsadida talab etiladigan xaridorga tegishli maʼlumotlar: FISH yoki nomi, (elektron) manzil, qayta aloqaga kirishish uchun telefon raqami yoki elektron manzili (kontakt) va saytning tegishli shaklida belgilangan boshqa maʼlumotlar bo‘lishi talab etiladi. Buyurtmani to‘ldirish jarayonida xaridor pulni to‘lov usuli, to‘lov kodi, yetkazib berish xarajatlari haqida to‘liq maʼlumotni oladi.
            
            To‘lov kodi - yagona va qaytarilmas raqam ko‘rinishidagi, har bir xaridorga va uning buyurtmasiga bir marta avtomatik tarzda beriladigan va uning imzosi sifatida baholanadigan raqam (kod) belgi. To‘lov kodi buyurtmaga bir marta berilishi munosabati bilan hisob-kitob hujjati (invoys) o‘rnini bosadi.
            
            Xizmat(lar) - internet orqali masofadan turib ko‘rsatiladigan, xaridorning buyurtmasi asosida tanlangan, belgilangan kontakt maʼlumotlar bo‘yicha yetkazib berilishi ko‘zda tutilgan xizmatlar. Ularga masofaviy taʼlim, mahsulotlar, tovarlar, testlar, tanlovlar, auksion-shoular va boshqa moddiy, nomoddiy xizmatlar kiradi. Nomoddiy xizmatlar natijalarini moddiy (xat, guvohnoma, sertifikat) ko‘rinishida talab etilishi ham mumkin.
            
            
            Umumiy shartlar
            
            2.1. Ushbu shartnoma hamda saytdagi taklif etilayotgan xizmatlar ommaviy oferta hisoblanadi.
            
            2.2. Xaridor saytda buyurtmani shakllantirishda mazkur shartnoma shartlariga rozi va ularni to‘liq qabul qilishini bildiradi.
            
            2.3. Xizmatlarni sotish hududi – O‘zbekiston Respublikasi hududi hamda dunyo miqyosida sotish hisoblanadi.
            
            2.4. Sotuvchi shartnoma shartlariga har qanday vaqtda o‘z tomonidan o‘zgartirish kiritish huquqiga ega.
            
            2.5. Sotuvchi xizmatlarni sotish jarayoniga xaridorning roziligisiz uchinchi tomonni jalb etish huquqiga ega
            
            2.6. Xizmatdan foydalanish jarayonida xizmat yuzasidan qo‘shimcha savolga, maslahatga ehtiyoj paydo bo‘lganda xaridor birinchi bo‘lib sotuvchiga murojaat qilishi lozim. Ushbu talabni qondirish uchun xaridor saytda ko‘rsatilgan: “Aloqa” tugmasi yoki maxsus ajratilgan telefon raqami orqali yoki ko‘rsatilgan elektron manzilga murojaat qilishi yetarlidir.
            
            2.7. Xaridor saytdan olingan xizmat va uning natijalarini, bonuslar va boshqa moddiy va nomoddiy mulkiy huquqlarni tijorat maqsadlarida ishlatmasligi, sotuvchining roziligini oldindan olmay turib uchinchi shaxslarga foydalanish uchun tarqatmaslik majburiyatini o‘z zimmasiga oladi. Bunday hatti harakatlar qonun buzilishiga olib kelishini to‘liq idrok etadi. Bunday holat aniqlangan taqdirda sotuvchi xaridorni kursdan chetlatadi va qonuniy chora ko‘rilishi uchun tegishli sud organlariga murojaat etishga xaqli. Bundan tashqari sotuvchiga yetkazilgan zarar to‘liq xajmda xaridor tomonidan qoplanadi.
            
            2.8. Tegishli hollarda moddiy eltmalarni yetkazib berilishi muddati (Buyurtmani shakllantirish paytida ularni omborda mavjudligi va boshqa holatlarni o‘zida aks ettirgan holda) shartli hisoblanadi. Qoidaga ko‘ra, Moddiy eltmalar «O‘zbekiston pochtasi» OAJ orqali yetkazilishini inobatga olib tugal muddat «O‘zbekiston pochtasi» OAJning meʼyorlari va tartiblarida belgilangan muddatlar va kafolatlar bilan belgilanadi.
            
            2.9. Buyurtma shakllantirilgan kundan 5 (besh) kun ichida to‘lov amalga oshirilishi lozim. Ushbu muddat ichida barcha narxlar o‘zgarmas hisoblanadi. Ushbu muddat o‘tgandan so‘ng Buyurtma bekor qilinadi va qaytadan Buyurtma shakllantirilishi talab etiladi.
            
            2.10. Moddiy eltmalarni Xaridorga yetkazib berish uchun uchinchi tomon jalb etilishini inobatga olgan holda eltib berish xizmatlari uchun alohida to‘lov belgilanishi xaridorda eʼtiroz tug‘dirmaydi, bu holat idrok etiladi.
            
            3. Buyurtmani shakllantirish tartibi
            
            3.1. Xizmat(lar)ni sotib olish niyatida xaridor saytda ko‘rsatilgan shaklni – Buyurtmani rasmiylashtiradi. Birinchi marta buyurtmani rasmiylashtirayotgan xaridor «Saytda ro‘yhatdan o‘tish» jarayonidan o‘tadi, keyingi holatlarda «Avtorizatsiyadan o‘tish» jarayonidan o‘tadi.
            
            3.1.1. Ro‘yhatdan o‘tish – xizmatlar natijalarini va/yoki moddiy eltmalarni xaridorga yetkazishni amalga oshirish uchun zarur bo‘lgan maʼlumotlarni Saytda keltirilgan shakl – “Mening sozlashlarim” shaklidagi ko‘rsatilgan forma asosida Xaridor tomonidan to‘ldirilishidir. Ro‘yxatdan o‘tish Xaridor uchun shaxsiy kabinet ochish imkoniyatini beradi. “Mening sozlashlarim” shaklidagi barcha maʼlumotlarni Xaridor o‘z shaxsiy kabinetiga kirgandan so‘ng mustaqil o‘zgartirishi mumkin.
            
            3.1.2. Faqat ro‘yhatdan o‘tgandan so‘ng yoki Avtorizatsiyadan o‘tgandan so‘ng buyurtma uchun to‘lovni amalga oshirish imkoniyati paydo bo‘ladi. “Mening sozlashlarim” shaklida ko‘rsatilishi majburiy bo‘lgan maʼlumotlar majmui mavjud. Bunday maʼlumotlarni to‘ldirmaslik buyurtmani rasmiylashtirish imkonini chegaralab qo‘yadi yoki bermaydi.
            
            3.2. Buyurtmani shakllantirish jarayoni “To‘lash” tugmasini bosish bilan yakunlanadi. Ushbu tugmani bosish chakana savdo-sotiq bo‘yicha shartnoma tuzilganligini tasdiqlovchi Aksept hisoblanadi. Ushbu holatdan so‘ng xaridor 5 (besh) kalendar kuni ichida buyurtmaning to‘lovini amalga oshiradi. To‘lov amalga oshirilgan vaqtdan boshlab zudlik bilan yoki uzog‘i bilan 72 soat ichida Sotuvchi tomonidan yoki mobil telefon aloqasi orqali SMS-xabar, yoki elektron pochta orqali (qaysi bir aloqaning taqdim etilgani, qulayligi, tezligiga qarab) to‘lovni qabul qilingani to‘g‘risida Operator tasdig‘ini oladi.
            
            3.3. Buyurtmani rasmiylashtirishda (shakllarni to‘ldirishda) taqdim etilgan maʼlumotlarni to‘g‘riligi va ishonchliligiga xaridor to‘liq javobgarlikni o‘z zimmasiga oladi.
            
            3.4. Xizmat natijalarini taqdim etish xaridor tomonidan to‘lovni to‘liq amalga oshirgandan so‘ng sotuvchi tomonidan amalga oshiriladi.
            
            
            4. To‘lovni amalga oshirish
            
            4.1. To‘lanishi zarur bo‘lgan summa buyurtmani rasmiylashtirishda xaridorga taqdim etiladi. Xizmatlarning ro‘yhati va baholar katalogda keltirilib, ushbu baholarga moddiy eltmalar narxi kiritilmagan bo‘ladi. Katalogda keltirilgan baholar sotuvchi tomonidan har qanday vaqtda o‘zgartirilishi mumkin. Bunday o‘zgartirishlar rasmiylashtirilgan va to‘lov amalga oshirilgan buyurtmalarga taaluqli emas. Hisob-kitoblar milliy valyuta (so‘m)da amalga oshiriladi.
            
            4.2. Moddiy eltmalar, ularni transport, qadoqlash va boshqa xarajatlar narxlari va summasi buyurtma tarkibida alohida ko‘rsatiladi.
            
            4.3. Xizmatlar, moddiy eltmalar va boshqa xarajatlar uchun to‘lovlar xaridor tomonidan to‘lov kodi asosida, belgilangan operator orqali 100 foiz oldindan to‘lovni amalga oshirganidan so‘ng xizmatlar va moddiy eltmalar xaridorga jo‘natish uchun internet tizimiga va/yoki kuryerga taqdim etiladi. Saytda ko‘rsatilgan operatordan boshqa turdagi to‘lovlar qabul qilinmaydi.
            
            
            5. Xizmatlar natijalari va moddiy eltmalarni yetkazib berish. mulkiy huquqni o‘tishi
            
            5.1. Xizmatlar natijalari bo‘yicha nomoddiy eltmalarni yetkazib berish quyidagicha amalga oshiriladi:
            
            5.1.1. Internet tarmog‘idan uzatilishi ko‘zda tutilgan nomoddiy eltmalar internet orqali, zudlik bilan yoki uzog‘i 72 soat ichida internet tarmog‘iga taqdim etiladi, ushbu paytdan boshlab mazkur eltmaga nomoddiy mulkiy huquq xaridorga o‘tadi.
            
            5.1.2. Mobil aloqa tizimidan uzatilishi ko‘zda tutilgan nomoddiy eltmalar SMS-xabarlari orqali, zudlik bilan yoki uzog‘i 72 soat ichida mobil aloqa tarmog‘iga taqdim etiladi, ushbu paytdan boshlab mazkur eltmaga nomoddiy mulkiy huquq xaridorga o‘tadi.
            
            5.2. Moddiy eltmalarni xaridor belgilab bergan manzilga yetkazib berishda sotuvchi kuryer xizmatidan foydalanishi mumkin.
            
            5.3. Moddiy eltma oldindan kelishilgan, belgilangan manzilga va vaqtda yetkazilsada, lekin moddiy eltma xaridorning aybi bilan qabul qilib olinmasa, moddiy eltmani qaytadan yetkazib berilishi tashkil etilmaydi va buyurtma bekor qilinadi.
            
            5.4. Moddiy eltmani taqdim etilishi «O‘zbekiston pochtasi» OAJ belgilagan tartibda amalga oshiriladi.
            
            5.5. Kuryer tomonidan moddiy eltma taqdim etilishi bilan mulkiy huquq xaridorga o‘tadi.
            
            5.6. Moddiy eltmalarni yetkazib berish bo‘yicha belgilangan eng katta muddatning o‘tishi bilan kuryer tomonidan mazkur eltmalarni taqdim etilmasligi muddatni uzaytirilishiga sabab bo‘ladi. Bunday holda kuryer xaridorni xabardor qilishi zarur.
            
            5.7. Moddiy eltmaning holati, soni, sifati, nomi, tarkibi, butunligi taqdim etilgan hujjatga mos kelgan holda moddiy eltmani xaridor eʼtirozsiz qabul qilib olishga majbur. Moddiy eltmani qabul qilib olgandan so‘ng, zarur hollarda tegishli hujjatlarni imzolashni (rasmiylashtirishni) o‘z zimmasiga oladi.
            
            5.8. Moddiy eltmalarni faqat hujjatda nomi ko‘rsatilgan shaxs – buyurtmaning egasi qabul qilib olishga haqli. Moddiy eltmani qabul qilib olishda shaxs o‘zining shaxsini tasdiqlovchi hujjat (pasport, harbiy bilet, haydovchilik guvohnomasi va boshqalar)ni kuryerga taqdim etishi shart.
            
            5.9. Kurer xaridorga quyidagi hollarda moddiy eltmani bermaslikga haqli: – shaxs, o‘zining shaxsini tasdiqlovchi hujjatlarni taqdim etmasa; – tegishli hujjatlarni imzolashdan bosh tortsa; – moddiy eltma rasmiylashtirilgan nomdagi shaxsdan boshqa shaxs eltmani qabul qilishni ixtiyor etsa; – qabul qilib oluvchi balog‘atga yetmagan bo‘lsa yoki ish layoqatiga ega bo‘lmasa; – qonunchilikda, shartnomada, kuryerning xizmat qoidalarida va boshqa hujjatlarda belgilangan va mazkur holatni yechimini ko‘zda tutgan hollarda. Yuqorida ko‘rsatilgan hol yuz bersa moddiy eltma kuryer tomonidan sotuvchiga qaytariladi va shartnoma bekor qilinadi. Kuryer moddiy eltmani qaytarish bo‘yicha ishlarni tashkil etishda sotuvchi bilan alohida kelishishi zarur.
            
            5.10. Shartnoma asosida amalga oshirilayotgan savdo-sotiq munosabatlari masofadan turib amalga oshirilayotganini eʼtiborga olib, moddiy eltmalar tarkibida taqdim etilgan moddiyliklar yoki ularning qismi almashtirib berish va qaytarib berish kabi hatti-harakatlarni talab etib qolgan hollarda, bunday hatti-harakatlarni tegishli qo‘shimcha to‘lovlarsiz amalga oshirilishi imkoniyati mavjud emasligini tomonlar idrok etadilar va tan oladilar
            
            5.11. Moddiy eltmalarni kuryerni taqdimotidan so‘ng xaridor tomonidan tegishli tartibda imzolash natijasida qabul qilib olingandan so‘ng moddiy eltmalarning tasodifan halokatga uchrashi yoki shikastlanishi xavfi bo‘yicha javobgarlik xaridorga o‘tadi.
            
            
            6. Eʼtirozlarni taqdim etish
            
            6.1. Xaridor ko‘rsatilgan xizmat, uning natijalarini olgandan eʼtiboran 5 kun mobaynida ular bo‘yicha eʼtirozlar, talablar va takliflarni taqdim etish huquqiga ega. Mazkur muddat o‘tganidan so‘ng sotuvchi eʼtirozlarni qabul qilmaydi.
            
            6.2. Xizmatning xaridor tomonidan kamchilik deb topilgan va taqdim etilgan eʼtirozlari tomonlarda kelishmovchilikni yuzaga keltirgan holatlarda qo‘shimcha ravishda ekspertiza o‘tkazilishi mumkin. Sotuvchi hisobidan harajatlar qoplanishi ko‘zda tutilgan ekspertiza natijasida kamchilikning mavjud emasligi, yoki kamchilik sotuvchiga munosabati bo‘lmagan holatlar natijasida yuz berganligi aniqlansa, xaridor bunday hatti-harakatlarga sarflangan xarajatlarni to‘liq qoplab berish majburiyatini o‘z zimmasiga oladi.
            
            
            7. Javobgarlik
            
            7.1. Shartnoma shartlari asosan elektron dasturiy taʼminot tomonidan amalga oshirilayotgani va xizmat masofadan internet orqali amalga oshirilayotgani, shu jumladan xaridorga nomoddiy mulk taklif etilayotganini eʼtiborga olib, xaridor saytda buyurtmani rasmiylashtirayotib buyurtma qisman va to‘liq bajarilmay qolgan hollarda neustoyka, jarima yoki ko‘rilgan zararni qoplanishini talab etmaslikni o‘z zimmasiga oladi. Bunday hollarda sotuvchi tomonidan xizmat natijalarini yetkazib berish amalga oshiriladi.
            
            7.2. Shartnomaning 7.1-bandida keltirilgan sabablar asosida buyurtmaning kechiktirib bajarilishi oqibatida xaridor tomonidan boy berilgan foyda, maʼnaviy zarar va shu kabi boshqa eʼtirozlar bildirilmasligini o‘z zimmasiga oladi va sotuvchi bunday talab va eʼtirozlarni qabul qilmaydi.
            
            7.3. Sotuvchining xaridor oldidagi mulkiy javobgarligi hajmi buyurtmaning bahosi (summasi)dan oshmasligini tomonlar tushunadilar va qo‘llaydilar.
            
            7.4. Xaridorlar saytda buyurtmani rasmiylashtirayotib ko‘rsatilgan xizmat uchun to‘langan pul summasini qaytarilishini daʼvo qila olmasliklarini tushunadilar va qo‘llaydilar.
            
            7.5 Xaridor saytdan olingan xizmat va uning natijalarini, bonuslar va boshqa moddiy va nomoddiy mulkiy huquqlarni tijorat maqsadlarida ishlatmasligi, sotuvchining yozma roziligini oldindan olmay turib uchinchi shaxslarga foydalanish uchun tarqatmaslik majburiyatini o‘z zimmasiga oladi. Shunday harakatlar sodir etgan shaxslar qonun hujjatlariga muvofiq javobgar bo‘ladi.
            
            
            8. Boshqa shartlar
            
            8.1. Tomonlar o‘z majburiyatlarini bajarishlarida xaridor tomonidan buyurtmani rasmiylashtirishda taqdim etgan maʼlumotlarni (familiya, ism, sharif, manzil, indeks, elektron pochta, telefon raqami va boshqalarni) ishonchliligiga to‘liq javobgarlikni xaridor o‘z zimmasiga oladi. Agar xaridor tomonidan taqdim etilgan maʼlumotlarning noto‘g‘riligi natijasida tomonlar o‘z majburiyatlarini bajara olmasalar, unda sotuvchi buyurtmani bajarilmasligi holatlari bo‘yicha javobgar bo‘lmaydi, bunda kelib chiqadigan oqibatlarni o‘zidan soqit qiladi.
            
            8.2. Buyurtmani rasmiylashtirish jarayonida yoki xizmatlar natijalarini sotuvchi yuborishidan oldin xaridorning rekvizitlari o‘zgarganda yoki ushbu rekvizitlarda xato mavjudligini xaridor sezib qolganda, bunday rekvizitlar sotuvchining xaridor oldidagi majburiyatlarini bajarishga taʼsir o‘tkazishi mumkin bo‘lgan hollarda xaridor zudlik bilan sotuvchiga xabar beradi. Bunday shartga amal qilinmagan hollarda agar sotuvchi xizmat natijalarini internet orqali jo‘natgan bo‘lsa, unda xaridorga ushbu hatti-harakatlar qo‘shimcha to‘lov asosida amalga oshiriladi.
            
            8.3. Xaridor sotuvchi tomonidan ushbu saytga tegishli bo‘lgan axborotlarni, shu jumladan, o‘zaro manfaatdor bo‘lgan reklama xabarlarini xaridorning elektron pochtasi, telefoniga yuborilib turilishiga eʼtiroz bildirmaydi. Obunachi sifatida ro‘yxatdan o‘tgan xaridorlar axborotlarni, shu jumladan, manfaatli reklama xabarlarini doimiy yetkazib berilib turilishini idrok etadilar va rozilik bildiradilar. Xaridor sababini bildirmagan holda bunday xabarlarni inkor etishi huquqiga ega. Xaridor tomonlar majburiyatlarini bajarilishi bilan bog‘liq xabarlarni inkor etishga haqli emas.
            
            8.4. Saytda ro‘yxatdan o‘tishi bilan xaridor mazkur oferta orqali shartnoma shartlari bilan to‘liq tanishib chiqqanligini va bu shartlarga o‘z roziligini bildiradi.
            
            8.5. Xizmatlar natijalarini va/yoki moddiy eltmalarni xaridorga taqdim etilgan paytdan 5 kun o‘tgandan so‘ng shartnoma to‘liq ijro etilgan va muddati tugagan hisoblanadi.
            
            
            9. Shartnomaga o‘zgartirish va qo‘shimchalar kiritish
            
            9.1. Sotuvchi bir tomonlama mazkur shartnoma shartlarini hamda saytda chop etilgan barcha hujjatlarni o‘zgartirish huquqiga ega. Sotuvchi xaridorni bunday o‘zgarishlar haqida xabar bilan taʼminlash majburiyatini o‘z zimmasiga olmaydi. Amalga oshirilgan barcha o‘zgartirishlar saytda chop etilgan vaqtdan boshlab xaridor uchun shartli hisoblanadi. Bunday o‘zgartirishlar xaridor tomonidan qabul qilinmasa, sotuvchini xabardor qilgan holda xaridor buyurtmani bekor qilish huquqiga ega.
            
            
            10. Munozaralarni yechish tartibi
            
            10.1. Sotuvchi va xaridor yuzaga kelgan barcha munozarali holatlarni kelishuv muzokaralari orqali yechishga harakat qiladilar. Xaridor barcha eʼtirozlari, munozaralarini sotuvchiga quyidagi tartibda yuboradi:
            
            10.1.1. Sotuvchiga qarashli +998 93 045 88 11 raqamli telefon orqali har kuni (bayram, shanba va yakshanba kunlaridan tashqari) soat 09.00 dan 17.00 gacha (tushlik 13.00 dan 14.00 gacha) vaqt oralig‘ida;
            
            10.2. Sotuvchi eʼtirozlarni olgan vaqtdan boshlab 10 ish kuni mobaynida ko‘rib chiqadi va xaridorga javob beradi.
            
            10.3. Shartnoma bajarilishi jarayonida yuzaga keladigan nizoli masalalarni hal etish taraflar tomonidan muzokaralar olib borish orqali amalga oshiriladi.
            
            10.4. Shartnoma bajarilishi bilan bog‘liq kelishmovchiliklar va nizolarni muzokaralar orqali hal etib bo‘lmagan taqdirda, ular taraflar tomonidan O‘zbekiston Respublikasi qonunlarida belgilangan tartibda sudga murojaat qilish yo‘li bilan hal etiladi.
            
            
            11. Intellektual mulk munosabatlari
            
            11.1. Xaridor saytda keltirilgan barcha tovar belgilari, nomlar, patentlar, mualliflik huquqlari, maʼlumotlar bazalari, qayd etilgan va etilmagan boshqa huquqlar sotuvchiga daxldor ekanligini eʼtirof etadi.
            
            11.2. Xaridor sotuvchiga tegishli bo‘lgan barcha intellektual mulklardan tijoriy foydalanish, boshqatdan qayd etish huquqlariga ega emas.
            
            11.3. Saytdagi barcha axborot va grafik tasvirlar sotuvchining mulkidir. Ulardan foydalanish mualliflik sohasidagi meʼyorlar asosida amalga oshiriladi.
            
            11.4. Saytga tegishli har qanday materiallar sotuvchining faqat yozma ruxsati bilan qayta chop etilishi, boshqa maqsadlarda ishlatilishi mumkin.
            12. Maʼlumotlarni saqlanishi
            12.1. Sotuvchi xaridor tomonidan taqdim etilgan shaxsiy maʼlumotlarni qonunchilikda belgilangan tartibda va darajada himoyada bo‘lishi va sir saqlanishiga javobgar.
            13. Obuna va boshqa tadbirlar
            13.1. Obuna nomuayyan muddatga va/yoki oylik bo‘lib, obuna bo‘lish hohish asosida amalga oshiriladi. Obunachi xaridor huquqidan to‘liq foydalanadi, unga qo‘shimcha ravishda quyidagi huquqlarga ega bo‘ladi: – obuna pullik bo‘lgan hollarda oldindan moliyaviy qo‘yilmalar kiritishlarini eʼtiborga olgan holda, ularga bonuslar taqdim etilishi mumkin. – obunachilarga saytda yuz beradigan barcha yangiliklar bepul ravishda oldindan yetkazib beriladi. – obunachilar saytning barcha maʼlumotlaridan nomuayyan muddatda va/yoki bir oy davomida bepul foydalanish huquqiga ega.
            13.2. Sotuvchi saytni ommabopligini oshirish maqsadida turli intellektual o‘yinlar va boshqa aksiyalar o‘tkazishi mumkin.
            SAYT REKVIZITLARI
            “HAAD IT CENTER” MCHJ
            Manzil: Tashkent shahar, Sergeli tumani, 5 - dah, O’zgarish MFY. x/r____________________________ , “Orient Finans Bank” XATB Chilonzor filiali
            “HAAD IT CENTER” MCHJ rahbari: S.Karimberdiyev
            Mazkur shartnomani qabul qilish bo‘yicha harakat yoki quyida keltirilgan rekvizitlar bo‘yicha to‘lov qilish, Siz mazkur shartnoma shartlarini biror bir istisnosiz va /yoki cheklovsiz to‘liq va shartsiz qabul qilganingizni bildiradi.", """),
            )
          ],
        ),
      ),
    );
  }
}
