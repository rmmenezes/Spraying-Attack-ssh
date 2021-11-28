# Spraying Attack ssh
This shell script is able to run a spraying attack in SSH service in a targert. Open the shell script file to understend the code. At the top you can see some variables. Wordlists paths and target. Feel free to change the fields.

## Password Spraying Attack

Password spraying is a type of brute force attack. In this attack, an attacker will brute force logins based on list of usernames with default passwords on the application. For example, an attacker will use one password (say, Secure@123) against many different accounts on the application to avoid account lockouts that would normally occur when brute forcing a single account with many passwords.

![image](https://user-images.githubusercontent.com/20097665/143727211-50b76428-1074-4918-92b4-1f390f512a66.png)

## Mitigations

- Brute force preventation should be on both field, i.e., Username and Password.
- Set account lockout policies after a certain number of failed login attempts to prevent credentials from being guessed. Implement CAPTCHA, if lockout is not a viable option.
- The admin managed application should force users to change their password on first login with default password.
- Use multi-factor authentication. Where possible, also enable multi-factor authentication on externally facing services.

## Reference
https://attack.mitre.org/techniques/T1110/003/

https://owasp.org/www-community/attacks/Password_Spraying_Attack

https://www.microsoft.com/security/blog/2020/04/23/protecting-organization-password-spray-attacks/
