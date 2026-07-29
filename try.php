<?php
$a=10;
$b=0;
try { 
if($b==0)
{
	throw new Exception("DIVIDING BY ZERO");
	
}
else
{
	$c=$a,$b;
	echo $c;
}
}
catch(Exception $e)
{
	echo $a->getMessage();
}
finally
{
	echo "I AM FINALLY BLOCK";
}

?>