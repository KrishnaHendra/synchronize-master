<?php
/**
 *
 */
class Data_beli extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->library('pdf');
  }
  public function index()
  {
    $this->load->view('data_beli_view');
  }
  public function pdf()
  {
    $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    $pdf->setPrintFooter(false);
    $pdf->setPrintHeader(false);
    $pdf->SetAutoPageBreak(true, PDF_MARGIN_BOTTOM);
    $pdf->AddPage('');
    $pdf->Write(0, '', '', 0, 'L', true, 0, false, false, 0);
    $pdf->SetFont('');

    $tabel = '
        <table border="1" class="text-center">
              <tr>
                    <td colspan="2">TICKET TYPE : <b>OHNAIS FEST Rp. 75.000</b><br><b>INCLUDE PAJAK DAN RETRIBUSI LAINNYA</b> </td>

              </tr>

              <tr>
                    <td rowspan="4"> img </td>
                    <td rowspan="2"> 12.448.200 </td>

              </tr>
              <tr>
                    <td> xxxxxxxx </td>
                    <td> xxxxxxxx </td>
              </tr>
              <tr>
                    <td rowspan="2"> DI Yogyakarta </td>
                    <td> xxxxxxxx </td>
              </tr>
              <tr>
                    <td> xxxxxxxx </td>
                    <td> xxxxxxxx </td>
              </tr>
              <tr>
                    <td rowspan="2"> Gorontalo </td>
                    <td rowspan="2"> 1.168.200 </td>
              </tr>
              <tr>
              <td rowspan="2"> Gorontalo </td>
              <td rowspan="2"> 1.168.200 </td>
              </tr>
              <tr>
              <td rowspan="5" colspan="2">Terms & Condition</td>

              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
              <tr>
              <td rowspan="2">WWW.SEJAYACORP.COM</td>
              <td rowspan="2">081334304990</td>
              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
              <tr>
              <td rowspan="2" colspan="2">Powered By Synchronize</td>

              </tr>
              <tr>
              <td>xxxxxxxx</td>
              <td>xxxxxxxx</td>
              </tr>
        </table>
        ';
        $beli = 'data_beli_view';
        $pdf->writeHTML($tabel);
        $pdf->Output('file-pdf-codeigniter.pdf', 'I');
    }
  }
