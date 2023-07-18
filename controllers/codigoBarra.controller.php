<?php

class codigoBarra
{
    public static function generarCodigo($cod, $secuencial1, $secuencial2)
    {
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
            'stretchtext' => 8
        );

        // Crea una instancia de la clase TCPDF
        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');

        // Deshabilita la impresión del encabezado en todas las páginas
        $pdf->SetPrintHeader(false);

        // Establece el fondo del PDF como transparente
        $pdf->SetFillColor(255, 255, 255, 0); // Establece el fondo transparente (0 indica transparencia total)

        // Genera los códigos de barras dentro del rango especificado
        $valorInicial = intval($secuencial1) + 1;
        $valorFinal = intval($secuencial2);

        for ($i = $valorInicial; $i <= $valorFinal; $i++) {
            $check = Calculos::calcularDigitoControl($i);
            $codigo = $cod . $i . $check . 'DO';

            // Genera cada código de barras tres veces
            for ($j = 0; $j < 3; $j++) {
                $pdf->AddPage();
                $pdf->SetXY(10, 10); // Ajusta las coordenadas X e Y según tus necesidades
                $pdf->write1DBarcode($codigo, 'C128', '', '', '', 30, 0.4, $style, 'N'); // Ajusta el ancho y el alto según tus necesidades
            }
        }

        // Guarda el archivo PDF en el servidor
        ob_end_clean();
        $pdf->Output('barcode.pdf', 'I');
    }
}

?>
