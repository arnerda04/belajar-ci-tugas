<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index', ['filter' => 'redirectContact']);
//$routes->get('/produk', 'ProdukController::index');//
//$routes->get('/keranjang', 'TransaksiController::index');//
$routes->get('login', 'AuthController::login');
$routes->post('login', 'AuthController::login');
$routes->get('logout', 'AuthController::logout');

$routes->group('/produk', ['filter' => 'auth'], function ($routes) {
    $routes->get('','ProdukController::index');
    $routes->post('','ProdukController::create');
    $routes->post('edit/(:any)', 'ProdukController::edit/$1');
    $routes->get('delete/(:any)', 'ProdukController::delete/$1');
    $routes->get('download','ProdukController::download');
});

//$routes->get('/keranjang', 'TransaksiController::index', ['filter' => 'auth']);
$routes->group('keranjang', ['filter' => 'auth'], function ($routes) {
    $routes->get('', 'TransaksiController::index');
    $routes->post('', 'TransaksiController::cart_add');
    $routes->post('edit', 'TransaksiController::cart_edit');
    $routes->get('delete/(:any)', 'TransaksiController::cart_delete/$1');
    $routes->get('clear', 'TransaksiController::cart_clear');
});
$routes->get('/contact', 'Home::Contacthome', ['filter' => 'auth']);
$routes->get('checkout', 'TransaksiController::checkout', ['filter' => 'auth']);

$routes->get('getcity','TransaksiController::getcity',['filter' => 'auth']);
$routes->get('getcost','TransaksiController::getcost',['filter' => 'auth']);
$routes->post('buy','TransaksiController::buy',['filter' => 'auth']);

$routes->get('profile', 'Home::profile', ['filter' => 'auth']);

//$routes->resource('apiController');
$routes->group('api', function ($routes) {
    $routes->post('monthly', 'ApiController::monthly');
});