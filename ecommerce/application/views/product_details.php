<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link rel="stylesheet" href="<?php echo base_url(); ?>css/main.css" type="text/css">
    </head>
    <body>
        <script type="text/javascript">(function (d, t, e, m) {

                // Async Rating-Widget initialization.
                window.RW_Async_Init = function () {

                    RW.init({
                        huid: "241383",
                        uid: "4d7b9529044e19c632a2e0f0f1ac6e3b",
                        source: "website",
                        options: {
                            "size": "medium",
                            "style": "oxygen"
                        }
                    });
                    RW.render();
                };
                // Append Rating-Widget JavaScript library.
                var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
                        l = d.location, ck = "Y" + t.getFullYear() +
                        "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
                        f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
                        a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
                if (d.getElementById(id))
                    return;
                rw = d.createElement(e);
                rw.id = id;
                rw.async = true;
                rw.type = "text/javascript";
                rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
                s.parentNode.insertBefore(rw, s);
            }(document, new Date(), "script", "rating-widget.com/"));
        </script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=640483286003144";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
        <div id="wrapper">
            <?php include("header.php"); ?>
            <div id="content">
                <div id="breadcrumb">
                    <a href="#">Our Products</a>
                </div>
                <?php include("left.php"); ?>
                <div id="right">
                    <div id="product-left">
                        <img src="<?php echo base_url() . $product->big_image; ?>" alt="" />
                    </div>
                    <div id="product-right">
                        <h1><?php echo $product->item_name; ?></h1>
                        <p><span class="large">£<?php echo number_format($product->item_price, 2); ?></span> per case</p><br />
                        <?php
                        if ($product->item_stock > 0) {
                            ?>
                            <p><strong>Stock Remaining:</strong> <?php echo $product->item_stock; ?> Pieces</strong>
                                <br /><br />
                                <?php
                            } else {
                                ?>
                                <div id="errors">
                                    <ul>
                                        <li>Out of stock</li>
                                    </ul>
                                </div>
                            <?php } ?>
                            <p><strong>Product Rating: </strong>

                               <div class="rw-ui-container" data-urid="<?php echo $product->item_id; ?>"></div>
                            </p>
                            <div id="description">
                                <p><?php echo $product->item_desc; ?></p>
                            </div>
                            <div id="actions">
                                <a href="<?php echo base_url(); ?>index.php/buy/<?php echo $product->item_id; ?>" class="add">Add to cart</a>
                            </div>
                                    <p>
                            Comment:
                            
                            <div class="fb-comments" data-href="<?php echo base_url(uri_string()); ?>" data-numposts="5"></div>
                                </p>
                    </div>
                </div>		
                <div class="clear"></div>
                <?php include("footer.php"); ?>
            </div>

        </div>
    </body>
</html>