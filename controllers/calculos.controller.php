<?php

class Calculos
{
    
    public static function ctrShowLastRegister()
    {
        if (isset($_POST['tipoCodigo'])) {
            $codI = $_POST['tipoCodigo'];
            $response = mdlCalculos::mdlShowLastRegister($codI);
            echo json_encode($response);  
        } 
    }


    public static function calcularDigitoControl($numero) 
    {
        $pesos = array(8, 6, 4, 2, 3, 5, 9, 7);
        $suma = 0;
    
        // Eliminar las letras y convertir el número a una cadena de dígitos
        $numero = preg_replace("/[^0-9]/", "", $numero);
    
        // Verificar que el número tenga la longitud adecuada
        if (strlen($numero) !== 8) {
            return false; // O mostrar un mensaje de error, dependiendo de tus necesidades
        }
    
        // Calcular la suma
        for ($i = 0; $i < 8; $i++) {
            $suma += $numero[$i] * $pesos[$i];
        }
    
        // Calcular el dígito de control
        $digitoControl = 11 - ($suma % 11);
        if ($digitoControl === 10) {
            $digitoControl = 0;
        } elseif ($digitoControl === 11) {
            $digitoControl = 5;
        }
    
        return $digitoControl;
    }

    public function ctrCreateRegister()
    {
        if(isset($_POST['generar']))
        {
            if(isset($_POST['cantidad']) && !empty($_POST['cantidad']) && isset($_POST['lastRegister']) )
            {
                $secuencial = (int)$_POST['lastRegister'] + (int)$_POST['cantidad'];
                $check = self::calcularDigitoControl($secuencial);  
                $data = array(
                    'destino' => $_POST['destino'],
                    'secuencial' => $secuencial,
                    'check' => $check,
                    'codI' => $_POST['tipoCodigo'],
                    'country' => 'DO',
                    'cantidad' =>$_POST['cantidad']
                    );
  
                $response = mdlCalculos::mdlCreateRegister($data);

            }

            if ($response === true) {

                $cod = null;

                if ($data['codI'] == 1) {
                    $cod = 'RR';
                } else {
                    $cod = 'CP';
                }

                codigoBarra::generarCodigo($cod, strval($_POST['secuencial1']), strval($data['secuencial']), true);

            }
        }
    } 
    

    public static function ctrMostrarInforme($codigo, $fecha)
    {
        $tabla = 'registros';
        $datos = array(
            'codigo' => $codigo,
            'fecha' => $fecha
        );

        $response = mdlCalculos::mdlMostrarInforme($tabla, $datos);

        return $response;
    }

    public function ctrReimprimirLabel()
    {
        if(isset($_POST['reimprimir']))
        {
            if(isset($_POST['destino']) && isset($_POST['tipoCodigo']) && isset($_POST['desde']))
            {
                $hasta = "";
                if(isset($_POST['hasta']) && $_POST['hasta'] != null)
                {
                    $hasta = $_POST['hasta'];
                }else{
                   $hasta = $_POST['desde']; 
                }

                $datos = array('destino' => $_POST['destino'],
                               'codigo' => $_POST['tipoCodigo'],
                               'desde' => $_POST['desde'],
                               'hasta' => $hasta);

                $respuesta = mdlCalculos::mdlConsultarLabel($datos);
   
                if($respuesta['cantidad'] > 0)
                {
                    $cod = null;

                    if ($datos['codigo'] == 1) {
                        $cod = 'RR';
                    } else {
                        $cod = 'CP';
                    }

                    codigoBarra::generarCodigo($cod, strval($datos['desde']), strval($respuesta['maximo']), false);

                }
            }
        }
    }
       
    
}