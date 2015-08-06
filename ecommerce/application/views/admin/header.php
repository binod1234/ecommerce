<?php
//if($this->session->userdata('admin')=='')
// header("Location:".base_url()."index.php/admin/");
?>
<div id="header">
    <div id="logo">
        <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>images/logo.png" alt="Galaxy Wines Ltd." /></a>
    </div>
</div>
<div id="menu">
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Our Products</a></li>
        <li><a href="#">My Cart</a></li>
        <li><a href="#">Contact Us</a></li>
        <?php
        if ($this->session->userdata('admin') != '') {
            ?>
            <li><a href="<?php echo base_url(); ?>index.php/admin/signout">Signout</a></li>
        <?php } ?>
    </ul>
</div>