<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name', 'Driving School') }}</title>

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('/assets/dist/img/logo.png')}}">
    <link rel="icon" type="image/x-icon" href="{{asset('/assets/dist/img/logo.png')}}">
    <!-- <link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets/img/favicons/favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/img/favicons/favicon-16x16.png')}}"> -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/assets/dist/img/logo.png')}}">
    <link rel="manifest" href="{{asset('assets/img/favicons/manifest.json')}}">
    <meta name="msapplication-TileImage" content="{{asset('assets/img/favicons/mstile-150x150.png')}}">
    <meta name="theme-color" content="#ffffff">
    <script src="{{asset('vendors/simplebar/simplebar.min.js')}}"></script>
    <script src="{{asset('assets/js/config.js')}}"></script>

    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&amp;display=swap"
        rel="stylesheet">
    <link href="{{asset('vendors/simplebar/simplebar.min.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('unicons.iconscout.com/release/v4.0.8/css/line.css')}}">
    <link href="{{asset('assets/css/theme-rtl.min.css')}}" type="text/css" rel="stylesheet" id="style-rtl">
    <link href="{{asset('assets/css/theme.min.css')}}" type="text/css" rel="stylesheet" id="style-default">
    <link href="{{asset('assets/css/user-rtl.min.css')}}" type="text/css" rel="stylesheet" id="user-style-rtl">
    <link href="{{asset('assets/css/user.min.css')}}" type="text/css" rel="stylesheet" id="user-style-default">
    <link href="{{asset('vendors/flatpickr/flatpickr.min.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <script>
        var phoenixIsRTL = window.config.config.phoenixIsRTL;
      if (phoenixIsRTL) {
        var linkDefault = document.getElementById('style-default');
        var userLinkDefault = document.getElementById('user-style-default');
        linkDefault.setAttribute('disabled', true);
        userLinkDefault.setAttribute('disabled', true);
        document.querySelector('html').setAttribute('dir', 'rtl');
      } else {
        var linkRTL = document.getElementById('style-rtl');
        var userLinkRTL = document.getElementById('user-style-rtl');
        linkRTL.setAttribute('disabled', true);
        userLinkRTL.setAttribute('disabled', true);
      }
    </script>
    <link href="{{asset('vendors/leaflet/leaflet.css')}}" rel="stylesheet">
    <link href="{{asset('vendors/leaflet.markercluster/MarkerCluster.css')}}" rel="stylesheet">
    <link href="{{asset('vendors/leaflet.markercluster/MarkerCluster.Default.css')}}" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
   
    <form id="logout-form" action="" method="POST" class="d-none">
        @csrf
    </form>
    <main class="main" id="top">

        <!-- Preloader -->
        <!-- <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__shake" src="../dist/img/AdminLTElogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>  -->
        <nav class="navbar navbar-vertical navbar-expand-lg">
            <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
                <!-- scrollbar removed-->
                <div class="navbar-vertical-content">
                    <ul class="navbar-nav flex-column" id="navbarVerticalNav">
                        <li class="nav-item">
                            <!-- parent pages-->
                            <div class="nav-item-wrapper"><a class="nav-link label-1"
                                    href="{{url('/')}}" role="button" data-bs-toggle=""
                                    aria-expanded="false">
                                    <div class="d-flex align-items-center"><span class="nav-link-icon"><span
                                                data-feather="pie-chart"></span></span><span
                                            class="nav-link-text-wrapper"><span
                                                class="nav-link-text">Dashboard</span></span></div>
                                </a></div>
                        </li>
                        <li class="nav-item">
                            <!-- label-->
                            <hr class="navbar-vertical-line" /><!-- parent pages-->
                          
                            <div class="nav-item-wrapper">
                                <a class="nav-link dropdown-indicator label-1" href="#nv-crm" role="button"
                                    data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-crm">
                                    <div class="d-flex align-items-center">
                                        <div class="dropdown-indicator-icon-wrapper"><span
                                                class="fas fa-caret-right dropdown-indicator-icon"></span></div><span
                                            class="nav-link-icon"><span class="fa fa-building"></span></span><span
                                            class="nav-link-text">School</span>
                                    </div>
                                </a>
                                <div class="parent-wrapper label-1">
                                    <ul class="nav collapse parent"
                                        data-bs-parent="#navbarVerticalCollapse" id="nv-crm">
                                        <li class="collapsed-nav-item-title d-none">School</li>
                                     
                                        <li class="nav-item"><a
                                        class="nav-link "
                                                href="">
                                                <div class="d-flex align-items-center"><span
                                                class="fa fa-building"></span><span class="nav-link-text">Add
                                                    School</span></div>
                                            </a><!-- more inner pages-->
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- parent pages-->
                           
                        </li>
                    </ul>
                </div>
            </div>
            <div class="navbar-vertical-footer"><button
                    class="btn navbar-vertical-toggle border-0 fw-semibold w-100 white-space-nowrap d-flex align-items-center"><span
                        class="uil uil-left-arrow-to-left fs-8"></span><span
                        class="uil uil-arrow-from-right fs-8"></span><span
                        class="navbar-vertical-footer-text ms-2">Collapsed View</span></button></div>
        </nav>
        <nav class="navbar navbar-top fixed-top navbar-expand" id="navbarDefault" style="display:none;">
            <div class="collapse navbar-collapse justify-content-between">
                <div class="navbar-logo">
                    <button class="btn navbar-toggler navbar-toggler-humburger-icon hover-bg-transparent" type="button"
                        data-bs-toggle="collapse" data-bs-target="#navbarVerticalCollapse"
                        aria-controls="navbarVerticalCollapse" aria-expanded="false"
                        aria-label="Toggle Navigation"><span class="navbar-toggle-icon"><span
                                class="toggle-line"></span></span></button>
                    <a class="navbar-brand me-1 me-sm-3" href="{{url('/backend/dashboard')}}">
                        <div class="d-flex align-items-center">
                            <!--<div class="d-flex align-items-center"><img src="{{asset('/assets/dist/img/logo.png')}}" alt="User Avatar" class="img-size-50 mr-3 img-circle" width="27">-->
                            <!--  <h5 class="logo-text ms-2 d-none d-sm-block" style='font-family: "Calibri", sans-serif !important; '>DRIVING SCHOOL</h5>-->
                            <!--</div>-->
                            <div class="d-flex align-items-center">
                                <img src="{{asset('/assets/dist/img/logo.png')}}" alt="User Avatar"
                                    class="img-size-50 " width="27">
                                <div class="ms-2">
                                    <h5 class="logo-text mb-0"
                                        style="font-family: 'Calibri', sans-serif !important; font-size: 1.1rem; line-height: 1;">
                                        DRIVING</h5>
                                    <h6 class="logo-text"
                                        style="font-family: 'Calibri', sans-serif !important; font-size: 1.1rem; line-height: 1;">
                                        SCHOOL</h6>
                                </div>
                            </div>

                        </div>
                    </a>
                </div>


                <div class="search-box navbar-top-search-box d-none d-lg-block" data-list='{"valueNames":["title"]}'
                    style="width:25rem;">
                    <form class="position-relative" data-bs-toggle="search" data-bs-display="static"><input
                            class="form-control search-input fuzzy-search rounded-pill form-control-sm" type="search"
                            placeholder="Search..." aria-label="Search" />
                        <span class="fas fa-search search-box-icon"></span>
                    </form>
                    <div class="btn-close position-absolute end-0 top-50 translate-middle cursor-pointer shadow-none"
                        data-bs-dismiss="search"><button class="btn btn-link p-0" aria-label="Close"></button></div>
                    <div class="dropdown-menu border start-0 py-0 overflow-hidden w-100">
                        <div class="scrollbar-overlay" style="max-height: 30rem;">
                            <div class="list pb-3">
                                <h6 class="dropdown-header text-body-highlight fs-10 py-2">24 <span
                                        class="text-body-quaternary">results</span></h6>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Recently Searched </h6>
                                <div class="py-2"><a class="dropdown-item"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"><span
                                                    class="fa-solid fa-clock-rotate-left"
                                                    data-fa-transform="shrink-2"></span> Store Macbook</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"> <span
                                                    class="fa-solid fa-clock-rotate-left"
                                                    data-fa-transform="shrink-2"></span> MacBook Air - 13″</div>
                                        </div>
                                    </a>
                                </div>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Products</h6>
                                <div class="py-2"><a class="dropdown-item py-2 d-flex align-items-center"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="file-thumbnail me-2"><img
                                                class="h-100 w-100 object-fit-cover rounded-3"
                                                src="assets/img/products/60x60/3.png" alt="" /></div>
                                        <div class="flex-1">
                                            <h6 class="mb-0 text-body-highlight title">MacBook Air - 13″</h6>
                                            <p class="fs-10 mb-0 d-flex text-body-tertiary"><span
                                                    class="fw-medium text-body-tertiary text-opactity-85">8GB Memory -
                                                    1.6GHz - 128GB Storage</span></p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item py-2 d-flex align-items-center"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="file-thumbnail me-2"><img class="img-fluid"
                                                src="assets/img/products/60x60/3.png" alt="" /></div>
                                        <div class="flex-1">
                                            <h6 class="mb-0 text-body-highlight title">MacBook Pro - 13″</h6>
                                            <p class="fs-10 mb-0 d-flex text-body-tertiary"><span
                                                    class="fw-medium text-body-tertiary text-opactity-85">30 Sep at
                                                    12:30 PM</span></p>
                                        </div>
                                    </a>
                                </div>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Quick Links</h6>
                                <div class="py-2"><a class="dropdown-item"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"><span
                                                    class="fa-solid fa-link text-body"
                                                    data-fa-transform="shrink-2"></span> Support MacBook House</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"> <span
                                                    class="fa-solid fa-link text-body"
                                                    data-fa-transform="shrink-2"></span> Store MacBook″</div>
                                        </div>
                                    </a>
                                </div>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Files</h6>
                                <div class="py-2"><a class="dropdown-item"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"><span
                                                    class="fa-solid fa-file-zipper text-body"
                                                    data-fa-transform="shrink-2"></span> Library MacBook folder.rar
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"> <span
                                                    class="fa-solid fa-file-lines text-body"
                                                    data-fa-transform="shrink-2"></span> Feature MacBook extensions.txt
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"> <span
                                                    class="fa-solid fa-image text-body"
                                                    data-fa-transform="shrink-2"></span> MacBook Pro_13.jpg</div>
                                        </div>
                                    </a>
                                </div>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Members</h6>
                                <div class="py-2"><a class="dropdown-item py-2 d-flex align-items-center"
                                        href="pages/members.html">
                                        <div class="avatar avatar-l status-online  me-2 text-body">
                                            <img class="rounded-circle " src="assets/img/team/40x40/10.webp" alt="" />
                                        </div>
                                        <div class="flex-1">
                                            <h6 class="mb-0 text-body-highlight title">Carry Anna</h6>
                                            <p class="fs-10 mb-0 d-flex text-body-tertiary">anna@technext.it</p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item py-2 d-flex align-items-center" href="pages/members.html">
                                        <div class="avatar avatar-l  me-2 text-body">
                                            <img class="rounded-circle " src="assets/img/team/40x40/12.webp" alt="" />
                                        </div>
                                        <div class="flex-1">
                                            <h6 class="mb-0 text-body-highlight title">John Smith</h6>
                                            <p class="fs-10 mb-0 d-flex text-body-tertiary">smith@technext.it</p>
                                        </div>
                                    </a>
                                </div>
                                <hr class="my-0" />
                                <h6
                                    class="dropdown-header text-body-highlight fs-9 border-bottom border-translucent py-2 lh-sm">
                                    Related Searches</h6>
                                <div class="py-2"><a class="dropdown-item"
                                        href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"><span
                                                    class="fa-brands fa-firefox-browser text-body"
                                                    data-fa-transform="shrink-2"></span> Search in the Web MacBook</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="apps/e-commerce/landing/product-details.html">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-normal text-body-highlight title"> <span
                                                    class="fa-brands fa-chrome text-body"
                                                    data-fa-transform="shrink-2"></span> Store MacBook″</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="text-center">
                                <p class="fallback fw-bold fs-7 d-none">No Result Found.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav navbar-nav-icons flex-row">
                    <li class="nav-item">
                        <div class="theme-control-toggle fa-icon-wait px-2"><input
                                class="form-check-input ms-0 theme-control-toggle-input" type="checkbox"
                                data-theme-control="phoenixTheme" value="dark" id="themeControlToggle" /><label
                                class="mb-0 theme-control-toggle-label theme-control-toggle-light"
                                for="themeControlToggle" data-bs-toggle="tooltip" data-bs-placement="left"
                                data-bs-title="Switch theme" style="height:32px;width:32px;"><span class="icon"
                                    data-feather="moon"></span></label><label
                                class="mb-0 theme-control-toggle-label theme-control-toggle-dark"
                                for="themeControlToggle" data-bs-toggle="tooltip" data-bs-placement="left"
                                data-bs-title="Switch theme" style="height:32px;width:32px;"><span class="icon"
                                    data-feather="sun"></span></label></div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link " href="#"
                            style="min-width: 2.25rem" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false" data-bs-auto-close="outside"><span class="d-block"
                                style="height:20px;width:20px;"><span data-feather="bell"
                                    style="height:20px;width:20px;"></span></span></a>
                        <div class="dropdown-menu dropdown-menu-end notification-dropdown-menu py-0 shadow border navbar-dropdown-caret"
                            id="navbarDropdownNotfication" aria-labelledby="navbarDropdownNotfication">
                            <div class="card position-relative border-0">
                                <div class="card-header p-2">
                                    <div class="d-flex justify-content-between">
                                        <h5 class="text-body-emphasis mb-0">Notifications</h5><button
                                            class="btn btn-link p-0 fs-9 fw-normal" type="button">Mark all as
                                            read</button>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div class="scrollbar-overlay" style="height: 27rem;">
                                        <div
                                            class="px-2 px-sm-3 py-3 notification-card position-relative read border-bottom">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3"><img
                                                            class="rounded-circle" src="assets/img/team/40x40/30.webp"
                                                            alt="" /></div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Jessie Samson</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>💬</span>Mentioned you in a
                                                            comment.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10">10m</span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">10:41 AM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="px-2 px-sm-3 py-3 notification-card position-relative unread border-bottom">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3">
                                                        <div class="avatar-name rounded-circle"><span>J</span></div>
                                                    </div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Jane Foster</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>📅</span>Created an event.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10">20m</span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">10:20 AM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="px-2 px-sm-3 py-3 notification-card position-relative unread border-bottom">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3"><img
                                                            class="rounded-circle avatar-placeholder"
                                                            src="assets/img/team/40x40/avatar.webp" alt="" /></div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Jessie Samson</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>👍</span>Liked your comment.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10">1h</span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">9:30 AM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="px-2 px-sm-3 py-3 notification-card position-relative unread border-bottom">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3"><img
                                                            class="rounded-circle" src="assets/img/team/40x40/57.webp"
                                                            alt="" /></div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Kiera Anderson</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>💬</span>Mentioned you in a
                                                            comment.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10"></span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">9:11 AM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="px-2 px-sm-3 py-3 notification-card position-relative unread border-bottom">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3"><img
                                                            class="rounded-circle" src="assets/img/team/40x40/59.webp"
                                                            alt="" /></div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Herman Carter</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>👤</span>Tagged you in a
                                                            comment.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10"></span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">10:58 PM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="px-2 px-sm-3 py-3 notification-card position-relative read ">
                                            <div
                                                class="d-flex align-items-center justify-content-between position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar avatar-m status-online me-3"><img
                                                            class="rounded-circle" src="assets/img/team/40x40/58.webp"
                                                            alt="" /></div>
                                                    <div class="flex-1 me-sm-3">
                                                        <h4 class="fs-9 text-body-emphasis">Benjamin Button</h4>
                                                        <p class="fs-9 text-body-highlight mb-2 mb-sm-3 fw-normal"><span
                                                                class='me-1 fs-10'>👍</span>Liked your comment.<span
                                                                class="ms-2 text-body-quaternary text-opacity-75 fw-bold fs-10"></span>
                                                        </p>
                                                        <p class="text-body-secondary fs-9 mb-0"><span
                                                                class="me-1 fas fa-clock"></span><span
                                                                class="fw-bold">10:18 AM </span>August 7,2021</p>
                                                    </div>
                                                </div>
                                                <div class="dropdown notification-dropdown"><button
                                                        class="btn fs-10 btn-sm dropdown-toggle dropdown-caret-none transition-none"
                                                        type="button" data-bs-toggle="dropdown" data-boundary="window"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        data-bs-reference="parent"><span
                                                            class="fas fa-ellipsis-h fs-10 text-body"></span></button>
                                                    <div class="dropdown-menu py-2"><a class="dropdown-item"
                                                            href="#!">Mark as unread</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer p-0 border-top border-translucent border-0">
                                    <div class="my-2 text-center fw-bold fs-10 text-body-tertiary text-opactity-85"><a
                                            class="fw-bolder" href="pages/notifications.html">Notification history</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown"><a class="nav-link lh-1 pe-0" id="navbarDropdownUser" href="#!"
                            role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true"
                            aria-expanded="false">
                            <div class="avatar avatar-l ">
                                <img class="rounded-circle " src="{{ asset('assets/img/team/72x72/57.webp') }}"
                                    alt="" />
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end navbar-dropdown-caret py-0 dropdown-profile shadow border"
                            aria-labelledby="navbarDropdownUser">
                            <div class="card position-relative border-0">
                                <div class="card-body p-0">
                                    <div class="text-center pt-4 pb-3">
                                        <div class="avatar avatar-xl ">
                                            <img class="rounded-circle "
                                                src="{{ asset('assets/img/team/72x72/57.webp') }}" alt="" />
                                        </div>
                                        <h6 class="mt-2 text-body-emphasis"></h6>
                                    </div>
                                </div>
                                <div class="overflow-auto scrollbar" style="height: auto;">
                                    <ul class="nav d-flex flex-column mb-2 pb-1">
                                        <li class="nav-item"><a class="nav-link px-3 d-block" href="#!"> <span
                                                    class="me-2 text-body align-bottom"
                                                    data-feather="user"></span><span>Profile</span></a></li>
                                        <li class="nav-item"><a class="nav-link px-3 d-block" href="#!"> <span
                                                    class="me-2 text-body align-bottom"
                                                    data-feather="settings"></span>Settings &amp; Privacy </a></li>
                                    </ul>
                                </div>
                                <div class="card-footer p-0 border-top border-translucent">
                                    <hr />
                                    <div class="px-3"> <a class="btn btn-phoenix-secondary d-flex flex-center w-100"
                                            href=""
                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                            <span class="me-2" data-feather="log-out"> </span>Sign out</a></div>
                                    <div class="my-2 text-center fw-bold fs-10 text-body-quaternary"><a
                                            class="text-body-quaternary me-1" href="#!">Privacy policy</a>&bull;<a
                                            class="text-body-quaternary mx-1" href="#!">Terms</a>&bull;<a
                                            class="text-body-quaternary ms-1" href="#!">Cookies</a></div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <script>
            var navbarTopShape = window.config.config.phoenixNavbarTopShape;
        var navbarPosition = window.config.config.phoenixNavbarPosition;
        var body = document.querySelector('body');
        var navbarDefault = document.querySelector('#navbarDefault');
        // var navbarTop = document.querySelector('#navbarTop');
        // var topNavSlim = document.querySelector('#topNavSlim');
        // var navbarTopSlim = document.querySelector('#navbarTopSlim');
        // var navbarCombo = document.querySelector('#navbarCombo');
        // var navbarComboSlim = document.querySelector('#navbarComboSlim');
        // var dualNav = document.querySelector('#dualNav');

        var documentElement = document.documentElement;
        var navbarVertical = document.querySelector('.navbar-vertical');

        if (navbarPosition === 'dual-nav') {
          // topNavSlim?.remove();
          // navbarTop?.remove();
          // navbarTopSlim?.remove();
          // navbarCombo?.remove();
          // navbarComboSlim?.remove();
          navbarDefault?.remove();
          navbarVertical?.remove();
          // dualNav.removeAttribute('style');
          document.documentElement.setAttribute('data-navigation-type', 'dual');

        } else if (navbarTopShape === 'slim' && navbarPosition === 'vertical') {
          navbarDefault?.remove();
          // navbarTop?.remove();
          // navbarTopSlim?.remove();
          // navbarCombo?.remove();
          // navbarComboSlim?.remove();
          // topNavSlim.style.display = 'block';
          navbarVertical.style.display = 'inline-block';
          document.documentElement.setAttribute('data-navbar-horizontal-shape', 'slim');

        } else if (navbarTopShape === 'slim' && navbarPosition === 'horizontal') {
          navbarDefault?.remove();
          navbarVertical?.remove();
          // navbarTop?.remove();
          // topNavSlim?.remove();
          // navbarCombo?.remove();
          // navbarComboSlim?.remove();
          // dualNav?.remove();
          // navbarTopSlim.removeAttribute('style');
          document.documentElement.setAttribute('data-navbar-horizontal-shape', 'slim');
        } else if (navbarTopShape === 'slim' && navbarPosition === 'combo') {
          navbarDefault?.remove();
          // navbarTop?.remove();
          // topNavSlim?.remove();
          // navbarCombo?.remove();
          // navbarTopSlim?.remove();
          // dualNav?.remove();
          // navbarComboSlim.removeAttribute('style');
          navbarVertical.removeAttribute('style');
          document.documentElement.setAttribute('data-navbar-horizontal-shape', 'slim');
        } else if (navbarTopShape === 'default' && navbarPosition === 'horizontal') {
          navbarDefault?.remove();
          // topNavSlim?.remove();
          navbarVertical?.remove();
          // navbarTopSlim?.remove();
          // navbarCombo?.remove();
          // navbarComboSlim?.remove();
          // dualNav?.remove();
          // navbarTop.removeAttribute('style');
          document.documentElement.setAttribute('data-navigation-type', 'horizontal');
        } else if (navbarTopShape === 'default' && navbarPosition === 'combo') {
          // topNavSlim?.remove();
          // navbarTop?.remove();
          // navbarTopSlim?.remove();
          navbarDefault?.remove();
          // navbarComboSlim?.remove();
          // dualNav?.remove();
          // navbarCombo.removeAttribute('style');
          navbarVertical.removeAttribute('style');
          document.documentElement.setAttribute('data-navigation-type', 'combo');
        } else {
          // topNavSlim?.remove();
          // navbarTop?.remove();
          // navbarTopSlim?.remove();
          // navbarCombo?.remove();
          // navbarComboSlim?.remove();
          // dualNav?.remove();
          navbarDefault.removeAttribute('style');
          navbarVertical.removeAttribute('style');
        }

        var navbarTopStyle = window.config.config.phoenixNavbarTopStyle;
        var navbarTop = document.querySelector('.navbar-top');
        if (navbarTopStyle === 'darker') {
          navbarTop.setAttribute('data-navbar-appearance', 'darker');
        }

        var navbarVerticalStyle = window.config.config.phoenixNavbarVerticalStyle;
        var navbarVertical = document.querySelector('.navbar-vertical');
        if (navbarVerticalStyle === 'darker') {
          navbarVertical.setAttribute('data-navbar-appearance', 'darker');
        }
        </script>
        <!-- Navbar -->


        <!-- Main Sidebar Container -->


        <!-- Content Wrapper. Contains page content -->
        <div class="content">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->

        <!-- /.control-sidebar -->
    </main>
    <!-- ./wrapper -->
    <!--    JavaScripts-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.14.1/jquery-ui.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

  
    <!-- ===============================================-->
    <script src="{{asset('vendors/popper/popper.min.js')}}"></script>
    <script src="{{asset('vendors/bootstrap/bootstrap.min.js')}}"></script>
    <script src="{{asset('vendors/anchorjs/anchor.min.js')}}"></script>
    <script src="{{asset('vendors/is/is.min.js')}}"></script>
    <script src="{{asset('vendors/fontawesome/all.min.js')}}"></script>
    <script src="{{asset('vendors/lodash/lodash.min.js')}}"></script>
    <script src="{{asset('vendors/list.js/list.min.js')}}"></script>
    <script src="{{asset('vendors/feather-icons/feather.min.js')}}"></script>
    <script src="{{asset('vendors/dayjs/dayjs.min.js')}}"></script>
    <script src="{{asset('vendors/leaflet/leaflet.js')}}"></script>
    <script src="{{asset('vendors/leaflet.markercluster/leaflet.markercluster.js')}}"></script>
    <script src="{{asset('vendors/leaflet.tilelayer.colorfilter/leaflet-tilelayer-colorfilter.min.js')}}"></script>
    <script src="{{asset('vendors/flatpickr/flatpickr.min.js')}}"></script>
    <script src="{{asset('assets/js/phoenix.js')}}"></script>
    <script src="{{asset('vendors/echarts/echarts.min.js')}}"></script>
    <script src="{{asset('assets/js/ecommerce-dashboard.js')}}"></script>

    <!-- jQuery -->

    <!-- <script src="{{asset('/assets/plugins/jquery/jquery.min.js')}}"></script> -->
    <!-- jQuery UI 1.11.4 -->
    <script src="{{asset('/assets/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- ChartJS -->
    <script src="{{asset('/assets/plugins/chart.js/Chart.min.js')}}"></script>
    <!-- Sparkline -->
    <script src="{{asset('/assets/plugins/sparklines/sparkline.js')}}"></script>
    <!-- JQVMap -->
    <script src="{{asset('/assets/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
    <script src="{{asset('/assets/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
    <!-- jQuery Knob Chart -->
    <script src="{{asset('/assets/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
    <!-- daterangepicker -->
    <script src="{{asset('/assets/plugins/moment/moment.min.js')}}"></script>
    <script src="{{asset('/assets/plugins/daterangepicker/daterangepicker.js')}}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{asset('/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
    <!-- Summernote -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/summernote.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <!-- overlayScrollbars -->
    <script src="{{asset('/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
    <!-- AdminLTE App
<script src="{{asset('/assets/dist/js/adminlte.js')}}"></script>

<script src="{{asset('/assets/dist/js/demo.js')}}"></script> -->
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{asset('/assets/dist/js/pages/dashboard.js')}}"></script>


    <!-- Page specific script -->
    <script>
        $(function () {
        //Initialize Select2 Elements
        // $('.select2').select2()

        //Initialize Select2 Elements
        // $('.select2bs4').select2({
        //     theme: 'bootstrap4'
        // })

        //Datemask dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
        //Datemask2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
        //Money Euro
        $('[data-mask]').inputmask()

        //Date picker
        $('#reservationdate').datetimepicker({
            format: 'L'
        });

        //Date and time picker
        $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

        //Date range picker
        $('#reservation').daterangepicker()
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            locale: {
                format: 'MM/DD/YYYY hh:mm A'
            }
        })
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges   : {
                    'Today'       : [moment(), moment()],
                    'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month'  : [moment().startOf('month'), moment().endOf('month')],
                    'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate  : moment()
            },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
            }
        )

        //Timepicker
        $('#timepicker').datetimepicker({
            format: 'LT'
        })

        //Bootstrap Duallistbox
        $('.duallistbox').bootstrapDualListbox()

        //Colorpicker
        $('.my-colorpicker1').colorpicker()
        //color picker with addon
        $('.my-colorpicker2').colorpicker()

        $('.my-colorpicker2').on('colorpickerChange', function(event) {
            $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
        })

        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state', $(this).prop('checked'));
        })

    })
    // BS-Stepper Init
    document.addEventListener('DOMContentLoaded', function () {
        window.stepper = new Stepper(document.querySelector('.bs-stepper'))
    })

    // DropzoneJS Demo Code Start
    Dropzone.autoDiscover = false

    // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
    var previewNode = document.querySelector("#template")
    previewNode.id = ""
    var previewTemplate = previewNode.parentNode.innerHTML
    previewNode.parentNode.removeChild(previewNode)

    var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
        url: "/target-url", // Set the url
        thumbnailWidth: 80,
        thumbnailHeight: 80,
        parallelUploads: 20,
        previewTemplate: previewTemplate,
        autoQueue: false, // Make sure the files aren't queued until manually added
        previewsContainer: "#previews", // Define the container to display the previews
        clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
    })

    myDropzone.on("addedfile", function(file) {
        // Hookup the start button
        file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
    })

    // Update the total progress bar
    myDropzone.on("totaluploadprogress", function(progress) {
        document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
    })

    myDropzone.on("sending", function(file) {
        // Show the total progress bar when upload starts
        document.querySelector("#total-progress").style.opacity = "1"
        // And disable the start button
        file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
    })

    // Hide the total progress bar when nothing's uploading anymore
    myDropzone.on("queuecomplete", function(progress) {
        document.querySelector("#total-progress").style.opacity = "0"
    })

    // Setup the buttons for all transfers
    // The "add files" button doesn't need to be setup because the config
    // `clickable` has already been specified.
    document.querySelector("#actions .start").onclick = function() {
        myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
    }
    document.querySelector("#actions .cancel").onclick = function() {
        myDropzone.removeAllFiles(true)
    }
    // DropzoneJS Demo Code End
    </script>
    
    @yield('jsfiles')

</body>

</html>

