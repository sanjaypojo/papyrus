# Clone magento from production to your local machine

This guide should eliminate all the vague problems you would otherwise encounter when trying to clone your magento environment.

#### Problems we'll tackle
1. Couldn't log into the admin section
2. Couldn't replace the empty database with the full production data

#### Install MAMP
There are a gazillion guides on how to do this.

#### Download magento
- Download the version of magento you want to install.
- Paste the folder inside the directory that MAMP points at (check MAMP settings)

Go to `app/code/core/Mage/Core/Model/Session/Abstract/Varien.php` and comment out these lines

    if (!$cookieParams['httponly']) {
      unset($cookieParams['httponly']);
      if (!$cookieParams['secure']) {
        unset($cookieParams['secure']);
        if (!$cookieParams['domain']) {
          unset($cookieParams['domain']);
        }
      }
    }

    if (isset($cookieParams['domain'])) {
      $cookieParams['domain'] = $cookie->getDomain();
    }


You'll find these lines between line 80-120. This prevents cookie related problems for admin login
