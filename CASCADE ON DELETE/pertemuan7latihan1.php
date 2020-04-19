<?php
$hostName = "localhost"; // 
$hostUser = "root"; // 
$dbName   = "db_atk"; // 
$koneksi = mysqli_connect($hostName,$hostUser,"",$dbName); // 
if (mysqli_connect_error()){
	echo "Koneksi database gagal : " . mysqli_connect_error(); // 
}
if(isset($_GET['egfbggfbrr'])){ //   
    $id = $_GET['egfbggfbrr']; // 
    if(mysqli_query($koneksi,"DELETE FROM tbl_barang WHERE id1='$id'") > 0){  //  
        $error1 = '<marquee class="text-white"> << Berhasil dihapus Table Barang >> </marquee>'; // 
        }else{
        $error1 = '<marquee class="text-white"> << Gagal Dihapus Table Barang >> </marquee>'; // 
    }
}
if(isset($_GET['egfbggfbrr2'])){ // 
    $id = $_GET['egfbggfbrr2']; // 
    if(mysqli_query($koneksi,"DELETE FROM tbl_pesanan WHERE id4='$id'") > 0){ // 
        $error1 = '<marquee class="text-white"> << Berhasil dihapus Table Barang >> </marquee>'; // 
        }else{
        $error1 = '<marquee class="text-white"> << Gagal Dihapus Table Barang >> </marquee>'; // 
    }
}
if(isset($_POST['caracas'])){ // 
    if(isset($_POST['id1']) and isset($_POST['id2']) and isset($_POST['id3'])){ // 
        $a = $_POST['id1']; // 
        $b = $_POST['id2']; // 
        $c = $_POST['id3']; // 
        // echo $a.' '.$b.' '.$c;
        if(mysqli_query($koneksi,"UPDATE tbl_barang SET id2='$b', id3='$c' WHERE id1='$a'  ") > 0){ // 
            $error1 = '<marquee class="text-white"> << Berhasil Diubah Table Barang >> </marquee>'; // 
            }else{
            $error1 = '<marquee class="text-white"> << Gagal Diubah Table Barang >> </marquee>'; // 
        }
    }
}
if(isset($_POST['caracas2'])){ // 
    // echo 'ok';
    if(isset($_POST['id4']) and isset($_POST['id5']) and isset($_POST['id5']) and isset($_POST['id7'])){ // 
        $a = $_POST['id4']; // 
        $b = $_POST['id5']; // 
        $c = $_POST['id6']; // 
        $d = $_POST['id7']; // 
        // echo $a.' '.$b.' '.$c.' '.$d;
        if(mysqli_query($koneksi,"UPDATE tbl_pesanan SET id5='$b', id6='$c', id7='$d' WHERE id4='$a'  ") > 0){ // 
            $error1 = '<marquee class="text-white"> << Berhasil Diubah Table pesanan >> </marquee>'; // 
            }else{
            $error1 = '<marquee class="text-white"> << Gagal Diubah Table pesanan >> </marquee>'; // 
        }
    }
}
if(isset($_POST)){ // 
    if(isset($_POST['id1']) and isset($_POST['id2']) and isset($_POST['id3']) and isset($_POST['atk1'])){ // 
        $id1 = $_POST['id1']; // 
        $id2 = $_POST['id2']; // 
        $id3 = $_POST['id3']; // 
    if(mysqli_query($koneksi,"INSERT INTO tbl_barang values('$id1','$id2','$id3')") > 0){ // 
        $error1 = '<marquee class="text-white"> << Berhasil Disimpan Table Barang >> </marquee>'; // 
        }else{
        $error1 = '<marquee class="text-white"> << Gagal Disimpan Table Barang >> </marquee>'; // 
    }
    }else{
        $error1 = '<marquee class="text-white"> << Selamat Datang  >> </marquee>'; // 
    }
    if(isset($_POST['id4']) and isset($_POST['id5']) and isset($_POST['id6']) and isset($_POST['atk2']) and isset($_POST['id7'])){ // 
        $id4 = $_POST['id4']; // 
        $id5 = $_POST['id5']; // 
        $id6 = $_POST['id6']; // 
        $id7 = $_POST['id7']; // 
    if(mysqli_query($koneksi,"INSERT INTO tbl_pesanan values('','$id4','$id5','$id6','$id7')") > 0){ // 
        $error1 = '<marquee class="text-white"> << Berhasil Disimpan Tabel Pemesanan >> </marquee>'; // 
        }else{
        $error1 = '<marquee class="text-white"> << Gagal Disimpan Tabel Pemesanan >> </marquee>'; // 
    }
    }
    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Author :: Marrochi</title> 
    <link rel="stylesheet" href="Ochi1.css"> 
    <script src="Ochi1.js"></script> 
    <script src="Ochi2.js"></script> 
    <script src="Ochi3.js"></script> 
    <style>
    
    </style>
</head>
<body>
        
    
        <div class="row">
        <!-- batas -->
        <div class="col-3" style="height:300px;background-image: linear-gradient(to right top, #cdbc03, #f1a228, #ff894e, #ff7675, #fb6f9a 90%, #ea7bc1, #cb8bdf, #a29cf2, #70b6ff, #3ccdff, #36dffa, #68eee6);">
           <div class="container">
           <div class="container-fluid">
               <h3> <?php 
            if(isset($error1)){echo $error1;} // 
            ?></h3>
           </div>
        <form action="" method="post" class="mt-4"> 
            <div class="form-row"> 
             <div class="col-md-12 mb-3">
                <!-- <label for=""></label> -->
                <div class="input-group">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupPrepend21">Kode Barang</span>
                    </div>
                    <input type="text" class="form-control" id="" name="id1" aria-describedby="inputGroupPrepend21" required>
                </div>
             </div>
            </div>
            <div class="form-row">
             <div class="col-md-12 mb-3">
                <!-- <label for=""></label> -->
                <div class="input-group">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupPrepend22">Nama Barang</span>
                    </div>
                    <input type="text" class="form-control" id="" name="id2" aria-describedby="inputGroupPrepend22" required>
                </div>
             </div>
            </div>
            <div class="form-row">
             <div class="col-md-12 mb-3">
                <!-- <label for=""></label> -->
                <div class="input-group">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupPrepend23">Harga Barang</span>
                    </div>
                    <input type="number" class="form-control" id="" name="id3" aria-describedby="inputGroupPrepend23" required>
                </div>
             </div>
            </div>
      
        
        <center>
        <input type="submit" class="btn btn-block btn-info" name="atk1"  value="simpan">
        </center>
        </form>
           </div>
        </div>
        <!--  -->
        <div class="col-5 " style="overflow:auto;height:300px;background-image: linear-gradient(to right top, #cdbc03, #f1a228, #ff894e, #ff7675, #fb6f9a 90%, #ea7bc1, #cb8bdf, #a29cf2, #70b6ff, #3ccdff, #36dffa, #68eee6);">    
           <h3 class="text-uppercase text-white">tabel barang</h3>
           <table class="table ">
            <tr class="text-white">
                <th>Kode Barang</th>
                <th>Nama Barang</th>
                <th>Harga</th>
                <th>Opsi</th>
            </tr>
            <?php 
              $sTbl_barang = mysqli_query($koneksi,"SELECT * FROM tbl_barang"); 
              while($rTbl_barang=mysqli_fetch_array($sTbl_barang)){
          ?>
         
            <tr class="text-white">
                <td><?php echo $rTbl_barang['id1'];?></td>
                <td><?php echo $rTbl_barang['id2'];?></td>
                <td><?php echo $rTbl_barang['id3'];?></td>
                <td>
                    <a href="" class="oci-ubahlah" data-toggle="modal"  data-id890="<?= $rTbl_barang['id1']; ?>" data-id892="<?= $rTbl_barang['id2']; ?>" data-id893="<?= $rTbl_barang['id3']; ?>"  data-target="#exampleModal"><img src="1.jpg"  class="rounded-circle" alt="" width="40" height="40"></a>
                    <a href="?egfbggfbrr=<?= $rTbl_barang['id1']; ?>" onclick="return confirm('Yakin Hapus?')"><img src="2.png"  class="rounded-circle" alt="" width="40" height="40"></a>
              
                </td>
            </tr>
              <?php } ?>
          </table>
        </div>
        <!--  -->
        <div class="col-3" style="border: 2px solid grey;">
    
       <form action="" method="post">
         <select name="id4" class="form-control mt-3" >
         <option value="">-- Pilih Kode Barang --</option>
         <!-- // menampilkan tbl barang -->
         <?php  $sTbl_barang2 = mysqli_query($koneksi,"SELECT * FROM tbl_barang");
              while($rTbl_barang2=mysqli_fetch_array($sTbl_barang2)){ ?>
         <option value="<?php echo $rTbl_barang2['id1']; ?>"><?php echo $rTbl_barang2['id1']; ?></option>
         <?php } ?>
         </select>
        <input type="number" style=" width: 100%;padding: 12px 20px;margin: 8px 0;box-sizing: border-box;border: ne;  border-bottom: 2px solid grey;" name="id5" required placeholder="jumlah pesanan">
        <input type="number" style=" width: 100%;padding: 12px 20px;margin: 8px 0;box-sizing: border-box;border: ne;  border-bottom: 2px solid grey;" name="id6" required placeholder="total bayar">
        <input type="date" style=" width: 100%;padding: 12px 20px;margin: 8px 0;box-sizing: border-box;border: ne;  border-bottom: 2px solid grey;" name="id7" required >
        
        <center>
        <input type="submit" class="btn-block btn-success" name="atk2"  value="simpan" style="background: grey;">
        </center>
        </form>
        </div>
        <!-- /batas  -->
        </div>

        <div class="row">
        <div class="col-8" style="height:300px;overflow:auto;" >
          <div class="container">
                <h3 class="text-uppercase">tabel Pesanan</h3>
           <table class="table table-bordered"> 
           <thead class="thead-dark">
           <tr >
                <th>Kode Barang</th>
                <th>Jumlah Pesanan</th>
                <th>Total Bayar</th>
                <th>Tanggal</th>
                <th>Opsi</th>
            </tr>
           </thead>
            <?php 
              $sTbl_pesanan = mysqli_query($koneksi,"SELECT * FROM tbl_pesanan");
              while($rTbl_pesanan=mysqli_fetch_array($sTbl_pesanan)){
          ?>
            <tr >
                <td><?php echo $rTbl_pesanan['id4'];?></td>
                <td><?php echo $rTbl_pesanan['id5'];?></td>
                <td><?php echo $rTbl_pesanan['id6'];?></td>
                <td><?php echo $rTbl_pesanan['id7'];?></td>
                <td>
                    <a href="" class="oci-ubahlah2" data-toggle="modal"  data-id890="<?= $rTbl_pesanan['id4']; ?>" data-id892="<?= $rTbl_pesanan['id5']; ?>" data-id893="<?= $rTbl_pesanan['id6']; ?>" data-id894="<?= $rTbl_pesanan['id7']; ?>"  data-target="#exampleModal"><img src="1.jpg"  class="rounded-circle" alt="" width="40" height="40"></a>
                    <a href="?egfbggfbrr2=<?= $rTbl_pesanan['id4']; ?>" onclick="return confirm('Yakin Hapus?')"><img src="2.png"  class="rounded-circle" alt="" width="40" height="40"></a>
              
                </td>
            </tr>
              <?php } ?>
          </table>
          </div>
        </div>
         
        <div class="col-3" style="">
                    <h3>author : marrochi</h3>
         <img src="lock1.PNG" alt="" width="100%">
        </div>
        </div>


<!-- Modal  Nikah -->
<form action="" method="post">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      ...
      </div>
      <div class="modal-footer">
        <input  />
      </div>
    </div>
  </div>
</div>
</form>



<script>
                    // ruang control
                    $(function(){

                        $('.oci-ubahlah').on('click', function(){
                                const id = $(this).data('id890');
                                // console.log(id)
                                const id2 = $(this).data('id892');
                                // console.log(id2)
                                const id3 = $(this).data('id893');
                                $('#exampleModalLabel').html('Ubah Data')
                                $('.modal-body').html(`  
                                    <div class="form-row">
                                            <div class="col-4">
                                            <label for="">Kode Barang</label>
                                            <h3>${id}</h3>
                                            <input type="hidden" class="form-control" placeholder="Kode Barang" name="id1" value="${id}">
                                            </div>
                                            <div class="col-4">
                                            <label for="">Nama Barang</label>
                                            <input type="text" class="form-control" placeholder="Nama Barang" name="id2" value="${id2}">
                                            </div>
                                            <div class="col-4">
                                            <label for="">Harga Barang</label>
                                            <input type="number" class="form-control" placeholder="Harga Barang" name="id3" value="${id3}">
                                            </div>
                                        </div>
                                   
                            
                                `)
                                $('.modal-footer input').html('Ubah Data');
                                $('.modal-footer input').attr('class','btn btn-warning');
                                $('.modal-footer input').attr('type','submit');
                                $('.modal-footer input').attr('name','caracas');
                        });

                        $('.oci-ubahlah2').on('click', function(){
                                const id = $(this).data('id890');
                                // console.log(id)
                                const id2 = $(this).data('id892');
                                // console.log(id2)
                                const id3 = $(this).data('id893');
                                // console.log(id3)
                                const id4 = $(this).data('id894');
                                // console.log(id4)
                                $('#exampleModalLabel').html('Ubah Pesanan')
                                $('.modal-body').html(`  
                                    <div class="form-row">
                                            <div class="col-6">
                                            <center><label for="">Kode Barang</label>
                                            <h3>${id}</h3>
                                            <hr>
                                            <input type="hidden" class="form-control" placeholder="Kode Barang" name="id4" value="${id}"></center>
                                            </div>
                                            <div class="col-6">
                                            <label for="">Jumlah Pesanan</label>
                                            <input type="text" class="form-control" placeholder="Jumlah Pesanan" name="id5" value="${id2}">
                                            </div>
                                            <div class="col-6">
                                            <label for="">Total Barang</label>
                                            <input type="number" class="form-control" placeholder="Total Barang" name="id6" value="${id3}">
                                            </div>
                                            <div class="col-6">
                                            <label for="">Tanggal Pemesanan</label>
                                            <input type="date" class="form-control" placeholder="Tanggal Pemesanan" name="id7" value="${id4}">
                                            </div>
                                        </div>
                                   
                            
                                 `)
                                $('.modal-footer input').html('Ubah Pesanan');
                                $('.modal-footer input').attr('class','btn btn-warning');
                                $('.modal-footer input').attr('type','submit');
                                $('.modal-footer input').attr('name','caracas2');
                        });
                    });
                    </script>
</body>
</html>
