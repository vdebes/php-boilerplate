<?php

use PHPUnit\Framework\TestCase;
use vdebes\phpboilerplate\Foo;

class FooTest extends TestCase
{
    public function testBar()
    {
        $foo = new Foo();
        $this->assertTrue($foo->bar());
    }
}
