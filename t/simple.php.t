<?php
	#
	# $Id$
	#
	# lib_xml - A library for playing with XML
	#
	# Copyright (c) 2007-2008 Yahoo! Inc.  All rights reserved.  This library is
	# free software; you can redistribute it and/or modify it under the terms of
	# the GNU General Public License (GPL), version 2 only.  This library is
	# distributed WITHOUT ANY WARRANTY, whether express or implied. See the GNU
	# GPL for more details (http://www.gnu.org/licenses/gpl.html)
	#

	include('Flickr/Test/Straps.php');
	include('XML/NiceTree.php');

	$xml = '<foo><bar>woo</bar><bar>yay</bar></foo>';

	plan(2);

	$tree = new XML_NiceTree($xml);
	ok($tree, "Got a tree");

	$bars = $tree->findMulti('foo/bar');
	is(count($bars), 2, "Found some bars");
?>
