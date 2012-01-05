<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');
?>

<?php if (!empty($this->fields['general'])) { ?>
<table border="0" cellspacing="0" cellpadding="8">
<?php foreach ($this->fields['general'] as $field) { ?>
	<tr id="id<?php echo $field->name; ?>">
		<td><?php echo $field->body; ?></td>
	</tr>
<?php } ?>
</table>
<p class="rsfp_error" id="rsformerror0" style="display:none;"></p>
<p><input type="button" value="<?php echo $this->componentId ? JText::_('Update') : JText::_('Save'); ?>" name="componentSaveButton" onclick="processComponent('<?php echo $this->type_id; ?>')" class="rsform_btn" /></p>
<?php } ?>
{rsfsep}
<?php if (!empty($this->fields['validations'])) { ?>
<table border="0" cellspacing="0" cellpadding="8">
<?php foreach ($this->fields['validations'] as $field) { ?>
	<tr id="id<?php echo $field->name; ?>">
		<td><?php echo $field->body; ?></td>
	</tr>
<?php } ?>
</table>
<p class="rsfp_error" id="rsformerror1" style="display:none;"></p>
<p><input type="button" value="<?php echo $this->componentId ? JText::_('Update') : JText::_('Save'); ?>" name="componentSaveButton" onclick="processComponent('<?php echo $this->type_id; ?>')" class="rsform_btn" /></p>
<?php } ?>
{rsfsep}
<?php if (!empty($this->fields['attributes'])) { ?>
<table border="0" cellspacing="0" cellpadding="8">
<?php foreach ($this->fields['attributes'] as $field) { ?>
	<tr id="id<?php echo $field->name; ?>">
		<td><?php echo $field->body; ?></td>
	</tr>
<?php } ?>
</table>
<p class="rsfp_error" id="rsformerror2" style="display:none;"></p>
<p><input type="button" value="<?php echo $this->componentId ? JText::_('Update') : JText::_('Save'); ?>" name="componentSaveButton" onclick="processComponent('<?php echo $this->type_id; ?>')" class="rsform_btn" /></p>
<?php } ?>