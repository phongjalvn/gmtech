<?
define( '_JEXEC', 1 );
define('JPATH_BASE', dirname(__FILE__).'/../../' );
define( 'DS', DIRECTORY_SEPARATOR );
require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );

$mainframe =& JFactory::getApplication('site');
$db		=& JFactory::getDBO();
$user = &JFactory::getUser();
$aid = $user->get('aid');
jimport('joomla.filesystem.file');
$config	=& JFactory::getConfig();
$searchword = addslashes(trim($_GET['search']));
$catlimit = addslashes(trim($_GET['catlimit']));
$prolimit = addslashes(trim($_GET['prolimit']));

if($searchword){
/**Get Itemid***/
$sql="SELECT id FROM #__menu WHERE link LIKE '%index.php?option=com_k2%' and published=1 and sublevel=0" ;
$db->setQuery( $sql );
$itemid = $db->loadResult('id');
/**end**/
$query1 = 'SELECT id, name, description, image FROM #__k2_categories'
		. ' WHERE published = 1 AND trash = 0 AND name LIKE \'%'.$searchword.'%\' '
		//. ' OR description LIKE \'%'.$searchword.'%\' '
		. ' ORDER BY name'
		. ' LIMIT 0, '.$catlimit;

	$db->setQuery($query1);
	$results = $db->loadObjectList();
	$checkcate= count($results);
	$query = 'SELECT i.* FROM #__k2_items as i LEFT JOIN #__k2_categories c ON c.id = i.catid'
			.' WHERE i.published = 1 AND i.trash = 0 AND c.published = 1 AND c.trash = 0'
			.' AND i.title LIKE \'%'.$searchword.'%\' '
			//.' OR i.introtext LIKE \'%'.$searchword.'%\' '
			//.' OR i.fulltext LIKE \'%'.$searchword.'%\' '
			.' GROUP BY i.title'
			.' LIMIT 0, '.$prolimit;

	$db->setQuery($query);
	$loadresults = $db->loadObjectList();
	$check = count($loadresults);
	?>
{
<? if($check > 0) {?>
"items":[{"title":"Items list"}],
"product":[
			<?
			$n=0;
			foreach ($loadresults as $item)
			{
			if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_XS.jpg'))
            $item->imageXSmall = 'media/k2/items/cache/'.md5("Image".$item->id).'_XS.jpg';
			//$linkproduct=JURI::root().'../../index.php?page=shop.product_details&flypage=flypage.tpl&product_id='.$item->product_id.'&category_id='.$item->category_id.'&option=com_virtuemart&Itemid='.$itemid;
			$linkproduct=JURI::root().'../../index.php?option=com_k2&view=item&id='.$item->id.':'.$item->alias.'&Itemid='.$itemid;
			 $n++;
			if(strlen($item->introtext) > 80) {
				$introtext = substr($item->introtext,0,80).'...';
			} else {
				$introtext = $item->introtext;
			}
			?>
			<? if($check==$n) {?>
			{"name":"<? echo $item->title?>", "ahref":"<? echo $linkproduct;?>", "src":"<? echo $item->imageXSmall;?>", "description":"<? echo $introtext; ?>", "views":"<? echo $n;?>"}
			<? }else{?>
			{"name":"<? echo $item->title?>", "ahref":"<? echo $linkproduct;?>", "src":"<? echo $item->imageXSmall;?>", "description":"<? echo $introtext; ?>", "views":"<? echo $n;?>"},
			<? }?>
			<? }?>
	],
<? }else{?>
"product":[{"description":"Not Found"}],
<? }?> 
"space":[{"title":"Category"}], 
<? if($checkcate > 0) {?>
"category":[
			<?
			$m=0;
			foreach ($results as $item)
			{
			if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'categories'.DS.$item->id.'.jpg'))
            $item->catimage = 'media/k2/categories/'.$item->id.'.jpg';
			
			$linkcate=JURI::root().'../../index.php?option=com_k2&view=itemlist&layout=category&task=category&id='.$item->id.'&Itemid='.$itemid;
			 $m++;
			 if(strlen($item->description) > 80) {
				$category_description = substr($item->description,0,80).'...';
			} else {
				$category_description = $item->description;
			}
			?>
			<? if($checkcate==$m) {?>
			{"name":"<? echo $item->name?>", "ahref":"<? echo $linkcate;?>", "src":"<? echo $item->catimage;?>", "description":"<? echo $category_description; ?>", "views":"<? echo $m;?>"}
			<? }else{?>
		    {"name":"<? echo $item->name?>", "ahref":"<? echo $linkcate;?>", "src":"<? echo $item->catimage;?>", "description":"<? echo $category_description; ?>", "views":"<? echo $m;?>"},
			<? }?>
			<? }?>
			]
<? }else{?>
"category":[{"description":"<? echo "Not Found";?>"}]
<? }?>
}
<? } ?>



