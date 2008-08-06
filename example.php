<?
	include('XML/NiceTree.php');

	$xml = '<foo><bar>woo</bar><bar>yay</bar></foo>';

	$tree = new XML_NiceTree($xml);

	$bars = $tree->findMulti('foo/bar');

	print_r($bars);
?>
