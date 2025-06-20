<?php
use PHPUnit\Framework\TestCase;
use App\Calculator;

require_once __DIR__ . '/../src/index.php';

class AppTest extends TestCase {
    public function testAddition() {
        $this->assertEquals(5, Calculator::add(2, 3));
    }
}

