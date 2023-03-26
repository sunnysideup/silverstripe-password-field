Default Predict
===============================================

Use 

`ShowPasswordField` instead of `PasswordField` in forms.

To replace all PasswordFields, use the `Injector` to replace the class.

```yml

SilverStripe\Core\Injector\Injector:
  SilverStripe\Forms\PasswordField:
    class: Sunnysideup\PassswordField\Form\Fields\ShowPasswordField

```
