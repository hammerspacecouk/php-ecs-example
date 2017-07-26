<?php
declare(strict_types = 1);
namespace App;

use Djmarland\ISIN\ISIN;

class Model
{
    private $isin;

    public function __construct()
    {
        $number = 'GB00B3W23161';
        $this->isin = new ISIN($number);
    }

    public function getValue()
    {
        return $this->isin;
    }
}
