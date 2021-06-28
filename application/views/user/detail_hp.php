<div class="jumbotron bg-danger">
  <br><br>
  <br><br>
  <h1 class="display-5 text-center" style="color: #FFF;"><b>Detail Data Hama & Penyakit Tanaman Tomat</b></h1>
  <br><br>
<div class="container">
  <!-- /.box-header -->
  <div class="box-body" style="color: #FFF;">
                        <?= $this->session->flashdata('message') ?>
                        <table id="table" class="table table-bordered"  >
                            <thead>
                                <tr style="color: #FFF;">
                                    <th>No</th>
                                    
                                    <th>Kode Gejala</th>
                                    <th>Gejala</th>
                                    <th>Hama & Penyakit</th>
                                </tr>
                            </thead>
                            <tbody >
                                <?php
                                $no = 1;
                                foreach ($gejala as $data) {
                                ?>
                                    <tr>
                                        <td><?php echo $no; ?></td>
                                        
                                        <td><?= $data['kode_gejala']; ?></td>
                                        <td><?= $data['gejala']; ?></td>
                                        <td><?php echo $hamapenyakit; ?></td> 
                                    </tr>
                                <?php $no++;
                                } ?>
                            </tbody>
                        </table>            
  <br><br>
</div>
<a href="<?php echo base_url() ?>user/data_penyakit" class="btn btn-primary btn-lg"><span class="fa fa-arrow-left"></span> Kembali</a>
<script type="text/javascript">
    $(document).ready(function() {
        $('#table').DataTable({
            "pageLength": 10
        });
    });
</script>
