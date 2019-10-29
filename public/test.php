<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/10/16
 * Time: 10:02
 */
$arr = [
    1=>['gid'=>1,'num'=>2]
];


var_dump(json_encode($arr));

var_dump(json_decode(json_encode($arr)));