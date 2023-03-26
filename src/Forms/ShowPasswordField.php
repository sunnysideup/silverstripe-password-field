<?php

namespace Sunnysideup\PassswordField\Forms;

use SilverStripe\Forms\PasswordField;

class ShowPasswordField extends PasswordField
{
    protected $template = 'Sunnysideup/PasswordField/Forms/ShowPasswordField';

    public function getTemplate()
    {
        return $this->template;
    }

    /**
     * {@inheritdoc}
     */
    public function Type()
    {
        return 'text password show-password';
    }
}
