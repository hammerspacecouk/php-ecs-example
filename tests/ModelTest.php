<?php
declare(strict_types = 1);
namespace Tests\App;

use App\Model;
use Djmarland\ISIN\ISIN;
use PHPUnit\Framework\TestCase;

class ModelTest extends TestCase
{
    public function testMakesAnISIN()
    {
        $model = new Model();
        $output = $model->getValue();

        $this->assertInstanceOf(ISIN::class, $output);
        $this->assertSame('GB00B3W23161', (string)$output);
    }
}
