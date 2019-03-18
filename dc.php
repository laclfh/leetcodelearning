<?php


//$str='   hello  j';
//echo trim($str);

/*
//connect mysql
$host = 'localhost';
$root='root';
$pass = '123456';
$dbname = 'imooc';
$mysqli = new mysqli($host,$root,$pass,$dbname);
$pid=0;
$sql = 'select * from deepcate where pid='.$pid;
$res = $mysqli->query($sql);
while($rs=$res->fetch_assoc()){
    print_r($rs);
}

$a=array();
function getList($pid=0,$spac=0){
    $spac++;
    global $a;
    $sql='select * from deepcate where pid='.$pid;
    global $mysqli;
    $res = $mysqli->query($sql);
    while($rs=$res->fetch_assoc()){
        $a[] = str_repeat('&nbsp;',$spac).'|--'.$rs['catename'];
        getList($rs['id'],$spac);
    }
    return $a;
}
$kiko = getList();
echo '<pre>';
*/
