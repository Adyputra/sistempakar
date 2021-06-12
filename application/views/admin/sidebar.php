<?php

?>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <a href="<?php echo base_url() ?>admin/profile" class="pull-left image">
                <img src="<?php echo base_url() ?>assets/img/admin_icon.png" class="img-circle" alt="User Image">
            </a>
            <div class="pull-left info">
                <p><?php echo $nama_admin;  ?></p>
                <p> <i class="fa fa-circle text-success"></i> Online </p>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>

            <li <?php if ("/sp_tomato/admin" == $_SERVER['REQUEST_URI']) {
                ?> class="active" <?php } ?>>
                <a href="<?php echo base_url() ?>admin">
                    <i class="fa fa-home"></i> <span>Dashboard</span>
                </a>
            </li>

            <li <?php if ("/sp_tomato/admin/gejala" == $_SERVER['REQUEST_URI']) {
                ?> class="active" <?php } ?>>
                <a href="<?php echo base_url() ?>admin/gejala">
                    <i class="fa fa-database"></i> <span>Gejala</span>
                </a>
            </li>
            <li <?php if ("/sp_tomato/admin/hamapenyakit" == $_SERVER['REQUEST_URI']) {
                ?> class="active" <?php } ?>>
                <a href="<?php echo base_url() ?>admin/hamapenyakit">
                    <i class="fa fa-database"></i> <span>Hama dan Penyakit</span>
                </a>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>