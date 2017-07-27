<?php
declare(strict_types = 1);
use App\Model;

date_default_timezone_set('UTC');
require_once '../vendor/autoload.php';

$model = new Model();
$date = new DateTimeImmutable();

echo '<h1>PHP Example application</h1>';
echo '<h2>Example data from Model with dependency: ' . $model->getValue() . '</h2>';
echo '<h3>Date: ' . $date->format(DateTime::ISO8601);
echo '<h3>Env variable: ' . getenv('SAMPLE_ENV_VALUE') . '</h3>';
