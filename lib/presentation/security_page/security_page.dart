import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text("Maxfiylik siyosati"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSizes.geth(context, 0.020)),
          child: Column(
            children: [
              Text("""
        Ilovada (Florify.uz) da biz maxfiyligingizni himoya qilishga va shaxsiy maʼlumotlaringiz xavfsizligini taʼminlashga javobgarmiz. Ushbu maxfiylik siyosati IT taʼlimi uchun ilovamizdan foydalanganingizda shaxsiy maʼlumotlaringizni qanday yigʻishimiz, foydalanishimiz va oshkor qilishimiz nazarda tutiladi.
        
        Biz to'playdigan ma'lumotlar
        Ismingiz, elektron pochta manzilingiz, telefon raqamingiz va toʻlov maʼlumotlari kabi toʻgʻridan-toʻgʻri bizga taqdim etgan shaxsiy maʼlumotlarni toʻplashimiz mumkin. Shuningdek, biz ilovamizdan foydalanishingiz haqidagi maʼlumotlarni, jumladan, qurilma maʼlumotlari, IP manzili va foydalanuvchining statistikasini toʻplashimiz mumkin.
        
        Ma'lumotlaringizdan qanday foydalanamiz
        Biz sizning shaxsiy ma'lumotlaringizdan ilovamizni taqdim etish va yaxshilash, xizmatlarimiz haqida siz bilan bog'lanish va to'lovlarni amalga oshirish uchun foydalanamiz. Shuningdek, biz ma'lumotlaringizdan tajribangizni ko’rish va agar siz ularni qabul qilishni tanlagan bo'lsangiz, sizga xabarlarini yuborish uchun foydalanishimiz mumkin.
        
        Ma'lumotlaringizni qanday baham ko'ramiz
        Biz sizning shaxsiy ma'lumotlaringizni arizamizni taqdim etishda, to'lovlarni qayta ishlashda yoki marketing analizlarini o'tkazishda yordam beradigan uchinchi tomon xizmat ko'rsatuvchi provayderlar bilan bo'lishishimiz mumkin. Agar qonun bo'yicha bizdan buni qilish talab etilsa yoki o'z huquqlarimiz yoki boshqalarning huquqlarini himoya qilish zarur deb hisoblasak, biz sizning ma'lumotlaringizni baham ko'rishimiz mumkin.
        
        Ma'lumotlar xavfsizligi
        Biz sizning shaxsiy ma'lumotlaringizni ruxsatsiz kirish, foydalanish yoki oshkor qilishdan himoya qilish uchun oqilona choralar ko'ramiz. Biroq, internet yoki elektron saqlash tizimi orqali ma'lumotlarni uzatish to'liq xavfsizligi kafolatlanmaydi.
        
        Sizning huquqlaringiz
        Siz shaxsiy maʼlumotlaringizga kirish va tuzatish, maʼlumotlaringizni oʻchirib tashlashimizni soʻrash va bizdan eslatma xabarlarini olishdan voz kechish huquqiga egasiz. Ushbu huquqlardan foydalanish uchun quyida keltirilgan ma'lumotlardan foydalangan holda biz bilan bog'laning.
        
        Ushbu Siyosatga kiritilgan o'zgartirishlar
        Amaliyotlarimizdagi o'zgarishlarni aks ettirish yoki qonuniy talablarga rioya qilish uchun biz ushbu maxfiylik siyosatini vaqti-vaqti bilan yangilashimiz mumkin. Ushbu siyosatga kiritilgan har qanday jiddiy o'zgarishlar haqida veb-saytimizda e'lon qilish yoki elektron pochta orqali xabar beramiz.
        
        Biz bilan bog'lanish
        Agar sizda ushbu maxfiylik siyosati boʻyicha savollaringiz yoki xavotirlaringiz boʻlsa, biz bilan [+998 (93) 045 8811] orqali bogʻlaning.
        """)
            ],
          ),
        ),
      ),
    );
  }
}
