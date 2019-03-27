<?php
//lfh
 $mysqli = new mysqli("localhost", "root", "123456",'imooc'); 
 /*
$pid=0;
 $result = $mysqli->query('select * from deepcate where pid='.$pid);
	while($res=$result->fetch_assoc()){
		print_r($res['catename']);
		echo '<br>';
	}*/
 //组装一个数组
 $a=[];
function getList($pid=0,$spac=-1){
	//$a = array();
	$spac++;
	//global $a;
	static $a;
	//$a=[];
	//global $result;
	global $mysqli;
	$result = $mysqli->query('select * from deepcate where pid='.$pid);
	while($res = $result->fetch_assoc()){
		$a[] = str_repeat('|--',$spac).$res['catename'];
		getList($res['id'],$spac);
	}		
	return $a;
}
$rs = getList();
//print_r($rs);
function displayCate($rs){
	$str='';
	$str .= '<select>';
	foreach($rs as $k=>$v){
		$str .= '<option>'.$v.'</option>';
	}
	$str .= '</select>';
	return $str;
}
//echo displayCate($rs);
function displayCate2($rs){
	echo '<select>';
	foreach($rs as $k=>$v){
		echo '<option>'.$v.'</option>';
	}
	echo '</select>';
}
displayCate2($rs);
//displayCate();
/*
echo '<pre>';
print_r(getList(0));
 */
 
 
 
 
 
 
 
 
 
 
 
 /*
    if(!$mysqli)  { 
        echo"database error"; 
    }else{ 
        echo"php env successful"; 
    } 
*/
    $mysqli->close(); 
/*
$i=1;
function deeploop(){
    global $i;
    echo $i;
    $i++;
    if($i< 10){
        deeploop($i);
    }
}

deeploop();
*/
