---
author: 
- Christina Eichelkraut
- Elio Grieco
excerpt: "The internet is the most powerful communication system ever invented by humanity. Unfortunately, it was never completed. The missing parts have allowed the internet to become diseased with constant security threats and privacy invasions, with no way to stop or even slow the progression of these pervasive online ills."
reading_time: 10
image: /assets/images/articles/untangling_web.png
---

![Spider web covered with dew drops]({{page.image}})

Photo credit: [travelphotographer](https://stocksnap.io/author/travelphotographer)

## Properties of the Next Internet

The internet is the most powerful communication system ever invented by humanity. Unfortunately, it was never completed. The missing parts have allowed the internet to become diseased with constant security threats and privacy invasions, with no way to stop or even slow the progression of these pervasive online ills.

We tried to dig ourselves out of the hole of incomprehensible complexity by adding ever more complex layers. Constant threats were met with “intelligent AI agents” which had their own weaknesses. Meanwhile, attackers deployed their own intelligent agents.

To move forward we must simplify our technology, make it robust and reliable, and fill in the gaps that have been missing from the start.

## Data synchronization

When the web was invented, computers were enormous and far more expensive than any but the wealthiest individuals could afford. They were usually found only at universities or large corporations. Early internet denizens shared the monstrous machines by logging in to them from remote, “dumb” terminals. When everyone logging in was good natured and worked at the same institution, this worked well.

But as the internet grew and computers shrank, all manner of individuals started poking around. Initially, any nefarious activity was mostly done in a spirit of playful experimentation. When weaknesses were discovered they were mostly used to prank other users.

Soon the internet became a central part of everyone’s lives. It became essential for nearly every aspect of life. One had to go online for everything including commerce, entertainment, education, business, and of course crime.

Sadly, despite the proliferation of digital crimes, there was no move away from the early, open and largely unsecured protocols on which the early, research internet ran to more hardened and secure versions appropriate for global use today. As criminals found their footing and built software and systems to streamline and scale cybercrime, the business and personal side of the internet remained largely stagnant. The non-criminal internet issued “fixes” that were actually mostly new services added on top of existing systems. While this may have been an effective band-aid, it still neglected to replace weak foundational technologies with more appropriate and secure protocols.

The move from centralized computing to the personal PC provided a brief glimpse of a brighter, decentralized future that met the needs of users first and foremost. Systems such as Napster, Gnutella, BitTorrent, and early Skype showed users how powerful and easy to use decentralized systems could be.

Unfortunately, those efforts ran afoul of the Shirky Principle which states, “[*Institutions will seek to preserve the problem for which they are the solution*](https://www.techdirt.com/articles/20100404/2112388868.shtml).” In this case, the institutions were the Motion Picture Association of America (MPAA) and the Recording Industry Association of America (RIAA) which were [*directly threatened*](https://www.wired.com/2009/12/1207riaa-sues-napster/) by distributed file sharing systems. The new technology worked incredibly well for the distribution of movies and music, allowing people to share whatever media they liked with each other. In short, people no longer needed either organization because they could now distribute music amongst themselves for free.

The MPAA and RIAA partnered with internet service providers, or ISPs, to launch a [*massive and ongoing campaign*](https://arstechnica.com/uncategorized/2004/12/4467-2/) against the decentralized protocols. Unable to stand up to the might of corporate power and attorneys, as well as massive and well-funded attacks against the networks themselves, users were eventually shepherded back into the walled gardens of The Cloud™.

### Synchronizing files (state management)

Synchronizing files is really a subset of what programmers call “state management” or keeping track of the state in which something currently exists (started, draft, completed, reviewed, published). Keeping the main or “canonical” copy of files that are being collaboratively edited on a central server makes state management easier but also makes the system more fragile and vulnerable to attack.

The most popular protocol on the internet, HTTP, was intentionally designed to be stateless so as to minimize the use of server resources. Logging on to a website to browse around and perform multiple actions used up resources for as long as the user was logged in. The more people were online and doing things, the less server resources there were to share.

That statelessness of HTTP soon became a liability as the internet rapidly moved away from being a stateless-friendly system. As the web transitioned from mostly static documents to various platforms used to host dynamic apps, it became necessary to log on to the different platforms. That added a whole other layer to state management. When it comes to collaborative editing, for example, login based systems must manage the state of users logging in to edit a document in addition to the state of the document itself. In terms of the user, the system must determine whether they are logged in, authorized to make edits or only read and various other permissions.

The lack of an identity protocol meant there was no way to identify users logging in to an application. The problem was solved using cookies which basically duct tapes state onto a stateless protocol by tracking the user’s identity. But while cookies allow the platform to know who a user is even across domains, they also make users susceptible to many common attacks such as cross-domain tracking and session hijacking.

Undeniably, we need a way to synchronize data between multiple endpoints securely. Though, as the distributed systems of the 90s showed, this can be done very efficiently and easily by copying and synchronizing data between widely dispersed nodes.

As we’ve seen, there is no need to login to a system to do useful things like share files and update documents. Git is used by thousands of developers globally to share information and work on one of the most demanding types of document sharing: software development. Projects like [*Radicle*](https://radicle.xyz/) (for peer to peer, distributed sharing of source code in Git repositories) allow Git to be used as it was originally intended, without a central server like GitHub.

## Discovery and Curation

With the absolutely incomprehensible amount of data on the internet today, the ability to find information is critical. Finding information online was always an issue, even in the earliest days of the internet. Two solutions emerged: “directories” (human curated data) and “search engines” (algorithmically collected data).

While directories indisputably had higher quality data in a given category, the rapid growth of the internet made it clear a human-dependent solution could not keep pace with the rapid growth of even the early internet. That led to the development of the search engine. It spidered from page to page collecting what it found into its index.

The potential to profit from the way search engines operated -- as gatekeepers to the web -- became immediately and inevitably apparent to advertisers. Having some sites pay more to be suggested was obvious. Although Google was initially founded on the principle that exploiting this technology for money was wrong and only purely algorithmic discovery could be just, sadly as Google grew its altruism evaporated. “Don’t be evil” gave way to “maximize shareholder profits” and Google became the advertising company it is today.

The most disturbing aspect of this is that even when users are willing to pay only private companies can manipulate the search results. Users have become commodities with nearly every aspect of their lives being bought and sold. This happens on both the light and dark parts of the web, with only slightly less information available for purchase on the light web.

The manipulation of users through what information they can access and the exploitation of their private data has grown to a scale in which it has become a viable form of warfare, capable of starting genocides and potentially toppling countries.

Users should have agency over their devices and the software on which they depend (and for which they have often paid significant sums of money). They should be able to discover the information that is most relevant to them and adjust what information they are shown in ways that are most beneficial to them. Further, they should not be required to hand over control of their information or information about themselves, and they should have a say in how such information is used and for what purposes.

We have ample evidence that handing personal information over to large companies never goes well. Almost inevitably, it is directly misused, sold to other companies for profit or as part of an acquisition, or leaked to criminals via inadequate or incompetent security practices. The only viable way to keep information safe is to limit both its spread and the amount of it collected in any one place.

### Identity

The lack of a proper identity protocol -- a way to identify oneself online that remains the same regardless of the website or application one is using -- was a major omission from the development of the internet. This has led to multiple problems. These include SPAM, phishing, and other attacks that rely on impersonating the user.

The response to this problem was every website building its own authentication solution (login system) or outsourcing to centralized solutions like Login with Google or Login with Facebook. Building authentication is not easy, the cryptographic demands alone are difficult to get right. It is [*even more difficult to determine when they are wrong*](https://www.schneier.com/blog/archives/2011/04/schneiers_law.html).

Junior developers and the majority of engineering teams building websites and doing routine computer programming -- as opposed to advanced programmers and academic research teams -- are able to send bytes across the internet reliably through TCP/IP and related protocols. They don’t build those protocols themselves; they are simply the tools of the trade.

But authentication systems are different. Their inherent complexity makes it difficult for even highly skilled senior programmers to create reliable solutions. By forcing every engineering team to tackle authentication for individual websites and applications, rather than having a single identity protocol anyone can use, companies -- usually operating without the expertise of senior programmers -- are left to navigate this unforgiving terrain on their own.

It is akin to dropping off a first grader in the woods and leaving them to fend for themselves and it goes just as badly as one would expect. In the end, both companies and internet users are left with an internet on which the majority of sites are highly vulnerable to various attacks and breaches.

Adding to the problem is the fact none of the individual authentication systems interoperate, forcing users to have separate login information for every site they visit. In addition to being incredibly annoying for the user, this inevitably leads to password reuse and all its attendant security issues. The lack of standardization makes these systems difficult to build and has made moving away from passwords nearly impossible.

We are left with an unworkable situation in which humans, not built in any way for password management, are forced not only to use passwords but must remember more than a handful and frequently change them.

Despite its major disadvantages and security implications, the paradigm of login to a remote system is once again dominant.

## Adoption and Network Effects

In order for any of the distributed technologies (with the potential to build the next, better internet) to be of any use they must have users. For that to happen they must be :

1. Easy to install

2. Easy to use

3. Trustworthy and Dependable

### Ease of Installation

One of the reasons that web apps caught on was installing software on most operating systems was a mess. Although most Unix systems had package managers that allowed the easy and reliable installation of software with a single command, it was far more complicated on Windows and Apple operating systems. This is why "app stores" became extremely popular with users. One click or tap and a thing was installed, no programming knowledge required.

App installation, however, is not without its drawbacks. Malware has made it a risky proposition. “Did I just break my computer because I installed something malicious?” Something that even app stores have failed to prevent.

Future systems must be easy to install and be low risk. That is the only way the user base of the distributed internet will meaningfully grow to the point where network effects kick in and people start using systems “because everyone else is using them."

### Ease of Use

Systems must be easy to use. Unfortunately, this can be subjective. However, there are some objective metrics by which ease of use can be generally assessed.

One is “friction,” the number of steps required to accomplish a given task. The more clicks it takes to get to a destination, the more likely a user will just give up.

Paradoxically, people tend to latch onto workflows they have become accustomed to, even when they are less efficient. So some aspects of future software may have to incorporate some of today’s current inefficiencies in order to become adopted by a wide audience.

### Trustworthiness and Dependability

This should be the sphere where the most rapid advances are achieved by new distributed systems. People have become accustomed to technology not working properly as a general rule, so much so the “cyber excuse” (my computer crashed, it didn’t save, a blue screen of death appeared) has become the dog eating everyone’s homework and work projects.

Distributed systems are highly compatible with offline-first workflows that assume a lack of internet access. These systems are designed to be completely usable without the internet (except of course when synchronizing changes). Git and Secure Scuttlebutt are excellent examples of offline-first systems. Though in today’s ever-connected climate it seems counterintuitive to prefer to work offline when what it actually means is no more losing all the data you meticulously typed into that web form because you accidentally reloaded the page or hit the back button.

Further, distributed systems that share and synchronize data are far less at risk of data loss if an account is suspended, terminated, or maliciously taken over. In fact, in systems such as Syncthing and Git (not GitHub) the very concept of account closure is nonsensical. While you might choose to synchronize changes and data with other nodes for a while, the act of disconnecting from them has no impact on the data on either your node or theirs. Accidental deletion of shared data is also minimized.

Overall, distributed systems are a more secure environment for data by virtue of it being more difficult to lose and also because their very nature diminishes a user’s vulnerability to cyberattacks by reducing the attack surface. They also have the added advantage of making data available locally so internet outages and the like have a much smaller impact on the overall system.

### Systemic Balance

Every technology has been used to commit crimes, including smartphones, video cameras, VHS, phones and even money itself. We should examine the overall effect a technology will have on society, both the good and the bad, for all parties. Many analyses of emerging technologies are lacking and biased, such as the RIAA and MPAA’s assessment of the ability to share music and videos freely online.

Technology should only be prevented from being released if it will make getting away with crimes dramatically easier, or drastically increase negative behavior on either an individual or societal level. The potential for negative impact should always be weighed against the overall potential for a technology’s positive benefit as well. For example, while a censorship resistant platform used by whistleblowers could hurt the share price of misbehaving companies, it provides a dramatic public benefit for the reduction of corruption.
