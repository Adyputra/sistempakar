<div class="jumbotron bg-danger">
  <br><br>
  <br><br>
  <h1 class="display-5 text-center" style="color: #FFF;"><b>Detail Diagnosa</b></h1>
  <br><br>
  <div class="container">
  <!-- /.box-header -->
  <div class="box-body" style="color: #FFF;">
                        <?= $this->session->flashdata('message') ?>
                        <table id="table" class="table table-bordered"  >
                            <thead>
                                <tr style="color: #FFF;">
                                    <th>No</th>
                                    <th>Kode Hama & Penyakit</th>
                                    <th>Hama & Penyakit</th>
                                    <th>Gejala</th>
                                    <th>Solusi</th>
                                </tr>
                            </thead>
                            <tbody style="color: #FFF;">
                                <?php
                                $no = 1;
                                foreach ($gejala as $data) {
                                ?>
                                    <tr>
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $kode_hp; ?></td>
                                        <td><?php echo $hamapenyakit; ?></td> 
                                        <td><?= $data['gejala']; ?></td>
                                        <td><?php echo $data['solusi']; ?></td> 
                                    </tr>
                                <?php $no++;
                                } ?>
                            </tbody>
                        </table>            
  <br><br>
</div>
<a href="<?php echo base_url() ?>user/konsultasi" class="btn btn-primary btn-lg"><span class="fa fa-arrow-left"></span> Konsultasi Lagi</a>
