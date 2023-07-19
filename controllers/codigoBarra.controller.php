<?php

class codigoBarra
{
    public static function generarCodigo($cod, $secuencial1, $secuencial2, $boolean)
    {
        // Configuración del tamaño del label
        $labelWidth = 70; // Ancho del label en mm
        $labelHeight = 30; // Alto del label en mm

        // Crea una instancia de la clase TCPDF
        $pdf = new TCPDF('L', 'mm', array($labelWidth +10, $labelHeight), true, 'UTF-8');

        // Deshabilita la impresión del encabezado en todas las páginas
        $pdf->SetPrintHeader(false);
        $pdf->setPrintFooter(false);

        // Configuración del estilo del código de barras
        $style = array(
            'position' => '',
            'align' => 'C',
            'stretch' => false,
            'fitwidth' => true,
            'cellfitalign' => 'C',
            'border' => false,
            'hpadding' => 'auto',
            'vpadding' => 'auto',
            'fgcolor' => array(0, 0, 0),
            'bgcolor' => false,
            'text' => true,
            'font' => 'helvetica',
            'fontsize' => 16,
            'stretchtext' => false
        );

        // Genera los códigos de barras dentro del rango especificado
        if($boolean === true)
        {
            $valorInicial = intval($secuencial1) + 1;
        }else{
            $valorInicial = intval($secuencial1);
        }
        
        $valorFinal = intval($secuencial2);

        // Desactivar salto de página automático
        $pdf->SetAutoPageBreak(false);

        for ($i = $valorInicial; $i <= $valorFinal; $i++) {
            $check = Calculos::calcularDigitoControl($i);
            $codigo = $cod . $i . $check . 'DO';

            for ($j = 0; $j < 3; $j++) {
                $pdf->AddPage();
                $pdf->SetXY(10, 2); // Ajusta las coordenadas X e Y según tus necesidades
                $pdf->write1DBarcode($codigo, 'C128', '', '', $labelWidth, $labelHeight, '', $style, ''); // Ajusta el ancho y el alto según tus necesidades
            }
        }

        // Guarda el archivo PDF en el servidor
        ob_end_clean();
        $pdf->Output('barcode.pdf', 'I');
    }
}

?>
