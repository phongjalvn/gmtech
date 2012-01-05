var all_scripts = document.getElementsByTagName("script");
if (all_scripts.length) {
	mt_version = ( MooTools.version < 1.2 ) ? '11' : '12';
	nn_script = all_scripts[all_scripts.length-1].src.replace('.js', '_mt'+mt_version+'.js');
	document.write('<'+'script src="'+nn_script+'" type="text/JavaScript"><'+'/script>');
}