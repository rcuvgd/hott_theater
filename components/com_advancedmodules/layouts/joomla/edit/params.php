<?php
/**
 * @package         Advanced Module Manager
 * @version         4.22.9
 *
 * @author          Peter van Westen <peter@nonumber.nl>
 * @link            http://www.nonumber.nl
 * @copyright       Copyright � 2015 NoNumber All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

defined('_JEXEC') or die;

$app = JFactory::getApplication();
$form = $displayData->getForm();

$fieldSets = $form->getFieldsets('params');

// For BC with versions < 3.2 we need to render the attribs too
$attribsFieldSet = $form->getFieldsets('attribs');

$fieldSets = array_merge($fieldSets, $attribsFieldSet);

if (empty($fieldSets))
{
	return;
}

$ignoreFieldsets = $displayData->get('ignore_fieldsets') ?: array();
$ignoreFields = $displayData->get('ignore_fields') ?: array();
$extraFields = $displayData->get('extra_fields') ?: array();

if (!empty($displayData->hiddenFieldsets))
{
	// These are required to preserve data on save when fields are not displayed.
	$hiddenFieldsets = $displayData->hiddenFieldsets ?: array();
}

if (!empty($displayData->configFieldsets))
{
	// These are required to configure showing and hiding fields in the editor.
	$configFieldsets = $displayData->configFieldsets ?: array();
}

if ($displayData->get('show_options', 1))
{
	foreach ($fieldSets as $name => $fieldSet)
	{
		if (in_array($name, $ignoreFieldsets) || (!empty($configFieldsets) && in_array($name, $configFieldsets))
				|| !empty($hiddenFieldsets) && in_array($name, $hiddenFieldsets)
				|| (isset($fieldSet->repeat) && $fieldSet->repeat == true))
		{
			continue;
		}

		if (!empty($fieldSet->label))
		{
			$label = JText::_($fieldSet->label, true);
		}
		else
		{
			$label = strtoupper('JGLOBAL_FIELDSET_' . $name);
			if (JText::_($label, true) == $label)
			{
				$label = strtoupper('COM_MODULES_' . $name . '_FIELDSET_LABEL');
			}
			$label = JText::_($label, true);
		}

		echo JHtml::_('bootstrap.addSlide', 'moduleSlide', $label, 'attrib-' . $name);

		if (isset($fieldSet->description) && trim($fieldSet->description))
		{
			echo '<p class="alert alert-info">' . $this->escape(JText::_($fieldSet->description)) . '</p>';
		}

		$displayData->fieldset = $name;
		echo JLayoutHelper::render('joomla.edit.fieldset', $displayData);

		echo JHtml::_('bootstrap.endSlide');
	}
}
else
{
	$html = array();
	$html[] = '<div style="display:none;">';
	foreach ($fieldSets as $name => $fieldSet)
	{
		if (in_array($name, $ignoreFieldsets))
		{
			continue;
		}

		if (in_array($name, $hiddenFieldsets))
		{
			foreach ($form->getFieldset($name) as $field)
			{
				echo $field->input;
			}
		}
	}
	$html[] = '</div>';

	echo implode('', $html);
}
