<!--
    29/06/2015
    Created by: Konstantin Azizov(kazizov@readdle.com)
    Mail me if something don't work properly
-->
<style type="text/css">
    text-size-adjust: auto;
</style>

<?php
    $link = $_GET["link"];

    $fileWithLink = fopen("/var/www/link", "w+") or die("Can't write link");
    fwrite($fileWithLink, $link);
    fclose($fileWithLink);
    shell_exec('sh /var/www/startBrowser.sh > /dev/null 2>&1 &'); 
?>

<h1>Success! Changes will be applied in few seconds</h1>
