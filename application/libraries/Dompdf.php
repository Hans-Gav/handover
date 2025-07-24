<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Dompdf\Dompdf;
use Dompdf\Options;

class Dompdf_library {

    public function __construct() {
        // Load Dompdf jika tidak menggunakan Composer
        require_once FCPATH . 'application/third_party/dompdf/autoload.inc.php';
    }

    public function generate_pdf($html) {
        $dompdf = new Dompdf();

        $options = new Options();
        $options->set('isHtml5ParserEnabled', true);
        $options->set('isPhpEnabled', true);
        $dompdf->setOptions($options);

        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();

        // Output PDF to browser
        $dompdf->stream("invoice.pdf", array("Attachment" => 0));
    }
}
