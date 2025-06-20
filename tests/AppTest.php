<?php
use PHPUnit\Framework\TestCase;
use App\Calculator;

require_once __DIR__ . '/../vendor/autoload.php';

class AppTest extends TestCase
{
    public function testAddition(): void
    {
        $this->assertEquals(5, Calculator::add(2, 3));
    }
}
