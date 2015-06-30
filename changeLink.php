<!--
    29/06/2015
    Author: Konstantin Azizov(kazizov@readdle.com)
    Mail me if something don't work properly
-->
<style type="text/css">
    text-size-adjust: auto;
</style>

<?php
ini_set('display_errors', 1); error_reporting(E_ALL);
    $link = $_GET["link"];

    $fileWithLink = fopen("/var/www/link", "w+") or die("Can't write link");
    fwrite($fileWithLink, $link);
    fclose($fileWithLink);
    $result=shell_exec('sh /home/pi/startBrowser.sh > /dev/null 2>&1 &'); 
    echo $result
?>

<h1>Success! Changes will be applied in few seconds</h1>
