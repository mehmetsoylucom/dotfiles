<?php

mysql_connect("localhost","root","123123");

mysql_select_db("test");

// domain dizisi

$domains = array(
        "domain.com"
);

$i = 0;
// diziyi açıyor basıyor configle
asort($domains);

foreach ( $domains as $d ){

$i++;
$imname= str_replace('.','_',$d);


echo "
# $i - $d
server {
	listen ".$d.":80;
	root /var/www/" . $imname . ";
	index index.php index.html index.htm;
	server_name $d www.$d;

	include /etc/nginx/ci_host;
}

";

@mkdir ("/var/www/".$imname) ;

exec("rm /var/www/$imname");


file_put_contents ("/var/www/$imname/index.php","$imname");

@mysql_query("CREATE DATABASE " . $imname );

@mysql_select_db($imname);


}
exec ("service nginx restart");

