<div class="jumbotron bg-danger">
  <br><br>
  <br><br>
  <h1 class="display-5 text-center" style="color: #FFF;"><b>Data Hama & Penyakit Tanaman Tomat</b></h1>
  <br><br>
<div class="container">
  <!-- /.box-header -->
  <div class="box-body" style="color: #FFF;">
                        <?= $this->session->flashdata('message') ?>
                        <table id="table" class="table table-bordered"  >
                            <thead>
                                <tr style="color: #FFF;">
                                    <th>No</th>
                                    <th>Kode</th>
                                    <th>Hama dan Penyakit</th>
                                    <th>Detail</th>
                                    
                                </tr>
                            </thead>
                            <tbody >
                                <?php
                                $no = 1;
                                foreach ($hamapenyakit as $data) {
                                ?>
                                    <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?= $data['kode_hp']; ?></td>
                                        <td><?= $data['hamapenyakit']; ?></td>
                                        <td>  
                                            <a href="<?php echo base_url() ?>user/detail_hp/<?= $data['kode_hp']; ?>" class="btn btn-primary"><span class="fa fa-search"></span></a>
                                        </td>
                                    </tr>
                                <?php $no++;
                                } ?>
                            </tbody>
                        </table>            
  <br><br>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#table').DataTable({
            "pageLength": 20
        });
    });
</script>