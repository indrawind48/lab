<?php

error_reporting(E_ALL);

include('excel/PHPExcel.php');
include ('../libs/koneksi.php');
// Create new PHPExcel object
$objPHPExcel = new PHPExcel();


$query="select * from pemeriksaan ";
$hasil = mysql_query($query);
 
// Set properties
$objPHPExcel->getProperties()->setCreator("Indra Dwi Putra")
      ->setLastModifiedBy("Indra Dwi Putra")
      ->setTitle("Office 2007 XLSX Test Document")
      ->setSubject("Office 2007 XLSX Test Document")
       ->setDescription("Laporan Pemeriksaan .")
       ->setKeywords("office 2007 openxml php")
       ->setCategory("Pemeriksaan");
 
// Add some data
$objPHPExcel->setActiveSheetIndex(0)
       ->setCellValue('A1', 'No')
       ->setCellValue('B1', 'Propinsi')
       ->setCellValue('C1', 'Upah');
 
$baris = 2;
$no = 0;			
while($row=mysql_fetch_array($hasil)){
$no = $no +1;
$objPHPExcel->setActiveSheetIndex(0)
     ->setCellValue("A$baris", $row['kode'])
     ->setCellValue("B$baris", $row['parameter'])
     ->setCellValue("C$baris", $row['hasil']);
$baris = $baris + 1;
}
 
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('transaksi');
 
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);
 
// Redirect output to a client’s web browser (Excel5)
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="Pemeriksaan.xls"');
header('Cache-Control: max-age=0');
 
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save('php://output');
exit;
?>
 