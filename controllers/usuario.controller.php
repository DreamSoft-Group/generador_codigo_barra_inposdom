<?php

class ctrUsuario
{
    public function ctrMostrarUsuario()
    {
        if(isset($_POST['login']))
        {
            if(isset($_POST['username']) && !empty($_POST['username']) 
            && $_POST['password'] && !empty($_POST['username']))
            {
                $tabla = 'usuarios';
                $campo = 'username';
                $valor = $_POST['username'];
                $respuesta = mdlUsuario::mdlMostrarUsuario($tabla, $campo, $valor);

                if($respuesta['password'] == $_POST['password'])
                {
                    $_SESSION['sesionIniciada'] = true;
                    echo '<script>
                        window.location = "create";
                    </script>';
                }else{
                    echo 'Error al iniciar sesión';
                }
            }
        }
    }
}