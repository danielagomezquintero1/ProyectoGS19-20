<?php
session_start();
if (isset($_POST['submitPayment'])) {
 
    $amount = $_POST['amount']; 
    $concept = $_POST['concept'];
    $order = date('ymdHis');
    ?>
 
    <div class="loading">Un momento, por favor</div>
 
    <form id="realizarPago" action="https://www.paypal.com/cgi-bin/webscr" method="post">
        <input name="cmd" type="hidden" value="_cart" />
        <input name="upload" type="hidden" value="1" />
        <input name="business" type="hidden" value="danielagomezquintero99@paypal.com" />
        <input name="shopping_url" type="hidden" value="https://www.jose-aguilar.com/scripts/php/pago-con-paypal/" />
        <input name="currency_code" type="hidden" value="EUR" />
        <input name="return" type="hidden" value="https://www.jose-aguilar.com/scripts/php/pago-con-paypal/confirmation.php" />
        <input name="notify_url" type="hidden" value="https://www.jose-aguilar.com/scripts/php/pago-con-paypal/ipn.php" />
 
        <input name="rm" type="hidden" value="2" />
        <input name="item_number_1" type="hidden" value="<?php echo $order; ?>" />
        <input name="item_name_1" type="hidden" value="<?php echo $concept; ?>" />
        <input name="amount_1" type="hidden" value="<?php echo $amount; ?>" />
        <input name="quantity_1" type="hidden" value="1" /> 
 
    </form>
    <script>
    $(document).ready(function () {
        $("#realizarPago").submit();
    });
    </script>
<?php
}   
?>