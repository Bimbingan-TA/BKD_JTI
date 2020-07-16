<?php
	require '../koneksi.php';
	

	if (isset($_POST['ubah'])) {
		$id_user=$_POST['id_user'];
		$username = $_POST['username'];
		$password = $_POST['password'];
		$level = $_POST['level'];
	
			$query = "UPDATE user SET username='$username', password='$password', level='$level' WHERE id_user='$id_user' ";
			$result = mysqli_query($conn, $query);

			if ($result) {
				echo '<script> alert("Data Berhasil Diubah")
				window.location = "../pengguna.php"
				</script>';
			}
			else {
				echo '<script> alert("Datal Gagal Diubah")
				window.location = "../pengguna.php"
				</script>';
			}
		
	}
	
?>

