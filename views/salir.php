<?php
// Limpia y destruye todas las variables de sesión
session_destroy();

// Redirige a la página index.php
echo '<script>
	window.location = "login";
</script>';
?>


