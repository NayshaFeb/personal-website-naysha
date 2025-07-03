<?php include "koneksi.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>About | Personal Web</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-orange-100 text-orange-200 font-sans">
<!-- Header -->
<header class="bg-orange-900 text-white text-center p-6 text-2xl font-bold">
About Me | Naysha febriyana
</header>
<!-- Navigation -->
<nav class="bg-orange-700 text-white py-3">
<ul class="flex justify-center space-x-10 font-medium text-lg">
<li><a href="index.php" class="hover:underline">Artikel</a></li>
<li><a href="gallery.php" class="hover:underline">Gallery</a></li>
<li><a href="about.php" class="hover:underline">About</a></li>
<li><a href="admin/login.php" class="hover:underline">Login</a></li>
</ul>
</nav>
<!-- About Content -->
<main class="max-w-3xl mx-auto p-6 bg-orange rounded shadow mt-8">
<h2 class="text-xl font-bold mb-4 text-blue-700">Tentang Saya</h2>
<div class="space-y-6">
<?php
$sql = "SELECT * FROM tbl_about ORDER BY id_about DESC";
$query = mysqli_query($db, $sql);
while ($data = mysqli_fetch_array($query)) {
echo "<div>";
echo "<p class='text-gray-700'>" . htmlspecialchars($data['about'])
. "</p>";
echo "</div>";
}
?>
</div>
</main>
<!-- Footer -->
<footer class="bg-orange-500 text-white text-center py-4 mt-10">
&copy; <?php echo date('Y'); ?> | Created by Naysha febriyana
</footer>
</body>
</html>