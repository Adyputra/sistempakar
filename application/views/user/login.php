<div class="container" style="margin-top:80px">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="margin:auto;">
    <h1>LOGIN ADMIN</h1>
        <form method="POST" action="<?= base_url('auth/login') ?>">
            <?php if($this->session->flashdata('msg')){ ?>
            <div class="alert alert-warning"><?php echo $this->session->flashdata('msg'); ?></div>
            <?php } ?>
            <div class="form-group">
                <label for="exampleInputEmail1">Username</label>
                <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-check">
                <!-- <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label> -->
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
        </div>
    </div>
</div>