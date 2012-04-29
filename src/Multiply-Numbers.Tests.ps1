$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Multiply-Numbers.ps1"

Describe "Multiply-Numbers" {

    It "multiplies positive numbers" {
        $product = Multiply-Numbers 2 3
        $product.should.be(6)
    }

    It "multiplies negative numbers" {
        $product = Multiply-Numbers (-2) (-3)
        $product.should.be(6)
    }

    It "multiplies negative number with positive number" {
        $product = Multiply-Numbers (-2) 3
        $product.should.be(-6)
    }

    It "multiplies zero with positive number" {
        $product = Multiply-Numbers 0 3
        $product.should.be(0)
    }
}
