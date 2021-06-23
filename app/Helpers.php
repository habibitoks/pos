<?php

function ConvertToIDR(float $number = 0):string {
    $hasil_rupiah = "Rp. " . number_format($number,2,',','.');
	return $hasil_rupiah;
}

?>