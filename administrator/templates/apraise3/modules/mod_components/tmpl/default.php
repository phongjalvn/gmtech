<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

<ul class="component-list">
<?php 
	if($this->get('ap_task') != "list_components" && ($this->_user->get('gid') >= $this->get('componentsAcl')) && $this->get('componentsAcl') != 0)
		$showChildren = $this->get('showChildren');
		echo $menu->renderComponentChildren($components, $showChildren=true);
?>		
</ul>