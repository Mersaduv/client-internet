# هم‌راستایی Jahan Bit با حساب App Store: Muhammad Aref Abdul Hadi

## پورتفوی ناشر (از صفحهٔ Seller)

| اپ | دسته تقریبی | نکته |
|----|-------------|------|
| Brand Gallery Admin | ابزار/ادمین | آخرین انتشار |
| Masir Driver | Travel / Driver | ناوگان تاکسی |
| Afghan Online Taxi | Travel | مسافر؛ Copyright: Afghan Online Taxi |
| میکس بازار | Shopping | Copyright: MixBazar؛ Android: `com.mixbazar.app` |

الگوی مشترک اپ‌های تأییدشده:
- **Seller** همیشه: `Muhammad Aref Abdul Hadi`
- **Copyright** روی برند اپ است نه نام شخصی دیگر (مثلاً `© 2026 Masir App` / `© 2025 MixBazar`)
- رده سنی اغلب **16+** با دلیل *Unrestricted Web Access* (و گاهی UGC)
- زبان: انگلیسی + برای اپ‌های محلی فارسی/پشتو
- Privacy Labels برای هر اپ **جدا** و متناسب با همان اپ پر شده (تاکسی Location دارد؛ بازار Contact/Photos)

## ریسک‌های خاص برای انتشار Jahan Bit زیر همین حساب

### Critical — هویت / مالکیت (Guideline 5.2.1)
اگر اپ جهان بیت متعلق به برند/ISP دیگری است ولی زیر حساب Muhammad Aref منتشر شود، Apple ممکن است بخواهد:
- حق مالکیت / مجوز کتبی (Letter of Authorization)، یا
- انتشار از حساب متعلق به مالک برند.

اگر Muhammad Aref مالک/ناشر مجاز جهان بیت است، در App Review Notes صریح بنویسید و Copyright/Privacy را با Seller هم‌خوان کنید (انجام‌شده در کد: `© 2026 Jahan Bit` + نام Seller در متون حقوقی).

**هنوز باز:** ایمیل پشتیبانی در Privacy نباید با شخص ثالث نامرتبط به Seller باشد. قبل از سابمیت `LegalDocuments.supportEmail` را به ایمیل رسمی ناشر/جهان بیت تغییر دهید.

### High — کپی اشتباه Privacy Labels از اپ‌های تاکسی
اپ‌های تاکسی Location و Contact دارند. Jahan Bit نباید همان را کپی کند. برای جهان بیت اعلام کنید:
- بدون Tracking
- بدون Location (GPS)
- Credentials/Device info فقط on-device برای عملکرد روتر
- بدون Ads SDK

### High — دسترسی ریویو (2.1 Completeness)
ریویور بدون MikroTik LAN نمی‌تواند فیچر اصلی را ببیند. الزامی:
- Review Notes با توضیح سخت‌افزار
- در صورت امکان TestFlight + ویدیو کوتاه، یا حساب/سناریوی دمو
- لینک Privacy Policy عمومی HTTPS (مثل الگوی دیگر اپ‌ها)

### Medium — Age Rating / WebView
اپ‌های همین Seller اغلب 16+ به‌خاطر Web Access هستند. allowlist ما ریسک را کم می‌کند، ولی اگر Apple «Unrestricted Web Access» بزند، 16+ قابل قبول و هم‌راستا با پورتفوی اوست.

### Medium — زبان و بازار هدف
پورتفوی او بازار افغانستان/دری–پشتو را پوشش می‌دهد. جهان بیت هم ولایت‌های افغانستان دارد → در متادیتا فارسی/انگلیسی مثل Masir منطقی است؛ کشور توزیع مشابه سایر اپ‌ها.

### Low — 4.3 Spam / تکراری
جهان بیت ابزار شبکه/ISP است و با تاکسی/بازار هم‌پوشانی محتوایی ندارد → ریسک اسپم پایین.

### Low — MikroTik trademark
در توضیحات بگویید utility برای RouterOS مشترکین است، نه اپ رسمی MikroTik.

## چک‌لیست App Store Connect (برای این Seller)

1. Bundle ID: `com.jahanbit.app` (الگوی مشابه `com.mixbazar.app`)
2. Seller: Muhammad Aref Abdul Hadi (خودکار از حساب)
3. Copyright: `© 2026 Jahan Bit`
4. Category: Utilities (یا Productivity) — نه Travel
5. Privacy Policy URL عمومی (میزبانی HTML در `docs/store/`)
6. Privacy Nutrition Labels مخصوص Jahan Bit (کپی از تاکسی نکنید)
7. Age Rating صادقانه؛ اگر WebView دیده شد 16+ هم‌خوان با بقیه اپ‌هاست
8. Primary language + Persian localization
9. Support URL / ایمیل متعلق به همین ناشر
10. Review Notes: مالکیت برند + نیاز به LAN/MikroTik + عدم ساخت حساب ابری

## Play Store (اگر همان تیم منتشر کند)

- `applicationId` فعلی: `com.jahanbit.app`
- Developer name در Play Console باید با واقعیت حقوقی ناشر یکی باشد
- Data safety جدا از اپ‌های دیگر همین اکانت پر شود
