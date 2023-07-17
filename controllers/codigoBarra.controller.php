<?php
require_once('../tcpdf/tcpdf.php');
require_once('../tcpdf/tcpdf_barcodes_1d.php');

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

        // Genera los códigos de barras dentro del rango especificado
        $valorInicial = intval($secuencial1) + 1;
        $valorFinal = intval($secuencial2);

        for ($i = $valorInicial; $i <= $valorFinal; $i++) {
            $check = Calculos::calcularDigitoControl($i);
            $codigo = $cod . $i . $check . 'DO';

            // Genera cada código de barras tres veces
            for ($j = 0; $j < 3; $j++) {
                $pdf->AddPage();
                $pdf->Cell(0, 0, '', 0, 1);
                $pdf->write1DBarcode($codigo, 'C128', '', '', '', 38, 0.9, $style, 'N');
                
            }
        }

        // Guarda el archivo PDF en el servidor
        ob_end_clean();
        $pdf->Output('barcode.pdf', 'I');
    }
}

?>