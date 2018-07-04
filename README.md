## Đồ án được hỗ trợ bởi:
- Cloudhost miễn phí từ (https://www.heroku.com/)
- Dịch vụ lưu trữ MySQL online từ (https://db4free.net/) => Do đó truy vấn hơi lâu link demo.
- Dịch vụ tự động truy cập site để đảm bảo khỏi bị down do heroku gỡ (https://uptimerobot.com)

## Hướng dẫn cài đặt trên local
**1. Một số phần mềm cần:**
- XAMPP (https://www.apachefriends.org/download.html)
- PHP (http://php.net/)
- Git-bash (https://git-scm.com/downloads)
- Composer, gói thư viện hỗ trợ cài đặt laravel dễ dàng hơn (https://getcomposer.org/download/)

**2. Hướng dẫn cài đặt trên localhost:**
Mở git-bash, và clone thư mục project về:
```bash
git clone https://github.com/minhdoannam/laravel-ecomerce-coursework.git
```

Bật XAMPP, mở MySQL, Apache. Sau đó vào địa chỉ http://localhost:8080/phpmyadmin/, import dữ bộ dữ liệu final_database trong thư mục document. Vậy là có dữ liệu để xài, không cần phải chạy migrate để tạo database từ Laravel ORM.

```bash
composer install //Cài composer vào local, cái này tiên quyết!
cp .env.example .env  //Đổi file .env.example thành .env chính để cấu hình
php artisan key:generate //Cập nhật key bảo mật cho trang web

//Trong trường hợp gặp lỗi truy cập:
php artisan config:clear
php artisan config:cache
```

Để chạy trên localhost, gõ:
```bash
php artisan serve
```

Nếu gặp lỗi không thấy hình ảnh, gõ dòng dưới để tạo liên kết:
```bash
php artisan storage:link
```

## Thông tin về Laravel framework

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

