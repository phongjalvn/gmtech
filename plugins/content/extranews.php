<?php

// Check to ensure this file is included in Joomla!
defined( '_JEXEC' ) or die();
jimport( 'joomla.event.plugin' );

$enabled = JPluginHelper :: isEnabled  ('content','extranews');   
/**
 * Content Plugin
 *
 * @package    Joomla
 * @subpackage Content
 * @since      1.5
 */

class plgContentExtranews extends JPlugin
{
   /**
    * Constructor
    *
    * For php4 compatability we must not use the __constructor as a constructor for plugins
    * because func_get_args ( void ) returns a copy of all passed arguments NOT references.
    * This causes problems with cross-referencing necessary for the observer design pattern.
    *
    * @param object $subject The object to observe
    * @param object $params  The object that holds the plugin parameters
    * @since 1.5
    */
   function plgContentExtranews( &$subject, $params )
	{  
      parent::__construct( $subject, $params );
      $this->_plugin =& JPluginHelper::getPlugin('content','extranews');
      $this->params =& new JParameter( $this->_plugin->params );
        // Joomla's plugin-installer does not handle separate language files for
        // backend and frontend if installing a plugin (kind of silly, as it works
        // with components). Instead, it installs the language files always into the
        // JPATH_ADMINISTRATOR/languages. Therefore we have to specify this path
        // explicitely.
        //JPlugin::loadLanguage('plg_content_extranews2', JPATH_ADMINISTRATOR);   //Call language file 
        if (JPlugin::loadLanguage('plg_content_extranews')) ;  //Call language file
        else JPlugin::loadLanguage('plg_content_extranews', JPATH_ADMINISTRATOR);
        //JPlugin::loadLanguage('plg_content_extranews2',JPATH_ROOT . DS . 'plugins'. DS .'content'. DS .'extranews2'. DS .'i18n'. DS ); //Call language file        
      //JURI::base() va JURI::base(true),
      //JURI::base() -> http://xahoihoctap.net/webs/joomla15/
      //JURI::base(true) -> /webs/joomla15/
	}
	
	function getTitle($paramname,$articleid){
		$db      =& JFactory::getDBO();
		$query = ' SELECT sectionid FROM #__content WHERE id = ' . $articleid;
		$db->setQuery($query);
		$secid = $db->loadResult();
		$data = $this->params->get($paramname);		
		$sectionlist = split(',',$data);
		
		$sections = array();
		if ( is_array ($sectionlist) ) {
			foreach ( $sectionlist as $section ) {
				$data = split(':',$section);
				$sections[$data[0]] = $data[1];
			}
		}		
		return $sections[$secid];
	}
	
	
   /**
    * prepare content method
    *
    * Method is called by the view
    *
    * @param   object      The article object.  Note $article->text is also available
    * @param   object      The article params
    * @param   int         The 'page' number
    */
function onAfterDisplayContent ( &$article, &$params, $limitstart ) //onAfterDisplayContent onPrepareContent
   {
      $db      =& JFactory::getDBO(); //Ket noi CSDL
      $user    =& JFactory::getUser(); //Thong tin user
      $option     = JRequest::getCmd('option'); //JRequest::getCmd
      $view    = JRequest::getCmd('view'); //JRequest::getCmd
      $plugin_enabled = $this->params->get('enabled','1');

      $config =& JFactory::getConfig();
      $offset = $config->getValue('config.offset');
      $aid     = $user->get('aid', 0);
      //$datetool = & new JDate();//strtotime("now"),
      //$datetool->setoffset($offset);
      //$content = ''.$datetool->toFormat()." ".$offset."<br/>".strtotime("now")."<br/>";

   if($plugin_enabled=="1" && $option=="com_content" && $view=="article"){
         
/******************Plugin Parameters*******************************/   

      $catid_list_rsform= $this->params->get( 'catid_list_rsform', '-');
      if($catid_list_rsform=='-') $catid_list_rsform = '';
      $sectionid_list_rsform= $this->params->get( 'sectionid_list_rsform', '-');
      if($sectionid_list_rsform=='-')$sectionid_list_rsform='';
      $catid_list_rsform = explode( ',', trim($catid_list_rsform));
      $sectionid_list_rsform = explode( ',', trim($sectionid_list_rsform));
      $id_list_rsform= $this->params->get( 'id_list_rsform', '-');
      if($id_list_rsform =='-') $id_list_rsform='';
      $id_list_rsform = explode( ',', trim($id_list_rsform));
      
      $catid_list= $this->params->get( 'catid_list', '-');
      if($catid_list=='-') $catid_list = '';
      $sectionid_list= $this->params->get( 'sectionid_list', '-');
      if($sectionid_list=='-')$sectionid_list='';
      $catid_list = explode( ',', trim($catid_list));
      $sectionid_list = explode( ',', trim($sectionid_list));
      $id_list= $this->params->get( 'id_list', '-');
      if($id_list =='-') $id_list='';
      $id_list = explode( ',', trim($id_list));

      $title_chars= $this->params->get( 'char_count_title', 50);
      $relateditemscount = intval( $this->params->get( 'relateditemscount', 5) );
      $neweritemscount = intval( $this->params->get( 'neweritemscount', 5 ) );
      $oderitemscount = intval( $this->params->get( 'oderitemscount', 5 ) );
      $showdate = (int)$this->params->get( 'showdate', 1 );
      $showdateformat = $this->params->get( 'showdateformat', 'd/m/Y H:i' );
      $linkedtitleformat = $this->params->get( 'linkedtitleformat', '%1$s - %2$s' );
      
      $textbefore = $this->params->get( 'textbefore', '');
      $textafter = $this->params->get( 'textafter', '');
       
      $blockalign = $this->params->get( 'blockalign', 'left');
      $blockwidth = $this->params->get( 'blockwidth', '80%');
      $marginleft = $this->params->get( 'marginleft', '5%');
      $marginright = $this->params->get( 'marginright', '5%');

      //Tooltip
      $enable_tooltip     = $this->params->get( 'enable_tooltip','yes' );
      $script_tooltip     = $this->params->get( 'script_tooltip', 0 ); // 0:Joomla mootool 1:Overlib
      $scriptIE6_tooltip     = $this->params->get( 'scriptIE6_tooltip', 0 ); // 0:Dhtml tooltip 1:Overlib
      $load_mootools     = $this->params->get( 'load_mootools','no' );
      $tooltip_desc_chars  = $this->params->get( 't_char_count_desc', 150 );
      $tooltip_desc_images= $this->params->get( 'tooltip_desc_images', 'yes' );

      $img_width = $this->params->get( 'img_width', 80 );
      $img_height = $this->params->get( 'img_height', 80 );
      $tooltip_title_chars= $this->params->get( 't_char_count_title', 50 );

      $tooltip_width      = $this->params->get( 'tooltip_width','250' );
      $tooltip_height     = $this->params->get( 'tooltip_height','100' );
      $tooltip_bgcolor    = $this->params->get( 'tooltip_bgcolor','#24537d' );
      $tooltip_capcolor   = $this->params->get( 'tooltip_capcolor','#ffffff' );
      $tooltip_fgcolor    = $this->params->get( 'tooltip_fgcolor','#E1F0FF' );
      $tooltip_textcolor  = $this->params->get( 'tooltip_textcolor','#000000' );
      $tooltip_border     = $this->params->get( 'tooltip_border','1' );
      $img_width      = $this->params->get( 'img_width', 120 ); 
      $showtext_before_n_after = 0;
//JPATH_SITE, JPATH_ROOT, and JPATH_BASE Đường dẫn của host khong phia la www.xahoihoctap.net     


      $br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser they use.
      if(ereg("msie", $br) && !ereg("msie 7.0", $br)){ //IE 6.x
                        $script_tooltip = $scriptIE6_tooltip;
                }       
/****************************************************************************/
                $doc =& JFactory::getDocument();
                global $mainframe;
                $url = $mainframe->isAdmin() ? $mainframe->getSiteURL() : JURI::base();
                $doc->addStyleSheet($url.'plugins/content/extranews/css/extranews.css');                
   if ($enable_tooltip == 'yes') {
   if($script_tooltip==1) $overlib = 1; else $overlib = 0;
      $tooltip_title_chars2 = ($tooltip_title_chars == 0)? 999 : $tooltip_title_chars;

      switch ($script_tooltip) {
      case 0: //Joomla mootool
           $initial_tooltip = "
         window.addEvent('load', function(){ 

         var JTooltips = new Tips($$('.Tips2'), { 
            maxTitleChars: 100, fixed: false
            }); 
         var Tips2 = new Tips($$('.tooltip_extranews'), { maxTitleChars: " . $tooltip_title_chars2 . ", fixed: false}, {
            initialize:function(){
               this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 500, wait: false}).set(0);
            },
            onShow: function(toolTip) {
               this.fx.start(1);
            },
            onHide: function(toolTip) {
               this.fx.start(0);
            }
         });
            });";
                $initial_tooltip_css ='div.tool-tip { max-width: '.$tooltip_width.'px;}';
      if(($load_mootools = 'yes') && !$mainframe->get('loadMootoolslib')) {
         $doc->addScript($url.'plugins/content/extranews/js/mootools.js');
                  $mainframe->set( 'loadMootoolslib', true ); 
      }

      $doc->addStyleDeclaration($initial_tooltip_css);
      $doc->addScriptDeclaration($initial_tooltip);

      break;

      case 1: //Overlib
      if ( !$mainframe->get( 'loadOverlib' ) ) {
      $doc->addScript($url.'includes/js/overlib_mini.js');
      $doc->addScript($url.'includes/js/overlib_hideform_mini.js');
      $mainframe->set( 'loadOverlib', true );
         }
      break;

      default:
                if ( !$mainframe->get( 'loadDhtmllib' ) ) {
                $doc->addScript($url.'plugins/content/extranews/js/dhtmltooltip.js');
                $doc->addStyleSheet($url.'plugins/content/extranews/css/dhtmltooltip.css');
                $mainframe->set( 'loadDhtmllib', true ); 
                           }
         }
   }

/****************************************************************************/

      $contentConfig = &JComponentHelper::getParams( 'com_content' );
      $access     = !$contentConfig->get('shownoauth');

      $nullDate   = $db->getNullDate();
      jimport('joomla.utilities.date');
      $date = new JDate();
      $now = $date->toMySQL();
      
      $the_id = 0;

      $where      = 'a.state = 1'
         . ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
         . ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
         ;

   
/************Get content Information****************************/
      //$the_id = (int) JRequest::getCmd('id') ; //::getVar
      $the_id = (int) $article->id; //ok
      $catquery = 'select catid, sectionid, created, modified,  metakey from #__content where id='. $the_id;
      $db->setQuery($catquery,0,1); //Lay gia tri cua categiry co chua id article nay
      //$db->loadResult();
      $tamthoi = $db->loadObjectList();
      $likes = array();    

      foreach ($tamthoi as $tamthoi_){
         $the_catid = (int)$tamthoi_->catid;
         $the_sectionid = (int)$tamthoi_->sectionid;
         $catCondition = ' AND cc.id='. $tamthoi_->catid;
         $acreated = $tamthoi_->created;
         $modified = $tamthoi_->modified;
   if ($metakey = trim( $tamthoi_->metakey )) {
      // explode the meta keys on a comma
      $keys = explode( ',', $metakey );
      // assemble any non-blank word(s)
      foreach ($keys as $key) {
         $key = trim( $key );
         if ($key) {
            $likes[] = $db->getEscaped( $key );
         }
      }
   }
      break; //thoat vong lap
      }//end of foreach


      // Ordering
      switch ($params->get( 'queryby'))
      {
         case 'i_dsc':
            $ordering      = ' a.id DESC';
            $ordering2     = ' a.id ASC';
            $ordering3     = ' b.id DESC';
            $where_cond_older = ' AND a.id < '. $the_id;
            $where_cond_newer = ' AND a.id > '. $the_id;
            break;
         case 'c_dsc':
         default:
            $ordering      = ' a.created DESC';
            $ordering2     = ' a.created ASC';
            $ordering3     = ' b.created DESC';
            $where_cond_older = ' AND a.created < '. $db->Quote($acreated);
            $where_cond_newer = ' AND a.created > '. $db->Quote($acreated);
            break;
      }

/*************
Kiem tra xem co thuoc vao list id, cat_id va section_id khong
*****************/
      if (in_array((int)$the_sectionid, $sectionid_list) || in_array((int)$the_catid, $catid_list) || in_array((int)$the_id, $id_list)) return;
      //Thoat va khong lam gi ca, exit and do nothing    
      /*
      foreach ( $sectionid_list as $sectionid_item ) if((int)$sectionid_item == (int)$the_sectionid) $disableshow = true;
      foreach ( $catid_list as $catid_item ) if((int)$catid_item == (int)$the_catid) $disableshow = true;
      foreach ( $id_list as $id_item ) if((int)$id_item == (int)$the_id) $disableshow = true;
      if($disableshow) return; //Thoat va khong lam gi ca, exit and do nothing
      */
/*************
Kiem tra xem co thuoc vao list cat_id va section_id khong
*****************/

      //the_id - the id of current article
      //$acreated - the created date of current article
      //$catCondition - the category of the current article

/************Related news Items***********************/
      //$relateditemscount, $neweritemscount, $oderitemscount
//       . "\n AND ( a.metakey LIKE '%" . implode( "%' OR a.metakey LIKE '%", $likes ) ."%' )"
      // Content Items only
    $where_ids_related = "";
  if (in_array((int)$the_sectionid, $sectionid_list_rsform) || in_array((int)$the_catid, $catid_list_rsform) || in_array((int)$the_id, $id_list_rsform))
  $content = '';
  else $content = '{rsform 3}';
  $apre_next = '';
if (count( $likes ) && ($relateditemscount>0)) {
      $query = 'SELECT a.*, ' .
         ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
         ' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
         ' FROM #__content AS a' .
         ' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
         ' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
         ' WHERE '. $where .' AND s.id > 0 AND '. 'a.id != ' . $the_id .
         "\n AND ( a.metakey LIKE '%" . implode( "%' OR a.metakey LIKE '%", $likes ) ."%' )" .
         ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid .
         ' AND s.published = 1' .
         ' AND cc.published = 1' .
         ' ORDER BY '. $ordering; //echo $query;
      $db->setQuery($query, 0, $relateditemscount);
      $rows = $db->loadObjectList();       

        //$content = '';
/**********************************************=================***/
   $ids_related = '0';

  if (count($rows) AND JRequest::getVar('lang') == 'en') {
 $content .= '<div id="relateditemtitle">'. $this->getTitle('LBL_RELATEDNAME_EN',$article->id) .'</div><ul id="relateditemlistnews">'."\n";
  foreach ( $rows as $row ){
   $content .= "<li>";
   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
   if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
   //$tip_desc_str = JFilterOutput::cleanText($row->introtext);

   if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      //$linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//
	  $linked_title_display ="";

   }
    else $linked_title_display = '<a href="'.$link.'">'.$title_str.'</a>';  
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display;
   $content .= "</li>\n";   
   $ids_related .= ',' . $row->id;
   }
 $showtext_before_n_after = 1;
  $content .= '</ul><div style="clear:both;"></div>'."\n"; 
  }
  else{
  
  $content .= '<div id="relateditemtitle">'. $this->getTitle('LBL_RELATEDNAME',$article->id) .'</div><ul id="relateditemlistnews">'."\n";
  foreach ( $rows as $row ){
   $content .= "<li>";
   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
   if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
   //$tip_desc_str = JFilterOutput::cleanText($row->introtext);

   if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      $linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//

   }
   else $linked_title_display = '<a href="'.$link.'">'.$title_str.'</a>';  
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display;
   $content .= "</li>\n";   
   $ids_related .= ',' . $row->id;     
          }//foreach  
  
      $showtext_before_n_after = 1;
  $content .= '</ul><div style="clear:both;"></div>'."\n";  
  }
  
  
   $ids_related = '('. $ids_related .')';
   $where_ids_related = "\n AND a.id NOT IN $ids_related";
   } //if (count( $likes )) 
/****************************************************************************/


/************Newer news Items***********************/
      //$relateditemscount, $neweritemscount, $oderitemscount 
      // Content Items only

if ($neweritemscount>0) {
      // Content Items only
      $neweritemscount = $neweritemscount + 1;
      $query = "SELECT * FROM (".
         ' SELECT a.*, ' .
         ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.

         ' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
         ' FROM #__content AS a' .
         ' INNER JOIN #__categories AS cc ON cc.id = a.catid' .


         ' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
         ' WHERE '. $where .' AND s.id > 0 AND '. 'a.id != ' . $the_id . $where_cond_newer .
         ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid .
         ($catCondition). $where_ids_related .
         ' AND s.published = 1' .
         ' AND cc.published = 1' .
         ' ORDER BY '.$ordering2.' limit '. $neweritemscount .
         ") as b ORDER by $ordering3"; //echo $query;
         
      $db->setQuery($query);
      $rows = $db->loadObjectList();   

      $afirst = 0;
      if(count($rows)==$neweritemscount) $afirst = 1;     
   
 if (count($rows) AND JRequest::getVar('lang') == en) {
 $content .= '<div id="neweritemtitle">'. $this->getTitle('LBL_NEWERNAME_EN',$article->id).'</div><ul id="neweritemlistnews">'."\n"; 
  foreach ( $rows as $row ){
  if($afirst==0){
   $content .= "<li>";
   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
   if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
   
   if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      $linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//

   }
   else $linked_title_display = '<a href="'.$link.'" title="'.$row->title.'">'.$title_str.'</a>';
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display; 
   //$content .= sprintf($linkedtitleformat, $date_display, $linked_title_display);
   $content .= "</li>\n";   

     }
	 else { 
      $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
      $apre_next = '<span class="extranews_priviuospage"><a href="'. $link . '" title="'.$row->title.'">'.$this->getTitle('LBL_PREV_PAGE',$article->id).'</a></span>';
      $afirst = 0;
      }
	 
  }
   $showtext_before_n_after = 1;
    $content .= '</ul><div style="clear:both;"></div>'."\n"; 
  }
  else if(count($rows)==0){
        
    }
  else{
           $content .= '<div id="neweritemtitle">'. $this->getTitle('LBL_NEWERNAME',$article->id).'</div><ul id="neweritemlistnews">'."\n"; 
    

 foreach ( $rows as $row ){


    if($afirst==0){
   $content .= "<li>";
   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
   if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
   
   if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      $linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//

   }
   else $linked_title_display = '<a href="'.$link.'" title="'.$row->title.'">'.$title_str.'</a>';
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display; 
   //$content .= sprintf($linkedtitleformat, $date_display, $linked_title_display);
   $content .= "</li>\n";   

     }else { 
      $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
      $apre_next = '<span class="extranews_priviuospage"><a href="'. $link . '" title="'.$row->title.'">'.$this->getTitle('LBL_PREV_PAGE',$article->id).'</a></span>';
      $afirst = 0;
      }
      
       }
      $showtext_before_n_after = 1;
    $content .= '</ul><div style="clear:both;"></div>'."\n";  
  }
}//if(count newer items)       

/****************************************************************************/
 
/************Older news Items***********************/
      // Content Items only
      //$ordering = 'a.created ASC'; //Newer news items

	  echo "<div class='older_relate_article'>";
if ($oderitemscount>0) {      
      $oderitemscount = $oderitemscount + 1;
      $query = 'SELECT a.*, ' .
         ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
         ' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
         ' FROM #__content AS a' .
         ' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
         ' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
         ' WHERE '. $where .' AND s.id > 0 AND '. 'a.id != ' . $the_id . $where_cond_older .
         ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid .
         ($catCondition). $where_ids_related .
         ' AND s.published = 1' .
         ' AND cc.published = 1' .
         ' ORDER BY '. $ordering; //echo $query;
      $db->setQuery($query, 0, $oderitemscount);
      $rows = $db->loadObjectList();       

    
/**********************************************=================***/


      $alast = 9999999;
      if(count($rows)==$oderitemscount) $alast = $oderitemscount; 
   $i = 0;
  if (count($rows)>0 AND JRequest::getVar('lang') == 'en') {
  $content .= '<div id="olderitemtitle">'. $this->getTitle('LBL_OLDERNAME_EN',$article->id) .'</div><ul id="olderitemlistnews">'."\n";
  
   foreach ( $rows as $row ){
    $i++;
      if($i != $alast){
   $content .= "<li>";
	
   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
    if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
    if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      $linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//
   }
  else $linked_title_display = '<a href="'.$link.'" title="'.$row->title.'">'.$title_str.'</a>';
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display; 
   //$content .= sprintf($linkedtitleformat, $date_display, $linked_title_display);
   $content .= "</li>\n"; 
    
  } else {
      $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
      $apre_next = $apre_next . '<span class="extranews_nextpage"><a href="'. $link . '" title="'.$row->title.'">'.$this->getTitle('LBL_NEXT_PAGE',$article->id).'</a></span>';
      break;
      }
   	}
	$showtext_before_n_after = 1;  
   $content .= '</ul><div style="clear:both;"></div>'."\n";
   
  
  }
  else if(count($rows)==0){
        
    }
  else{
           $content .= '<div id="olderitemtitle">'. $this->getTitle('LBL_OLDERNAME',$article->id).'</div><ul id="olderitemlistnews">'."\n";	
    
  foreach ( $rows as $row ){
   $i++;
      if($i != $alast){
   $content .= "<li>";

   $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
   if ($tooltip_desc_images=='yes') $image = $this->getImage($row, "left", 1, 1, $img_width , $img_height ); 
      else $image = '';
   $date_display = '';
   if($showdate) $date_display = '<span class="extranews_date">'.$this->mygetdate($row->created,$offset,$showdateformat).'</span>';

   $title_tip_str = ($tooltip_title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$tooltip_title_chars); 
   $title_str = ($title_chars == 0)? strip_tags($row->title) : $this->chars(strip_tags($row->title),$title_chars);
   $tip_desc_str = ($tooltip_desc_chars == 0)? strip_tags($row->introtext):$this->chars(strip_tags($row->introtext), $tooltip_desc_chars);
   $tip_desc_str = $this->removetag($this->strip_newline($tip_desc_str));
   
   if ($enable_tooltip == 'yes')  
   switch ($script_tooltip) {
   case 0:
      $linked_title_display = '<span class="tooltip_extranews" Title="'.htmlspecialchars($title_tip_str).
      '::'.htmlspecialchars($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>").'"><a href="'.$link.'">'.$title_str."</a>".'</span>';
   break;
   case 1:
      $text = htmlspecialchars(addslashes($image . "<div class='extranews_tooltip'>". $tip_desc_str."</div>"));
      //$text = htmlspecialchars(addslashes($image));

      $tooltip_title = htmlspecialchars(addslashes($title_tip_str));
      $tooltip = " onmouseover=\"overlib('".$text."', CAPTION, '".$tooltip_title."', FGCOLOR, '".$tooltip_fgcolor."', BGCOLOR, '".$tooltip_bgcolor."', WIDTH,'".$tooltip_width."', HEIGHT,'".$tooltip_height."', BORDER, ".$tooltip_border.", CAPCOLOR, '".$tooltip_capcolor."', TEXTCOLOR, '".$tooltip_textcolor."'".$tooltip_extra_invocation_string.");\" onmouseout=\"return nd();\" "; //assign mouseover text to put in title hyperlink
      $linked_title_display = '<a '.$tooltip.' href="'.$link.'">'.$title_str."</a>";
   break;
   default:
      //DHTML
      $linked_title_display = '<a href="'.$link.'" onmouseover="showttip(\''.addslashes(htmlspecialchars('<strong>'.strip_tags($row->title).'</strong><br/>'.$image . "<div class='extranews_tooltip'>".$tip_desc_str."</div>")).'\', '.$tooltip_width.');" onmouseout="hidettip();">'.$title_str."</a>";//

   }
   else $linked_title_display = '<a href="'.$link.'" title="'.$row->title.'">'.$title_str.'</a>';
   $content .= ($showdate)?JText::sprintf($linkedtitleformat, $date_display, $linked_title_display):$linked_title_display; 
   //$content .= sprintf($linkedtitleformat, $date_display, $linked_title_display);
   $content .= "</li>\n";   
    
   } else {
      $link   = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid.":testset"));
      $apre_next = $apre_next . '<span class="extranews_nextpage"><a href="'. $link . '" title="'.$row->title.'">'.$this->getTitle('LBL_NEXT_PAGE',$article->id).'</a></span>';
      break;
      }
   }//for each  
  
      $showtext_before_n_after = 1;  
   $content .= '</ul><div style="clear:both;"></div>'."\n";  
  }
 }// if (count of older items)
  echo "</div>";
 
   $content .= "<div id=\"prev_next_buttom\" align=\"center\">".$apre_next."</div>";
/****************************************************************************/
      $blockalign = $this->params->get( 'blockalign', 'left');    
      $marginleft = $this->params->get( 'marginleft', '5%');
      $marginright = $this->params->get( 'marginright', '5%');

    $article->text .= '<div style="clear:both;"></div><div style="margin-left:'.$marginleft.'; margin-right:'.$marginright.'; text-align:left;">';
	
      if($showtext_before_n_after) $article->text .= $textbefore.$content.'<div style="clear:both;"></div>'.$textafter;
    $article->text .= "</div>";
   } //Plugin On/off
   else return;

   }// End Function

/******************************************/
function mygetdate($date,$offset,$showdateformat){
//$date - date time, $offset - time offset, $showdateformat - the date format
   if($offset==0)return date("$showdateformat",strtotime($date));
   $_date = new DateTime($date);
   if(abs($offset) == 1)$offset_t = ($offset > 0)?'+1 hour':'-1 hour';
   else $offset_t = ($offset > 0)?'+'.$offset.' hours':'-'.abs($offset).' hour';
   $_date -> modify($offset_t);
   return date("$showdateformat",strtotime($_date->format('Y-m-d H:i:s')));
}

function chars($text_, $charnum,$more=''){
$text_ = JString::trim($text_);
if(($charnum >0) && (JString::strlen($text_) > $charnum)) return JString::substr($text_,0,$charnum).(($more=='')?"…":$more);
else return $text_;
}

//pch 26.9.2008 also strip new lines \r\n from introtext
function strip_newline($text){
//strip \r\n
$order = array("\r\n","\n","\r");
//$replace = '<br />';
$replace = ' ';
$text=str_replace($order,$replace,$text);
return $text;
}
function getImage( &$row, $align, $autoresize, $showimage, $width = 0, $height = 0 ) {
         $regex = "@\<img.+src\s*=\s*\"([^\"]*)\"[^\>]*\>@";
         preg_match ($regex, $row->introtext, $matches);
         if(!count($matches)) preg_match ($regex, $row->fulltext, $matches);
         $images = (count($matches)) ? $matches : array();
         $image = '';
         if (count($images)) $image = $images[1];
        $align = $align?"align=\"$align\"":"";
         if ($image && $showimage) {
            if ($autoresize && function_exists('imagecreatetruecolor') 
               && ($image1 = $this->pImage ( $image, $width, $height ))) {
                  $image = "<img src=\"".$image1."\" alt=\"{$row->title}\" $align style=\"margin: 0px 6px;\"/>";
            } else {
               $width = $width?("width:$width"."px;"):"";
               $height = $height?("height:$height"."px;"):"";
               $style ='style="'.$width.' '.$height.' margin: 0px 6px;"';
               $image = "<img src=\"".$image."\" alt=\"{$row->title}\" $style $align />";
            }
         } else $image = '';
         // clean up globals
         return $image;
      }


function pImage ( &$img, $width, $height ) {
         if(!$img) return;
         $img = str_replace(JURI::base(),'',$img);
         $img = rawurldecode($img);
         $imagesurl = (file_exists(JPATH_SITE .'/'.$img)) ? $this->resizeImage($img,$width,$height) :  '' ;
         return $imagesurl;
      }
      
function removetag($string){
      $pattern = "|{[^}]+}(.*){/[^}]+}|U";
      $replacement = '';
      return preg_replace($pattern, $replacement, $string);
}

function resizeImage($image,$max_width,$max_height){
         $path = JPATH_SITE;
         $sizeThumb = getimagesize(JPATH_SITE.'/'.$image);
         $width = $sizeThumb[0];
         $height = $sizeThumb[1];
         if(!$max_width && !$max_height) {
        $max_width = $width;
        $max_height = $height;
      }else{
        if(!$max_width) $max_width = 1000;
        if(!$max_height) $max_height = 1000;
      }

         $x_ratio = $max_width / $width;
         $y_ratio = $max_height / $height;
         if (($width <= $max_width) && ($height <= $max_height) ) {
            $tn_width = $width;
            $tn_height = $height;
         } else if (($x_ratio * $height) < $max_height) {
            $tn_height = ceil($x_ratio * $height);
            $tn_width = $max_width;
         } else {
            $tn_width = ceil($y_ratio * $width);
            $tn_height = $max_height;
         }
         // read image
         $ext = strtolower(substr(strrchr($image, '.'), 1)); // get the file extension
         $rzname = strtolower(substr($image, 0, strpos($image,'.')))."_{$tn_width}_{$tn_height}.{$ext}"; // get the file extension
         $resized = $path.'/images/resized/'.$rzname;
         if(file_exists($resized)){
            $smallImg = getimagesize($resized);
            if (($smallImg[0] <= $tn_width && $smallImg[1] == $tn_height) ||
               ($smallImg[1] <= $tn_height && $smallImg[0] == $tn_width)) {
                  return JURI::base()."images/resized/".$rzname;
            }
         }
        if(!file_exists($path.'/images/resized/')){
                if(!mkdir($path.'/images/resized/',0755)) return '';
                $ffilename = $path.'/images/resized/index.html';
                if(!file_exists($ffilename)){
                        $filecontent = '<html><body bgcolor="#FFFFFF"></body></html>';
                        $handle = fopen($ffilename, 'x+');
                        fwrite($handle, $filecontent);
                        fclose($handle);  
                }
        }

         $_image = strtolower($image); // make the folders
         $folders = explode('/',$_image);         
         $tmppath = $path.'/images/resized/';
         for($i=0;$i < count($folders)-1; $i++){
        if(!file_exists($tmppath.$folders[$i]) && !mkdir($tmppath.$folders[$i],0755)) return '';

        $tmppath = $tmppath.$folders[$i].'/';
        //make a blank content
        $ffilename = $tmppath . 'index.html';
        if(!file_exists($ffilename)){
                $filecontent = '<html><body bgcolor="#FFFFFF"></body></html>';
                $handle = fopen($ffilename, 'x+');
                fwrite($handle, $filecontent);
                fclose($handle);  
        }       
         }
         switch ($ext) {
            case 'jpg':     // jpg
            case 'jpeg':    //jpeg
               $src = imagecreatefromjpeg(JPATH_SITE.'/'.$image);
               break;

            case 'png':     // png
               $src = imagecreatefrompng(JPATH_SITE.'/'.$image);
               break;
            case 'gif':     // gif
               $src = imagecreatefromgif(JPATH_SITE.'/'.$image);
               break;
            default:
         }
         $dst = imagecreatetruecolor($tn_width,$tn_height);
         $tmp = imageantialias ($dst, true);
         imagecopyresampled ($dst, $src, 0, 0, 0, 0, $tn_width, $tn_height, $width, $height);
         imagejpeg($dst, $resized, 90); // write the thumbnail to cache as well...
         return JURI::base() ."images/resized/".$rzname;
      }
} // End Class


?>