<?php
    include_once'db/connect_db.php';
    session_start();
    if($_SESSION['username']==""){
      header('location:index.php');
    }else{
      if($_SESSION['role']=="Admin"){
        include_once'inc/header_all.php';
      }else{
          include_once'inc/header_all_operator.php';
      }
    }


    //if button updated clicked
    if(isset($_POST['btn_update'])){

        $oldpass = $_POST['oldpass'];
        $newpass = $_POST['newpass'];
        $confpass = $_POST['confpass'];

        $email = $_SESSION['useremail'];

        $select = $pdo->prepare("SELECT * FROM tbl_user where useremail='$email'");

        $select->execute();

        $row = $select->fetch(PDO::FETCH_ASSOC);

        $useremail_db = $row['useremail'];
        $password_db = $row['password'];

        //compare user input with data from database
        if($oldpass == $password_db){

          if($newpass == $confpass){

          //if values match update the password
           $update = $pdo->prepare("UPDATE tbl_user SET password=:pass WHERE useremail=:email");

           $update->bindParam(':pass', $confpass);
           $update->bindParam(':email', $email);

           //check if update executed
           if($update->execute()){
              echo'<script type="text/javascript">
              jQuery(function validation(){
                swal("Success", "Password Updated", "success", {
                  button: "Continue",
                });
              });
              </script>';
           }else{
              echo'<script type="text/javascript">
              jQuery(function validation(){
                swal("Oops", "Password Is Not Updated", "error", {
                  button: "Continue",
                });
              });
              </script>';
           }
          }else{
            echo'<script type="text/javascript">
            jQuery(function validation(){
              swal("Warning", "Confirm Password Is Wrong", "warning", {
                button: "Continue",
              });
            });
            </script>';
          }
        }else{
          echo'<script type="text/javascript">
          jQuery(function validation(){
            swal("Warning", "Your Password Is Wrong", "warning", {
              button: "Continue",
            });
          });
          </script>';
        }
    }

?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 class="text-capitalize">
        <?php echo $_SESSION['role']; ?> Profile
      </h1>
      <hr>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
      <div class="col-md-4">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Ganti Kata Sandi</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="" method="POST">
              <div class="box-body">
                <div class="form-group">
                  <label for="oldpassword">Kata Sandi Lama</label>
                  <input type="text" class="form-control" id="oldpassword" name="oldpass" required>
                </div>
                <div class="form-group">
                  <label for="newpassword">Kata Sandi Baru</label>
                  <input type="password" class="form-control" id="newpassword" name="newpass" required>
                </div>
                <div class="form-group">
                  <label for="confirmpassword">Konfirmasi Kata Sandi</label>
                  <input type="password" class="form-control" id="confirmpassword" name="confpass" required>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary" name="btn_update">Perbarui</button>
              </div>
            </form>
          </div>
        </div>
          <!-- /.box -->
      <div class="col-md-8">
        <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Profile Pengguna</h3>
            </div>
            <!-- /.box-header -->
            <?php
                $id = $_SESSION['user_id'];
                $select = $pdo->prepare("SELECT * FROM tbl_user WHERE user_id='$id'");
                $select->execute();
                $row=$select->fetch(PDO::FETCH_OBJ) ?>
            <div class="box-body">
              <div class='detail-text'>
                  <label for="name"><strong>Nama Pengguna:</strong></label>
                  <span class='text-data'> <?php echo $row->username; ?></span><br>
                  <label for="name"><strong>Nama Lengkap:</strong></label>
                  <span class='text-data'> <?php echo $row->fullname; ?></span><br>
                  <label for="name"><strong>Wewenang:</strong></label>
                  <span class='text-data'> <?php echo $row->role; ?></span><br>
                  <label for="name"><strong>Password:</strong></label>
                  <span class='text-data'> <?php echo $row->password; ?></span>
              </div>
            </div>

          </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 <?php
    include_once'inc/footer_all.php';
 ?>