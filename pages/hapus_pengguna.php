<?php
	require '../koneksi.php';

	$id_pengguna = $_GET['id'];
	$query = "DELETE FROM user WHERE id_user = '$id_pengguna' ";
	$result = mysqli_query($conn, $query);

	if ($result) {
		echo '<script> alert("Berhasil Terhapus")
		window.location = "../pengguna.php"
		</script>';
	}
	else {
		echo '<script> alert("Gagal Terhapus")
		window.location = "../pengguna.php"
		</script>';
	}
?>