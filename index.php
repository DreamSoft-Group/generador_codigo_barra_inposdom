<?php
session_start();

// Verificar si el usuario ya ha iniciado sesión
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    header('Location: dashboard.php');
    exit;
}

// Verificar si se ha enviado el formulario de inicio de sesión
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Verificar las credenciales de inicio de sesión
    if (verifyCredentials($username, $password)) {
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;
        header('Location: dashboard.php');
        exit;
    } else {
        $error = 'Usuario o contraseña incorrectos.';
    }
}

// Mostrar el formulario de inicio de sesión
include 'views/login_form.php';

/**
 * Verificar las credenciales de inicio de sesión.
 * @param string $username Nombre de usuario ingresado.
 * @param string $password Contraseña ingresada.
 * @return bool True si las credenciales son válidas, False de lo contrario.
 */
function verifyCredentials($username, $password) {
    // Aquí puedes agregar tus propias reglas de validación de credenciales
    // Por ejemplo, verificar si el usuario y la contraseña coinciden con un valor predeterminado
    // o comparar con una lista de usuarios permitidos en un arreglo.

    $users = array(
        array('username' => 'admin', 'password' => 'admin123'),
        array('username' => 'user', 'password' => 'user123')
    );

    foreach ($users as $user) {
        if ($user['username'] === $username && $user['password'] === $password) {
            return true;
        }
    }

    return false;
}
