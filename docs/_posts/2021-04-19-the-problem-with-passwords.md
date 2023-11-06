---
author:
- Elio Grieco
- Christina Eichelkraut
excerpt: "We hear a lot about passwords these days. What we *don’t* get is an explanation of what passwords actually are and the underpinnings of how they work. The intended audience for this article is users that are tired of being told that it’s completely their fault that their account got hacked. Secondarily, it’s for executives and engineers responsible for implementing authentication for websites, services, and businesses. Passwords will **never** work well. It’s long past time to move on to better alternatives."
reading_time: 10
image: /assets/images/articles/problem_with_passwords.jpg
---

![A skeleton key]({{page.image}})

Photo by Everyday basics on Unsplash

We hear a lot about passwords these days. What we *don’t* get is an explanation of what passwords actually are and the underpinnings of how they work.

The intended audience for this article is users that are tired of being told that it’s completely their fault that their account got hacked. Secondarily, it’s for executives and engineers responsible for implementing authentication for websites, services, and businesses. Passwords will **never** work well. It’s long past time to move on to better alternatives.

## Why do we need passwords? Authentication

Passwords are a form of **authentication**, a way to prove that a person or thing is actually who or what they claim to be.

There are three primary ways to authenticate an individual:

1. Something you **know**: passwords, passphrases, implicit passwords
2. Something you **have**: a physical key, security token, or smart phone with an TOTP/HOTP authenticator app
3. Something you **are**: biometrics for people (fingerprints, voiceprints, facial scans, palm scans, cornea or iris scans, etc.). For hardware, this would be Physically Unclonable Functions (PUFs).

Using just one of these three factors gives the user low security. Using more than one of these, also known as Multi-Factor Authentication (MFA), is more secure because pretending to be someone else requires collecting multiple factors.

We need authentication to perform **authorization** in systems and facilities. Authorization is the act of determining whether someone is allowed (authorized) to see something or go somewhere in a system or facility. This becomes especially important for online users today since the modern internet is filled with shared systems such as cloud services like Google, Facebook, Twitter and others.

## What are passwords? Shared Secrets

Now that it’s clear why passwords are needed it’s useful to ask what, exactly, they are.

Passwords prove you are the correct person by relying on the fact that only a few people know what the correct password is. In cryptography this is called a shared secret. The more people who know the secret the less useful it is for correctly determining whether a person is the correct person.

The ability to authenticate a person relies on the assumption that only the site and the user know which password the user has chosen. As long as this is true, we can be quite sure that we are talking to the right person.

## Passwords will never work, stop blaming users

It’s time to stop denying passwords are incompatible with the human brain. **Strong passwords are not memorable, and memorable passwords are not strong.** Short of a change in the fundamental workings of the human mind, this state of things will not improve.

## What are some ways passwords are vulnerable?

There are several ways that this assumption about a shared secret can break down.

The key thing to remember is that the more a secret is shared, the less useful it is for authentication and the greater the risk of your account being compromised. It doesn’t matter whether this is due to a data breach or sharing passwords among family members, co-workers and friends. Shared secrets are meant to be kept secret.

### Password Sharing and Reuse

Because it’s hard to remember more than a few passwords, people frequently re-use the same password for just about every website and service which they use. While this is convenient for the user, it’s also convenient for attackers thanks to data breaches.

A **breach** is when a criminal is able to steal passwords from an organization. It is common to then sell these passwords on the dark web to cybercriminals and anyone else willing to purchase them.

As [*breaches have become more common*](https://haveibeenpwned.com/PwnedWebsites), [*password reuse*](https://www.troyhunt.com/password-reuse-credential-stuffing-and-another-1-billion-records-in-have-i-been-pwned/) has become a bigger threat than weak passwords. This is because these leaked credentials (email and password pairs) can be used in [*credential stuffing*](https://www.cloudflare.com/learning/bots/what-is-credential-stuffing/) attacks where a given pair is tried across many target websites.

### Guessing passwords

Besides breaches and sharing passwords, someone can simply guess your password. There are several aspects to consider when it comes to guessing passwords:

**Easy to guess for a human**. Words like “password,” “password123,” or “letmein,” are all terrible passwords. They’ve become so ubiquitous they are incredibly easy to guess for both humans and computers.

**Easy to guess with detective work**. Another rule of thumb is to never use any information in your password that could be found out about you with an online search or other detective work. This includes things like your address, birth date, pet names, favorite color or similar factoids. If your dog’s name is Rover and you have tons of posts on social media showing Rover adorably destroying your furniture, do not use Rover123 as your password. No, the numbers at the end don’t make it meaningfully more secure.

**Easy to guess with a computer**. While humans can guess a few passwords per minute, computers can try potentially millions to billions of passwords per minute. The best protection against a computer-based attack that uses a guessed password is a larger keyspace.

### Small Keyspace

The **keyspace** for a password, or number of possible passwords of a given length, can be calculated by raising the number of characters allowed (the base) to the length of the password (the exponent).

For example, alpha-numeric password a-z (26), A-Z (26), 0-9 (10) has 62 (26 + 26 +10) possible choices per character. Thus, the entire keyspaces is 62 raised to the length of the password. If the “special characters” like “~!@#$%^&\*()\[\]{}?|/\\;:” are included the total choices per character become 95\[1\]. Some examples follow:

- [*62^8*](https://www.wolframalpha.com/input/?i=62%5E8) (~218 trillion passwords), time to crack: ~1 hour

- [*95^8*](https://www.wolframalpha.com/input/?i=95%5E8) (~6 quadrillion passwords), time to crack: ~1.2 days

- [*62^12*](https://www.wolframalpha.com/input/?i=62%5E12) (~3 sextillion passwords), time to crack: ~1,704 years

- [*95^12*](https://www.wolframalpha.com/input/?i=95%5E12) (~540 sextillion passwords), time to crack: ~285,383 years

What the above examples illustrate is the counterintuitive truth that changing the base (number of characters used: capital letters, special symbols, etc.) does less to increase the strength of the password than changing the length.

If you want to play with the numbers yourself, the [*Password Strength Calculator*](https://www.bee-man.us/computer/password_strength.html) is a good place to start.

The above “time to crack” estimates are based on the assumption an attacker can try 60 billion passwords per second and will try all possible passwords in that keyspace. In reality, actual passwords are not found at the end of the keyspace (zzzzzzzz) and may be closer to the front (aaaaaaaa). In these cases, the password will be found in less time.

Further, although 60 billion guesses per second may sound like a huge number, modern graphics card, Field Programmable Gate Arrays (FPGA), and Application Specific Integrated Circuit (ASIC) powered cracking rigs can try many, many more guesses.

### Low Entropy

**Cryptographic entropy** is the relative measure of the predictability of information or individual bits.

While keyspace can be thought of as the size of the area in which we need to search for the key or password, the entropy, or lack thereof, can tell us where to look.

Entropy is important because no matter how good a cryptosystem is, no matter how big the keyspace, theoretically the correct answer can always be guessed\[2\].

The more entropy used in the creation of a secret (shared or otherwise), the harder it is to guess and thus the stronger it is. Entropy taken from dedicated hardware entropy generators like [*isotopic decay*](https://www.sparkfun.com/tutorials/132) [*entropy generators*](https://github.com/nategri/chernobyl_dice) is unguessable by humans. We don’t currently have the scientific understanding or the technology to determine when a given alpha particle will break away from an atomic nucleus and strike the detector to output a one.

### Special Characters, Substitutions and Suffixes

While adding special characters and numbers to passwords is generally seen as adding to the keyspace, unfortunately, just adding a few special characters does not add nearly enough entropy nor increases the keyspace enough to make a password truly strong. It’s a minor bump in strength at best.

Armed with the knowledge of what a password is and how to make one strong, one might assume that we can go out and secure all of our digital lives.

Yet, for decades, despite [*plenty*](https://www.techrepublic.com/article/top-5-tips-for-choosing-strong-passwords/) of [*articles*](https://phoenixnap.com/blog/strong-great-password-ideas) [*explaining how*](https://www.bu.edu/tech/support/information-security/security-for-everyone/how-to-choose-a-strong-password/) to make [*better passwords*](https://www.schneier.com/blog/archives/2017/10/changes_in_pass.html), still we face a never-ending litany of password breaches. What we have learned from those breaches is what passwords people are actually using in real life and, sadly, most are still just as terrible now as they were in the 1990s.

## Why you’ll never remember a good password: Language vs. Entropy

Password reuse isn’t simply users being lazy or sloppy, however. Remembering good passwords is almost impossible for most people, not because of any inherent incompetence but rather because of the way we use language on a cognitive level. Language is essentially the opposite of entropy, and having enough entropy is critical when creating a secure cryptographic key or password.

While most people simply don’t care enough about cybersecurity, even those who do and should know better consistently use terrible passwords. This is because of the nature of the human brain and language.

Language uses grammar, a system of constraints that includes syntax, morphology, semantics and more that essentially gives words their meaning. It is similar to some programming languages in this way. Grammar – far more than rules guiding punctuation – is why language works as a communication tool. The recognizable patterns of language are what allow communication between people.

The patterns established by grammar are the exact opposite of entropy. Their predictability allows language to be useful. When users are asked to remember a password without writing it down, they naturally choose something memorable, and likely it is memorable because it carries personal meaning. That, in turn, makes the password fairly easy for an adept adversary to guess.

**Thus, good passwords are hard to remember and memorable passwords are not good.**

## Current Solutions

### Password Managers

The solution to this problem is both obvious and analog. The user should “write them down” somewhere. Paper is a good choice if there is little concern about other people having direct physical access to said piece of paper. This is highly effective against nefarious cyber villains half a world away; it is less effective against nosy roommates or vengeful exes.

A better choice is to combine encryption with passwords and use a password manager. This allows the password manager to “remember” the passwords, even if they are *very* complex. Further, it allows the passwords to be backed up to other devices so that if a device such as a phone or computer is lost, access to various accounts remains.

### Pitfalls of Password Managers

Though certainly better than reusing passwords, writing them down on paper, or trying to remember dozens to hundreds of passwords, password managers also have downsides.

**Cloud password managers provide a new threat.** Storing passwords in the cloud, and typing in passwords to login and access them, means that the password manager provider has access to the passwords. Further, when the cloud password manager is breached it means that *all* your passwords are likely to be compromised.

**Untrusted devices are not that safe.** Except for people running OpenBSD and Linux, most popular operating systems are not very well secured, subject to constant attacks, and many collect copious analytics that may be subject to breaches. Storing passwords on a device that might end up spying on you for the manufacturers’ (or an attacker’s) benefit is dangerous. After all, the exploitation of an unpatched bug or as yet undiscovered zero day bug is just a matter of time.

**Having to use a certain program to access your accounts means without access to said program, there is no access to the accounts.** Phones get lost (they need to be backed up, too) and a cloud password manager is still vulnerable to systems outages, whether of their own systems or their hosting provider.

**Despite these potential issues, offline password managers are still the best choice for most people.** Provided, of course, password vaults are updated regularly and two-factor authentication is enabled. If you are not already using a password manager, start using one as soon as possible.

### Recommended Password Managers

- [*KeePassXC Password Manager*](https://keepassxc.org/) ([*source on GitHub*](https://github.com/keepassxreboot/keepassxc)) a cross-platform community-driven port of the Windows application “Keepass Password Safe”.

- [*Bitwarden*](https://bitwarden.com/) ([*source code*](https://bitwarden.com/open-source/)) Good solution if self-hosting.

- [*1Password*](https://1password.com/) is decent, however the author prefers not to use the built in “cloud sync” and subscription plans. It’s still possible to use 1Password standalone but users are constantly steered toward the subscription plans on the official website. Finding out how to download the demo and buy the standalone version from within the software is made needlessly difficult, and should be considered a [*dark pattern*](https://www.darkpatterns.org/).

It is strongly recommended that cloud based password managers be avoided as they introduce additional vulnerabilities. Cloud sync for local password managers can be an acceptable risk if properly designed. In all cases, open source solutions should be preferred.

### Multi Factor Authentication

Adding Multi-Factor Authentication to any and all services that support such technologies is recommended. Some options to do so:

- [*Aegis Authenticator*](https://getaegis.app/) ([*source on GitHub*](https://github.com/beemdevelopment/Aegis)) a free, secure and open source app for Android to manage your 2-step verification tokens.

- [*FreeOTP+*](https://f-droid.org/en/packages/org.liberty.android.freeotpplus/) ([*source on GitHub*](https://github.com/helloworld1/FreeOTPPlus)) an Enhanced fork of FreeOTP-Android providing a feature-rich 2FA authenticator.

- There are [*more*](https://search.f-droid.org/?q=authenticator&lang=en) [*options*](https://search.f-droid.org/?lang=en&q=totp) on [*F-Droid*](https://f-droid.org/en/) a free and open source Android app repository.

### Currently Available NoPassword Solutions

- [*Trusona*](https://www.trusona.com/) a unique solution suitable for everything from basic needs to extremely high security applications.

- [*FIDO*](https://fidoalliance.org/what-is-fido/) an industry standard that can be deployed across many organizations.

- [*YubiKey*](https://www.yubico.com/products/) is a hardware based solution that implements FIDO, MFA and several other protocols.

## A better solution: Cryptographic Keys

The ultimate evolution of authentication needs to be using strong cryptographic keys directly. While this has the disadvantage of having to rely on a specific piece of software to access other pieces of software, it presents far less of a problem in practice as people have similar dependencies on their operating systems, devices, and password managers today.

Returning to keyspace, actual cryptographic keys are generally chosen from high entropy sources and make full use of the keyspace. The keyspaces available are generally far larger than those available with passwords any human would reasonably use.

In cryptography, keys are discussed based on their length in bits. Some common past and present key lengths and their corresponding keyspaces are given:

- [*52 bits*](https://www.wolframalpha.com/input/?i=2%5E52) (~4 quadrillion possibilities), weak and guessable by even older computers

- [*64 bits*](https://www.wolframalpha.com/input/?i=2%5E64) (~18 quintillion possibilities), better but still too weak for today’s computers

- [*128 bits*](https://www.wolframalpha.com/input/?i=2%5E128) (~340 undecillion possibilities), strong enough to withstand attacks from conventional computers

- [*256 bits*](https://www.wolframalpha.com/input/?i=2%5E256) (~115 quattuorvigintillion possibilities), strong enough to withstand an attack via a 256 Qbit quantum computer\[3\] (assuming one eventually gets built)

There are multiple advantages to using keys directly

- Far better user experience without having to remember passwords. (Or maybe just one “local” password.)

- Vastly reduced user error if we delegate key storage to dedicated hardware wallets.

- Large keyspace and high entropy, thus no need to rotate them, except in case of a breach or device compromise.

- Today’s authentication can be replaced with end-to-end encrypted communication between parties. (This assumes a workable key management protocol.)

Our collective reluctance in the IT community to implement proper identity and authentication protocols has caused tremendous pain, suffering, and loss. We must move to newer protocols before the current state of affairs collapses.

## Footnotes

\[1\] Some might point out the Unicode character set which includes emojis, however due to the complexities of representing Unicode code points, it’s best to calculate keyspace in binary as we do for cryptographic keys.

\[2\] The only exception to this rule is the [*one time pad*](https://www.learnpythonwithrune.org/understand-the-security-of-one-time-pad-and-how-to-implement-it-in-python/) in which every message of a given length is equally probable.

\[3\] The assumption here is based on Grover’s Algorithm against a symmetric cipher. If we are using asymmetric algorithms for authentication the numbers will be different based on the underlying mathematical principle upon which the cipher is built.
