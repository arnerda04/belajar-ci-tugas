<?php

namespace App\Controllers;
//use App\Controllers\BaseController;
//use CodeIgniter\HTTP\ResponseInterface;
use App\Models\ProductModel;

class Home extends BaseController
{
    protected $product;

    function __construct()
    {
        $this->product = new ProductModel();
    }

    public function index()
    {
        $product = $this->product->findAll();
        $data['product'] = $product;

        return view ('v_home', $data);
    }

    public function Contacthome(): string
    {
        return view('v_contact');
    }
}
