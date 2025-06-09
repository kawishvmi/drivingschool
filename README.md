<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Requirements

This project uses **Laravel 12** and requires the following to be installed:

- PHP >= 8.2
- Composer

## Installation

1. Clone the repository.
2. Copy `.env.example` to `.env`.
3. Run `composer install`.
4. Run `php artisan key:generate`.
5. Start the development server with `php artisan serve`.


## Driving School Management System

This project manages a driving school's daily operations. It provides tools for
scheduling lessons, communicating via email, managing tutors and students and
handling GDPR preferences.

Key features include:

- **Schedules** for organising lesson times and allocating classrooms.
- **Emails** that send notifications for upcoming lessons and account
  updates.
- **Tutors** with dedicated profiles that can be assigned to specific classes.
- **Classes** linking tutors and students with start and end times.
- **GDPR preferences** so students can control how their information is used.

## SaaS Setup Overview

This project can be extended to support multiple driving schools on a single
platform. Each school registers an account and manages its own instructors,
students and classes. Payments can be collected through common providers such as
PayPal or Stripe.

1. **Create a school** – use the `schools` table to store basic information.
2. **Add users** – link each user to a school as an admin, instructor or
   student.
3. **Configure classes** – courses belong to a school and can be assigned to an
   instructor with a capacity limit.
4. **Schedule lessons** – scheduled classes tie a course to specific dates and
   times.
5. **Record GDPR preferences** – students manage email and data retention
   settings.
6. **Accept payments** – store transactions in the `payments` table and
   integrate providers (e.g. PayPal, Stripe) using Laravel's APIs or a package
   like Cashier.

With these building blocks in place you can expand controllers and routes to
offer a full self‑service portal for each school.

## Admin UI
The project includes a simple dashboard at `/admin` with links to create a new school. The form at `/schools/create` lets administrators register schools with a name and optional domain.

## BackPack Admin Dashboard
For a full-featured administration panel you can use [BackPack for Laravel](https://backpackforlaravel.com). After installing the package with:

```bash
composer require backpack/crud
php artisan backpack:install
```

the dashboard becomes available at `/admin/dashboard`. This repository provides a custom dashboard view at
`resources/views/vendor/backpack/base/dashboard.blade.php` and a sample route in `routes/backpack/custom.php`.



## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Redberry](https://redberry.international/laravel-development)**
- **[Active Logic](https://activelogic.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
