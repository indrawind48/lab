<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistem Informasi Berbasis Web Odhea</title>

    <!-- Import Library -->
	<link href="libs/bootstrap.min.css" rel="stylesheet">
	<link href="libs/bootstrap-multiselect.css" rel="stylesheet">
	<link href="libs/style.css" rel="stylesheet">
    <link href="libs/dataTables.bootstrap.css" rel="stylesheet">
	<link href="libs/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="libs/chosen.css">
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 
    
    <body class="pushmenu-push">
    <?php 
	#import koneksi header dan sidebar
		include ('libs/koneksi.php');
		include ('libs/alerts.php');
		include_once ('navbar.php'); 
     	include_once ('header.php'); 
     	//include_once ('body.php'); 
	?>
	<div class="container">
	<div class="main">
	<section class="buttonset">
	<div id="nav_list">Menu</div>
	</section>
	<section class="content">
            	
          
    <?php
	#fungsi menu simple
			error_reporting(0);
			$pages_dir='page'; //value directory
			if(!empty($_GET['ref'])) { //kalo ga kosong ambil link page
			$pages = scandir($pages_dir, 0); //scan directory
			unset($pages[0],$pages[1]); // hapus index[0](.) , hapus index[1] (..)
			$ref = $_GET['ref']; //link page
			if(in_array($ref.'.php',$pages)) {  //pencocokan data link page dan directory
				include($pages_dir.'/'.$ref.'.php'); //excute
			} else {
			echo 'halaman tidak di temukan'; }
			} else {
			/*include('body.php'); */ }
	 ?>
     
	</section>
		<!-- End Content -->
	</div>
        <!-- End Main -->
	</div>
    	<!-- End Container -->

    <!-- Import Library  -->
    <script src="libs/jquery.min.js"></script>
    <script src="libs/bootstrap.min.js"></script>
	<script src="libs/jquery.dataTables.min.js"></script>
    <script src="libs/dataTables.bootstrap.js"></script>	
    <script src="libs/jquery.validate.min.js"></script>
	<script src="libs/additional-methods.min.js"></script>
	<script src="libs/bootstrap-datetimepicker.js"></script>
	<script src="libs/bootstrap-multiselect.js"></script>
	
	<script src="libs/highcharts.js"></script>
	<script src="libs/data.js"></script>
	<script src="libs/chosen.jquery.js" type="text/javascript"></script>

<script>
var $hide = jQuery.noConflict();
$hide('option.hide').hide();
</script>	
<script>
//fungsi informasi pasien (auto sum harga total dan list item)
var $autosum = jQuery.noConflict();
$autosum(document).ready(function() {
$autosum("input[type=checkbox]").change(function(){
  recalculate();
      if (this.checked) {
        var isi = $autosum(this).attr("data");
        var isi2 = $autosum(this).attr("data2");
        var isi3 = $autosum(this).attr("data3");
        $autosum('<div id="d">'+ isi2 +' - '+ isi +' - '+ isi3 +'</div>').appendTo('#output');
        //$autosum('<input type="text" id="dx" value='+ isi +'>').appendTo('#output');
    } else {
         $autosum(document.getElementById('d')).remove();
    } 
});
$autosum(".chkk").change(function(){
	if (this.checked) {
		var isi = $autosum(this).attr("data2");
		$autosum('<input name="nama_paket[]" type="text" id="dx" value='+ isi +'>').appendTo('#output');
	} 
});
function recalculate(){
    var sum = 0;
    $autosum("input[type=checkbox]:checked").each(function(){
      sum += parseInt($autosum(this).attr("price"));
    });
  //  alert(sum);
////$("#output").html(sum);
    document.getElementById('total_biaya').value = sum
}
});
</script>	
	
<script>
//fungsi list parameter uji dan paket
	var $show = jQuery.noConflict();
	$show(document).ready(function(){
$show("#isi1,#isi2,#isi3,#isi4,#isi5,#isi6,#isi7,#isi8,#isi9,#isi_a1,#isi_a2,#isi_a3,#isi_a4,#isi_a5,#isi_a6,#isi_a7,#isi_a8,#isi_a9,#isi_a10,#isi_a11,#isi_a12,#isi_a13,#isi_a14,#isi_a15").hide();

    $show("#div1").click(function(){
        $show("#isi1").slideToggle(200);

    });
	$show("#div2").click(function(){
        $show("#isi2").slideToggle(200);
    
	});

	$show("#div3").click(function(){
        $show("#isi3").slideToggle(200);

	});
	
    $show("#div4").click(function(){
        $show("#isi4").slideToggle(200);

    });
	$show("#div5").click(function(){
        $show("#isi5").slideToggle(200);
    
	});

	$show("#div6").click(function(){
        $show("#isi6").slideToggle(200);

	});
	
    $show("#div7").click(function(){
        $show("#isi7").slideToggle(200);

    });
	$show("#div8").click(function(){
        $show("#isi8").slideToggle(200);
    
	});

	$show("#div9").click(function(){
        $show("#isi9").slideToggle(200);

	});
	$show("#div_a1").click(function(){
        $show("#isi_a1").slideToggle(200);

	});
	$show("#div_a2").click(function(){
        $show("#isi_a2").slideToggle(200);

	});
	$show("#div_a3").click(function(){
        $show("#isi_a3").slideToggle(200);

	});
	$show("#div_a4").click(function(){
        $show("#isi_a4").slideToggle(200);

	});
	$show("#div_a5").click(function(){
        $show("#isi_a5").slideToggle(200);

	});
	$show("#div_a6").click(function(){
        $show("#isi_a6").slideToggle(200);

	});
	$show("#div_a7").click(function(){
        $show("#isi_a7").slideToggle(200);

	});
	$show("#div_a8").click(function(){
        $show("#isi_a8").slideToggle(200);

	});
	$show("#div_a9").click(function(){
        $show("#isi_a9").slideToggle(200);

	});
	$show("#div_a10").click(function(){
        $show("#isi_a10").slideToggle(200);

	});
	$show("#div_a11").click(function(){
        $show("#isi_a11").slideToggle(200);

	});
	$show("#div_a12").click(function(){
        $show("#isi_a12").slideToggle(200);

	});
	$show("#div_a13").click(function(){
        $show("#isi_a13").slideToggle(200);

	});
	$show("#div_a14").click(function(){
        $show("#isi_a14").slideToggle(200);

	});
});

</script>	
<script>
	//fungsi cari paramater uji
	var $ee = jQuery.noConflict();
    var config = {
      '.chosen-select'           : {},
      '.chosen-select-deselect'  : {allow_single_deselect:true},
      '.chosen-select-no-single' : {disable_search_threshold:10},
      '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
      '.chosen-select-width'     : {width:"95%"}
    }
    for (var selector in config) {
      $ee(selector).chosen(config[selector]);
    }
</script>	
<!--script>
	var $nocon1! = jQuery.noConflict();
      $nocon1(document).ready(function() {
     $nocon1('#selectlist').multiselect({
     enableCaseInsensitiveFiltering: true,
	 maxHeight: 200,
	 
     });
      });
</script-->	
<script>
//fungsi chart 
	var $nocon = jQuery.noConflict();
		$nocon(function () {
    $nocon('#chrtbar').highcharts({
        data: {
            table: 'chrt'
        },
        chart: {
            type: 'line'
        },
        title: {
            text: 'Statistik Pasien Dan Pemeriksaan'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Units'
            }
        },
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
    });
});
</script>
<script>
//fungsi date picker
	var $jnoc3 = jQuery.noConflict();
			$jnoc3('.form_date').datetimepicker({
			language:  'id',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
			});
</script>
<script>
//fungsi sidebar
	var $jnoc1 = jQuery.noConflict();
	$jnoc1(document).ready(function () {
    $menuLeft = $jnoc1('.pushmenu-left');
    $nav_list = $jnoc1('#nav_list');
    $nav_list.click(function(){
        $jnoc1(this) .toggleClass('active') ;
        $jnoc1('.pushmenu-push').toggleClass('pushmenu-push-toright');
        $menuLeft.toggleClass('pushmenu-open');
        });
    });
</script>
    
<script>
//fungsi datatable
    var $jnoc = jQuery.noConflict();
	$jnoc(function() {
    $jnoc('#example1').dataTable();
    });
</script>
	
<script>
//fungsi validasi
var $jnoc2 = jQuery.noConflict();
$jnoc2("#form_input").validate();
</script>

  </body>
</html>