<?php
	$namaserver = '127.0.0.1';
	$userdb = 'root';
	$passdb = '';
	$namadb = 'bkdjti';

	$conn = mysqli_connect($namaserver, $userdb, $passdb, $namadb);

	if ($conn == FALSE) {
		die('Koneksi gagal' .mysqli_connect_error());
	}

?>