---
author: Caitlin Derr
exerpt: "How the EARN IT act weakens encryption protections under the pretense of child safety."
reading_time: 8
image: /assets/images/articles/child_safety.png
---

How the EARN IT act weakens encryption protections under the pretense of child safety

![Rusty padlock and chain]({{page.image}})

The current media coverage of the now-infamous Section 230 makes it easy to forget it actually amends a much larger piece of important legislation. Discussions around Section 230 have largely focused on censorship generally but it’s worth examining the more troubling and specific issues it causes with encryption.

There have been several [*attempts*](https://static.newamerica.org/attachments/3407-doomed-to-repeat-history-lessons-from-the-crypto-wars-of-the-1990s/Crypto%20Wars_ReDo.7cb491837ac541709797bdf868d37f52.pdf) to regulate encryption and weaken its protections. The “Eliminating Abusive and Rampant Neglect of Interactive Technologies Act of 2020”, or EARN IT Act, is the latest iteration of the federal government’s attempt to weaken encryption protections. This bill was introduced in the [*Senate*](https://www.congress.gov/bill/116th-congress/senate-bill/3398/) in March 2020, and the [*House*](https://www.congress.gov/bill/116th-congress/house-bill/8454) in September 2020. We’ll examine the House version of the bill, which includes amendments made to the Senate version.

This article breaks down what’s included in the EARN IT Act, expands upon the areas that are concerning from a technology perspective, and what you can do about it.

## What’s in the EARN IT Act?

Here are the major changes made by the EARN IT Act, in order of appearance:

- Establishes a National Commission on Online Child Sexual Exploitation Prevention

- Amends Section 230 of the [*Communications Decency Act*](https://firstamendment.mtsu.edu/article/communications-decency-act-and-section-230/)

- Replaces the term “child pornography” with the more modern term “child sexual abuse material” in several pieces of existing legislation

- Updates language in [*US Code, Title 18, Chapter 110*](https://uscode.house.gov/view.xhtml?path=/prelim@title18/part1/chapter110&edition=prelim) (“Sexual Exploitation and Other Abuse of Children”) to modernize statements regarding types of evidence used (examples include location data, IP address) and information sharing with the [*National Center for Missing & Exploited Children*](https://www.missingkids.org/HOME) (NCMEC)

- Requires the Administrator of the Office of Juvenile Justice and Delinquency Prevention to use new funding to develop technology solutions that assist in providing relevant information to law enforcement, as well as seek input from related partners

Let’s dig into the most concerning language in relation to encryption and internet privacy: the amendments to Section 230 of the Communications Decency Act.

## Section 230 – What is it, and why does it matter?

[*Section 230*](https://uscode.house.gov/view.xhtml?req=(title:47%20section:230%20edition:prelim)) refers to the legislation in US Code, Title 47, Chapter 45, Section 230. This was included in the [*Communications Decency Act of 1996*](https://transition.fcc.gov/Reports/tcom1996.txt), and is a critical piece of legislation for websites and web communication. We could write dozens of articles breaking down why this law is so important and its effect on websites in the US but for the purposes of this article we’ll explore the items relevant to the EARN IT Act.

The primary protection Section 230 provides is the distinction between the website provider and content produced by others on the website. Section 230 states:

*“No provider or user of an interactive computer service shall be treated as the publisher or speaker of any information provided by another information content provider.”*

An internet content provider is defined as “any person or entity that is responsible, in whole or in part, for the creation or development of information provided through the Internet or any other interactive computer service.” Basically, Section 230 distinguishes between a person who posts content on a platform such as Facebook or Parler from the platform they are posting content on.

It also says a website provider is not responsible for content provided by its contributors. This is an incredibly important protection that allows websites to host forums, comment sections, and other user-generated content without worrying about being held liable for the user-provided content hosted on those services, with exceptions for certain types of objectionable or illegal content.

Another consideration is that website providers would have to review any user-provided content without these protections. For many providers, reviewing and approving every new requested post, picture, or video to protect against potential lawsuits would be a massive and cost-prohibitive undertaking.

There are, of course, caveats to these protections, outlined in section (e) of the [*full text*](https://uscode.house.gov/view.xhtml?req=(title:47%20section:230%20edition:prelim)) if you are interested. We encourage you to read the entire thing – it’s shorter than this article.

Another important protection Section 230 provides is the ability of a website provider and users to “restrict access to or availability of material that the provider or user considers obscene, lewd, excessively violent, harassing, or otherwise objectionable” without being held liable for doing so, “whether or not such material is constitutionally protected.”

Essentially, this means website providers can take content they deem problematic off their site, even if that content might be technically protected by the Constitution. This is because the First Amendment protects citizens from government censorship and website providers are private entities. The Supreme Court can't tell Twitter who to censor, but Twitter can censor any content on its platform it chooses.

While recent [*high-profile bans from social media*](https://apnews.com/article/twitter-donald-trump-ban-cea450b1f12f4ceb8984972a120018d5) have revived discussions around big tech and censorship, even being [*incorrectly*](https://www.nytimes.com/2021/01/09/us/first-amendment-free-speech.html) regarded by some as a First Amendment issue, Section 230 provides protections for the actions taken by social media providers.

## What changes to Section 230 are being proposed in the EARN IT Act?

The EARN IT Act includes two additions to Section 230.

The first addition, paragraph (6), adds language stating that nothing in Section 230 should preclude providers from being liable for items relating to child sexual abuse material.

The second addition is more concerning:

“(7) ENCRYPTION TECHNOLOGIES.—

(A) IN GENERAL.—Notwithstanding paragraph (6), none of the following actions or circumstances shall serve as an independent basis for liability of a provider of an interactive computer service for a claim or charge described in that paragraph:

(i) The provider utilizes full end-to-end encrypted messaging services, device encryption, or other encryption services.

(ii) The provider does not possess the information necessary to decrypt a communication.

(iii) The provider fails to take an action that would otherwise undermine the ability of the provider to offer full end-to-end encrypted messaging services, device encryption, or other encryption services.

(B) CONSIDERATION OF EVIDENCE.—Nothing in subparagraph (A) shall be construed to prohibit a court from considering evidence of actions or circumstances described in that subparagraph if the evidence is otherwise admissible.”

At first read, this may sound great! The purpose of the law certainly isn't to give digital shelter to pedophiles. If a website is knowingly allowing child porn to proliferate, it should be held accountable for hosting clearly illegal content.

The idea that a provider cannot be liable for using protections such as end-to-end encryption is good. Unfortunately, the use of “independent basis” in section (A) as well as the inclusion of section (B) weaken this protection. The new text essentially says website providers won’t be liable solely for using encryption, but the use of encryption *can* be considered along with other evidence that may make the website provider liable.

For example, say a messaging platform uses encryption and faces a charge of knowingly hosting child porn and not doing anything about it. The use of encryption in and of itself can’t be used to rule that the platform is liable for the illegal content. So far so good. However, if there is other evidence of the website’s complicity, then that evidence can be considered *along with* the website’s use of encryption. The two things combined could result in the website service being held liable for the encrypted content, a pretty strong disincentive to offer users security.

The Center for Internet and Society at Stanford Law School has written a blog post [*further analyzing this language*](https://cyberlaw.stanford.edu/blog/2020/10/house-introduces-earn-it-act-companion-bill-somehow-manages-make-it-even-worse).

If encryption can potentially be used as evidence against a provider, it’s not hard to understand why some providers would move away from using secure protocols and end-to-end encryption. An argument could be made that it’s in their self-interest, to avoid their encryption practices being used against them (alongside other evidence) in potential lawsuits. These changes could also spur providers to maintain the ability to decrypt content on their website or other services to monitor for nefarious activity, ultimately eroding user trust.

Encryption is a top priority for privacy focused users when choosing services such as password managers and secure messaging platforms. When secure protocols and encryption are removed from web services and websites, this results in reduced privacy, increased data mining, ad targeting, and discrimination. Without end-to-end encryption, some of these services arguably lose their biggest draw – the provider cannot view their users’ encrypted data.

Discouraging encryption as a practice is not the direction technology should move in. We as a society should be looking to further advance encryption and other security mechanisms to protect our ever-growing use and reliance on these technologies.

## Other EARN IT Act Criticisms

Leaving other issues aside, there are two additional issues worth noting in the currently proposed text.

The first issue is the breakdown of the [*National Commission on Online Child Sexual Exploitation Prevention*](https://www.congress.gov/bill/116th-congress/house-bill/8454/text#HF2840AEB98AC46F891C73643C40DC5CC) members. The Commission will have 19 members led by the Attorney General, 16 of whom will be appointed by Congressional leaders in both the House and Senate.

The requirements to be one of the appointees are intended to provide a diverse set of relevant experiences. Experience requirements are tailored in such a way the appointees will likely include: law enforcement, prosecutors, survivors of sexual abuse, individuals who provide services to victims, business leaders, and those who work in computer science-related fields.

Unfortunately, only two members of the Commission must have “current experience in computer science or software engineering related to matters of cryptography, data security, or artificial intelligence in a nongovernmental capacity.”

How can a commission with at most two computer scientists or security-focused technologists be expected to provide useful, actionable guidance to website providers fighting a deluge of illegal and distasteful content daily?

Another issue, true of both the EARN IT Act and other proposed and existing legislation, is the way it’s bundled with other unrelated initiatives. The EARN IT Act’s primary focus is to take actions to further enhance the safety of children through a commission of experienced individuals providing best practices. Including encryption liability language puts lawmakers in a difficult political position. If they oppose the bill on its technological flaws, they risk looking weak on child safety. It also diverts the public’s attention from child sex trafficking and abuse to cybersecurity in general and individual privacy rights specifically. This isn’t exactly a new practice but nonetheless deserves to be pointed out.

## What can we do about it?

The good news is many organizations, including the [*EFF*](https://www.eff.org/deeplinks/2020/10/urgent-earn-it-act-introduced-house-representatives) and [*ACLU*](https://www.aclu.org/news/free-speech/the-earn-it-act-is-a-disaster-for-online-speech-and-privacy-especially-for-the-lgbtq-and-sex-worker-communities/), are vocally opposed to the EARN IT Act. Several groups have signed an [*open letter*](https://cdt.org/wp-content/uploads/2020/09/Civil-Society-Coalition-Letter-EARN-IT-Act-9.15.20.pdf) to lawmakers asking them to vote against it.

We encourage you to contact your [*elected officials*](https://www.usa.gov/elected-officials/) to voice your opinion on the EARN IT Act, and encourage others to do the same.
