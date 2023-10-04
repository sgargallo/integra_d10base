<?php

/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function integra_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Nuevo Sitio Web';
  $form['site_information']['site_mail']['#default_value'] = 'eformedia@efor.es';

  $form['admin_account']['account']['name']['#default_value'] = 'Efor';
  $form['admin_account']['account']['mail']['#default_value'] = '[usuario]@integratecnologia.es';
  $form['admin_account']['account']['pass']['#default_value'] = 'Efor.' . date("my");
  $form['admin_account']['account']['pass']['#type'] = 'textfield';
  $form['admin_account']['account']['pass']['#title'] = t('Password');

  $form['update_notifications']['enable_update_status_module']['#default_value'] = true;
}
