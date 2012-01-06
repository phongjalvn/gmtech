<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/typo.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/joomla.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/basetemplate.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/template.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
  	<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/js/main.js" type="text/javascript" charset="utf-8"></script>
  	
	<jdoc:include type="head" />
</head>
<?php
   $menus      = &JSite::getMenu();
   $menu      = $menus->getActive();
   $pageclass   = "";
 
   if (is_object( $menu )) :
   $params = new JParameter( $menu->params );
   $pageclass = $params->get( 'pageclass_sfx' );
   endif; 
?>
<body class="<?php echo $pageclass ? htmlspecialchars($pageclass) : 'default'; ?>">
	<!-- #wrapper -->
	<div id="wrapper">
		<!-- #header -->
		<div id="header">
			<!-- #top -->
			<!-- #top -->
			<div id="top">
				<!-- #headertop -->
				<div id="headertop" class="clearfix">
					<!-- #logo -->
					<?php if($this->countModules('logo')) : ?>
					<div id="logo" class="left">						
						<jdoc:include type="modules" name="logo" style="phuonghtk" />						
					</div>
					<?php endif; ?>
					<!-- /#logo -->
					<!-- #lang -->
					<?php if($this->countModules('lang')) : ?>
					<div id="lang" class="right">				
						<jdoc:include type="modules" name="lang" style="phuonghtk" />				
					</div>
					<?php endif; ?>
					<!-- /#lang -->
					<!-- #menutop -->
					<?php if($this->countModules('menutop')) : ?>
					<div id="menutop" class="right">						
						<jdoc:include type="modules" name="menutop" style="phuonghtk" />						
					</div>
					<?php endif; ?>
					<!-- /#menutop -->
					
				</div>
				<!-- /#headertop -->
				<!-- #menu-bar -->
				<div id="menu-bar">
					<!-- #menu -->
					<?php if($this->countModules('menu')) : ?>
					<div id="menu" class="clearfix">
						
						<jdoc:include type="modules" name="menu" style="phuonghtk" />
						
					</div>
					<?php endif; ?>
					<!-- /#menu -->
					<!-- #search -->
					<?php if($this->countModules('search')) : ?>
					<div id="search">
						
						<jdoc:include type="modules" name="search" style="phuonghtk" />
						
					</div>
					<?php endif; ?>
					<!-- /#search -->
				</div>
				<!-- /#menu-bar -->
			</div>
			<!-- /#top -->
			<!-- /#top -->
			
			<!-- #banner -->
			<?php if($this->countModules('banner')) : ?>
			<div id="banner">
				
				<jdoc:include type="modules" name="banner" style="phuonghtk" />
				
			</div>
			<?php endif; ?>
			<!-- /#banner -->
		</div>
		<!-- /#header -->
		<!-- #home-content -->
		<?php if($this->countModules('contenttop')) : ?>
			<div  class="home-content clearfix">
				
				<jdoc:include type="modules" name="contenttop" style="phuonghtk" />
				
			</div>
		<?php endif; ?>
			<!-- /#home-content -->
		<!-- #main -->
		<div id="main" class="clearfix<?php if(!$this->countModules('banner')) : ?> productpage<?php endif; ?>">
			<?php if($this->countModules('left')) : ?>
			<!-- #left -->
			<div id="left">
				<jdoc:include type="modules" name="left" style="phuonghtk" />
			</div>
			<!-- /#left -->
			<?php endif; ?>
			<!-- #right -->
			<div id="right"<?php if(!$this->countModules('left')) : ?> class="noleft"<?php endif; ?>>
				<!-- #breadcrumb -->
				<?php if($this->countModules('breadcrumb')) : ?>
				<div id="breadcrumb">
					
					<jdoc:include type="modules" name="breadcrumb" style="phuonghtk" />
					
				</div>
				<?php endif; ?>
				<!-- /#breadcrumb -->
				<!-- #noidungtrang -->
							<div id="noidungtrang">
							<!-- Component -->
											<?php $searchword = JRequest::getVar('searchword', 0); ?> 
					            			<?php if($this->countModules('abc') && !$searchword) : ?>
					            			<jdoc:include type="modules" name="abc" style="none" />
					            			<?php else: ?> 
													<jdoc:include type="message" />
													<jdoc:include type="component" />
											 <?php endif; ?>
							<!-- Component -->
							</div>
							<!-- /#noidungtrang -->
			</div>
			<!-- /#right -->
		</div>
		<!-- /#main -->
		<!-- #footer -->
		<div id="footer">
			<!-- #ffooter -->
			<div id="ffooter" class="clearfix">
				<!-- #copyright -->
				<?php if($this->countModules('copyright')) : ?>
				<div id="copyright">
					
					<jdoc:include type="modules" name="copyright" style="phuonghtk" />
					
				</div>
				<?php endif; ?>
				<!-- /#copyright -->
				<!-- #luottruycap -->
				<?php if($this->countModules('luottruycap')) : ?>
				<div id="luottruycap">
					
					<jdoc:include type="modules" name="luottruycap" style="phuonghtk" />
					
				</div>
				<?php endif; ?>
				<!-- /#luottruycap -->
				
			</div>
			<!-- /#ffooter -->
		</div>
		<!-- /#footer -->
	</div>
	<!-- /#wrapper -->
</body>
</html>

