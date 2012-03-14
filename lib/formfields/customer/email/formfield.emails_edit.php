<?php

/**
 * This file is part of the Froxlor project.
 * Copyright (c) 2010 the Froxlor Team (see authors).
 *
 * For the full copyright and license information, please view the COPYING
 * file that was distributed with this source code. You can also view the
 * COPYING file online at http://files.froxlor.org/misc/COPYING.txt
 *
 * @copyright  (c) the authors
 * @author     Froxlor team <team@froxlor.org> (2010-)
 * @license    GPLv2 http://files.froxlor.org/misc/COPYING.txt
 * @package    Formfields
 *
 */

return array(
	'emails_edit' => array(
		'title' => $lng['emails']['emails_edit'],
		'image' => 'icons/email_edit.png',
		'sections' => array(
			'section_a' => array(
				'title' => $lng['emails']['emails_edit'],
				'image' => 'icons/email_edit.png',
				'nobuttons' => true,
				'fields' => array(
					'email_full' => array(
						'label' => $lng['emails']['emailaddress'],
						'type' => 'label',
						'value' => $result['email_full']
					),
					'account_yes' => array(
						'visible' => ($result['popaccountid'] != 0 ? true : false),
						'label' => $lng['emails']['account'],
						'type' => 'label',
						//'value' => $lng['panel']['yes'].'&nbsp;[<a href="'.$filename.'?page=accounts&amp;action=changepw&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['menue']['main']['changepassword'].'</a>] [<a href="'.$filename.'?page=accounts&amp;action=delete&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['account_delete'].'</a>]'
						'value' => '<div class="btn-group"><a class="btn btn-mini" href="'.$filename.'?page=accounts&amp;action=changepw&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['menue']['main']['changepassword'].'</a> <a rel="confirm" class="btn btn-mini" href="'.$filename.'?page=accounts&amp;action=delete&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['account_delete'].'</a></div>'
					),
					'account_no' => array(
						'visible' => ($result['popaccountid'] == 0 ? true : false),
						'label' => $lng['emails']['account'],
						'type' => 'label',
						'value' => '<a class="btn btn-mini" href="'.$filename.'?page=accounts&amp;action=add&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['account_add'].'</a>'
					),
					'mail_quota' => array(
						'visible' => ($result['popaccountid'] != 0 && $settings['system']['mail_quota_enabled']),
						'label' => $lng['customer']['email_quota'],
						'type' => 'label',
						'value' => $result['quota'].' '.$lng['panel']['megabyte'].' [<a href="'.$filename.'?page=accounts&amp;action=changequota&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['quota_edit'].'</a>]'
					),
					'mail_catchall' => array(
						'label' => $lng['emails']['catchall'],
						'type' => 'label',
						//'value' => ($result['iscatchall'] == 0 ? $lng['panel']['no'] : $lng['panel']['yes']).' <a class="btn btn-mini btn-success" href="'.$filename.'?page='.$page.'&amp;action=togglecatchall&amp;id='.$result['id'].'&amp;s='.$s.'"><i class="icon-repeat"></i> '.$lng['panel']['toggle'].'</a>'
						'value' => ' <a class="btn btn-mini '.($result['iscatchall'] == 0 ? "" : "btn-success").'" href="'.$filename.'?page='.$page.'&amp;action=togglecatchall&amp;id='.$result['id'].'&amp;s='.$s.'"><i class="icon-share-alt '.($result['iscatchall'] == 0 ? "" : "icon-white").'"></i> '.($result['iscatchall'] == 0 ? $lng['panel']['no'] : $lng['panel']['yes']).'</a>'
					),
					'mail_fwds' => array(
						'label' => $lng['emails']['forwarders'].' ('.$forwarders_count.')',
						'type' => 'label',
						//'value' => $forwarders.' <a href="'.$filename.'?page=forwarders&amp;action=add&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['forwarder_add'].'</a>'
						'value' => '<table class="table table-bordered">'.$forwarders.'</table><a class="btn btn-mini btn-success" href="'.$filename.'?page=forwarders&amp;action=add&amp;id='.$result['id'].'&amp;s='.$s.'">'.$lng['emails']['forwarder_add'].'</a>'
					)
				)
			)
		)
	)
);