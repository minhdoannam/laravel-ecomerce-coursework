## Nội dung đồ án

## Hướng dẫn cài đặt
**1. Một số phần mềm cần cài đặt**
- XAMPP
- PHP
- Git-bash

**2. Thiết lập dự án**
- Clone dự án từ Github
```bash 
```
- Database:

- Setup dự án:
```bash
composer install (Cài composer vào lcoal)
cp .env.example .env (Đổi file .env.example thành .env chính để cấu hình)
php artisan key:generate (Tạo Key bảo mật cho dự án)
php artisan migrate
npm install 
npm run dev
```
- Tiến hành chạy:
```bash
php artisan storage:link (Tạo liên kết từ thư mục chứa hình ảnh, sang public"
php artisan serve
```

## Thông tin về Laravel framework

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
