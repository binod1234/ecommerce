<?php
// integaration of teh esewa into the websites 
// below is the provided code to integrate into the website

// the link to redirect for the payment 
/*(For TEST environment) - http://esewa.f1dev.com/epay/main

 (For LIVE environment) - https://esewa.com.np/epay/main
 there are the 9 different parameters that need to consider 
 1) amt- the amount of the individual product that the customer select from the merchant site
 2) txAmt- total tax ammount of the selected product
 3) psc- product service charge or service charge 
 4) pdc- product delivery charger or delivery charge
 5) tAmt- total ammount including the amount of the each product with the service charge, delivery charge and the tax ammount 
			for example tAmt=amt+txAmt+psc+pdc
 6) pid- the unique id of the each product which is the primary key for that product
 7) su- success URL when the payment was sucessfull then the customer are redirected to the merchant url
		for example http://www.merchantsite.com/success?q=su&oid=121234&amt=100&refId=110761
		here q is the success url 
		oid is the unique id of the product
		amt is the ammount of the product (total amount including the tax, service charge and the delivery charge) and refId is the unique id of the transaction that is send by the esewa
 8) fu-failure url
 <form action = "http://esewa.f1dev.com/epay/main" method="POST">
        <input value="100" name="tAmt" type=" hidden">
            <input value="90" name="amt" type="hidden">
            <input value="10" name="txAmt" type="hidden">
            <input value="0" name="psc" type="hidden">
            <input value="0" name="pdc" type="hidden">
            <input value="testmerchant" name="scd" type="hidden”>
            <input value="121234" name="pid" type=" hidden”>
            <input value="http://merchantsite.com/success,html?q=su" type="hidden" name="su">
            <input value="http://merchantsite.com/failure.html?q=fu" type="hidden" name="fu">
        <input value="Submit" type="submit">
    </form>
 
?>