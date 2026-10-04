# هم‌راستایی Jahan Bit با Google Play (تحقیق ناشر مرتبط)

تاریخ بررسی: اکتبر ۲۰۲۶

## یافتهٔ کلیدی: App Store ≠ لزوماً همان حساب Play

| برند / اپ | App Store Seller | Google Play Developer (مشاهده‌شده) |
|-----------|------------------|-------------------------------------|
| میکس بازار | Muhammad Aref Abdul Hadi | **Mixbazar Team** — حساب حقوقی: MUHAMMAD ARIF ABDUL HADI · Saudi Arabia · `alizadahadi2050@gmail.com` · بسته `com.mixbazar.app` |
| Afghan Online Taxi | Muhammad Aref Abdul Hadi | **Jawad Saberi & Sharif Ahmad** — Fawad Ahmad Saberi · UK · ایمیل‌های دیگر · بسته `com.afghan.taxi` |
| Masir Ride / Driver | Muhammad Aref Abdul Hadi | اپ اندروید جدا (مثلاً `masir.app`) — ناشر Play ممکن است با Seller اپل یکی نباشد |

**نتیجه:** برای جهان بیت نباید فرض کرد «همان صفحه‌ای که در App Store دیدیم اتوماتیک همان Play Console است». باید مشخص شود جهان بیت روی **کدام Play Console** منتشر می‌شود (حساب شخصی Muhammad Arif/Aref، حساب سازمانی جهان بیت، یا حساب جدا).

---

## الگوی موفق Mix Bazaar روی Play (نزدیک‌ترین مرجع)

- **نام نمایشی Developer:** برند (`Mixbazar Team`) نه الزاماً نام کامل حقوقی
- **نام حقوقی حساب:** MUHAMMAD ARIF ABDUL HADI
- **Package:** `com.mixbazar.app` → الگوی جهان بیت `com.jahanbit.app` هم‌خوان است
- **Support:** ایمیل + شماره تلفن عمومی روی لیستینگ
- **Content rating:** Everyone
- **هشدار:** Data safety نوشته «No data collected / No data shared» در حالی که اپ بازار/چت/حساب دارد → این الگو را برای جهان بیت **کپی نکنید**؛ Google روی صحت Data safety سخت‌گیر است و با Privacy Policy باید یکی باشد

---

## سیاست‌های Play مرتبط با جهان بیت

### 1) Misrepresentation / Impersonation
- هویت ناشر، مالکیت و هدف اپ نباید گمراه‌کننده باشد.
- اگر اپ جهان بیت متعلق به ISP/برند دیگری است، انتشار زیر حساب شخصی شخص ثالث بدون شفافیت = ریسک تعلیق.
- Developer name عمومی می‌تواند «Jahan Bit» / «Jahan Bit Team» باشد (مثل Mixbazar Team)، ولی مالک حساب باید مجاز باشد.

### 2) User Data + Data safety (الزامی)
برای جهان بیت، پیشنهاد اعلام دقیق:
| مورد | پیشنهاد |
|------|---------|
| Location (GPS) | جمع‌آوری نمی‌شود |
| Advertising ID / Tracking | خیر |
| Account info ابری جهان بیت | خیر |
| Credentials روتر | ذخیرهٔ روی دستگاه (secure storage) — در صورت لزوم به‌عنوان App info / Other اعلام شفاف |
| Device IDs شبکه محلی (MAC و …) | فقط محلی برای ban/لیست — اشتراک با شخص ثالث خیر |
| Encryption in transit | برای API روتر LAN معمولاً TCP غیرHTTPS؛ پنل‌های HTTP محدود — صادقانه اعلام کنید |
| Data deletion | بله — «پاک‌سازی داده‌های محلی» داخل اپ |

**هرگز** فرم Data safety تاکسی (Location/Contacts) یا ادعای غلط «هیچ داده‌ای جمع نمی‌شود» را کپی نکنید اگر اعتبارنامه/تنظیمات ذخیره می‌شود.

### 3) Device and Network Abuse
- مدیریت روتر با **اعتبارنامهٔ خود کاربر** (الگوی اپ رسمی MikroTik و Hotspot Managerهای موجود) معمولاً مجاز است.
- ممنوع: دسترسی غیرمجاز، هک، پروکسی مخفی، دستکاری ترافیک اپ‌های دیگر، دانلود کد اجرایی خارج از Play.
- جهان بیت VpnService ندارد → فرم VPN لازم نیست.
- در توضیحات بنویسید: فقط روتر/شبکهٔ مجاز کاربر؛ برای شنود یا دسترسی غیرمجاز نیست.

### 4) Permissions
مجوزهای فعلی (`INTERNET`, `ACCESS_NETWORK_STATE`, `ACCESS_WIFI_STATE`) با هدف اپ هم‌خوان‌اند.
LOCATION/SMS/CALL_LOG/CAMERA نخواهید مگر واقعاً لازم شود.

### 5) هویت حساب و کشور
- حساب Mix روی Play کشور **Saudi Arabia** نشان می‌دهد در حالی که بازار هدف افغانستان است — سیاست Misrepresentation دربارهٔ مخفی کردن کشور مبدأ را جدی بگیرید؛ کشور حساب را درست نگه دارید.
- Contact/Developer email و phone باید verify و در دسترس باشند.

### 6) Signing / Package
- `applicationId = com.jahanbit.app` (دیگر `com.example` نیست) — برای آپلود Play ضروری و انجام شده.
- Release با upload keystore واقعی — انجام شده؛ **بکاپ keystore** حیاتی است.
- برای انتشار: ترجیحاً **AAB** نه فقط APK؛ Play App Signing را فعال کنید.

---

## ماتریس ریسک Play برای Jahan Bit

| شدت | ریسک | اقدام |
|-----|------|--------|
| Critical | انتشار روی حساب اشتباه / بدون مالکیت برند | مشخص کردن Console درست؛ در صورت نیاز نامه مجوز یا حساب «Jahan Bit» |
| Critical | Data safety نادرست (کپی از Mix/تاکسی) | فرم اختصاصی جهان بیت + هم‌خوان با Privacy Policy |
| High | ایمیل پشتیبانی شخصی نامرتبط با ناشر | ایمیل/تلفن رسمی روی Store listing و داخل اپ |
| High | توصیف گمراه‌کننده (مثلاً اپ رسمی MikroTik) | Utilities / ISP subscriber tool؛ بدون ادعای رسمی MikroTik |
| Medium | Device and Network Abuse سوءبرداشت | Review notes: اتصال با یوزر RouterOS خود کاربر روی LAN |
| Medium | کشور حساب vs بازار هدف | شفافیت؛ عدم جعل کشور مبدأ |
| Low | هم‌پوشانی با پورتفوی تاکسی/بازار | دسته Tools/Productivity؛ ریسک اسپم پایین |
| Pass | نبود VPN / Ads / SMS permissions | مناسب سیاست‌های حساس |

---

## چک‌لیست قبل از سابمیت Play

1. تعیین حساب: شخصی Muhammad Arif/Aref یا سازمانی جهان بیت؟
2. Developer name عمومی: مثلاً `Jahan Bit` یا `Jahan Bit Team`
3. Support email + phone متعلق به همان ناشر
4. Privacy Policy URL عمومی HTTPS
5. Data safety دقیق (نه کپی Mix/تاکسی)
6. Content rating questionnaire صادقانه
7. دسته: Tools یا Productivity
8. آپلود **AAB** + Play App Signing
9. تصاویر/توضیح: مدیریت روتر مشترکین ISP؛ نیاز به MikroTik روی LAN
10. App content: Ads = No؛ هدف مخاطب بزرگسال/عمومی؛ News app = No

---

## مقایسه کوتاه با App Store

| موضوع | App Store (همین Seller) | Play |
|-------|-------------------------|------|
| نام عمومی ناشر | همیشه نام شخص | اغلب نام برند تیم (Mixbazar Team) |
| حساب یکسان برای همه برندها | یک Seller برای چند اپ | لزوماً نه (Afghan Online Taxi روی Play ناشر دیگر است) |
| Privacy | Nutrition Labels | Data safety فرم جدا |
| رده سنی | اغلب 16+ Web | Everyone رایج‌تر اگر WebView محدود باشد |
| امضا | Apple cert | Upload keystore + Play App Signing |

سند مرتبط App Store: `PUBLISHER_ALIGNMENT_MUHAMMAD_AREF_FA.md`
