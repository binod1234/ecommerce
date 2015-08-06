<?php error_reporting(0); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link rel="stylesheet" href="<?php echo base_url(); ?>css/main.css" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <?php include("header.php"); ?>
            <div id="content">
                <div id="breadcrumb">
                    <a href="#">Our Products</a>
                </div>
                <?php include("left.php"); ?>
                <div id="right">
                    <h1 class="bar"><?php echo str_replace('-', ' ', ucwords($this->uri->segment(3))); ?></h1>

                    <?php
                    $i = 1;
                    if ($category_products != 'empty') {
                        foreach ($category_products as $product) {
                            ?>
                            <div class="item <?php if ($i % 3 == 0) echo 'no-margin-right'; ?>">
                                <div class="photo"><img src="<?php echo base_url() . $product->medium_image; ?>" alt="<?php echo $product->item_name; ?>" /></div>
                                <div class="title"><a href="<?php echo base_url(); ?>index.php/details/<?php echo $product->item_id; ?>/<?php echo url_title(strtolower($product->item_name)); ?>">
                                        <?php echo $product->item_name; ?></a></div>
                                <p><span>£<?php echo number_format($product->item_price, 2); ?></span> per case</p>
                                <div class="actions">
                                    <a href="<?php echo base_url(); ?>index.php/buy/<?php echo $product->item_id; ?>" class="add">Add to cart</a>
                                </div>
                            </div>
                            <?php
                            $i++;
                        } // end for each
                    } // end if
                    else
                        echo "Nothing Found";
                    ?>

                </div>		


                <div class="clear"></div>

                <?php
                if ($total > RECORDS_PER_PAGE) {
                    $pages = ceil($total / RECORDS_PER_PAGE);
                    ?>
                    <div id="actions">
                        <div id="pagination">
                            <a href="<?php echo base_url(); ?>index.php/category/<?php echo $category_products[0]->cat_id . '/' . $this->uri->segment(3) ?>/<?php echo $this->uri->segment(4) > 1 ? ($this->uri->segment(4) - 1) : 1; ?>">&laquo;</a>
                            <?php
                            for ($i = 1; $i <= $pages; $i++) {
                                ?><a class="<?php if ($this->uri->segment(3) == $i) echo 'active'; ?>" href="<?php echo base_url(); ?>index.php/category/<?php echo $category_products[0]->cat_id . '/' . $this->uri->segment(3) ?>/<?= $i; ?>"><?php echo $i; ?></a>

                            <?php } ?>  
                            <a href="<?php echo base_url(); ?>index.php/category/<?php echo $category_products[0]->cat_id . '/' . $this->uri->segment(3) ?>/<?php echo $this->uri->segment(4) < $pages ? ($this->uri->segment(4) + 1) : $pages; ?>">&raquo;</a>
                        </div>
                    <?php } ?> 

                </div>
                <div class="clear"></div>
                <?php include("footer.php"); ?>
            </div>

        </div>
    </body>
</html>