---
author:
  - Christina Eichelkraut
  - Elio Grieco
reading_time: 14
image: /assets/images/articles/way_forward.png
catz: ["Computers: The Pitfalls, Perils and Promise"]
---

*This article is part three of the three-part series* [Computers: The Pitfalls, Perils and Promise](/category) *published by* TEC. The articles examine the societal challenges that stem from technology’s ever-pervasive role in our lives and how to confront those challenges in a way that allows technology and humanity to reach its full potential. There are solutions available but they can only be effective if we as a society radically change the way we think about computers, technology and ourselves.

[]({{page.image}})

![Early NACA research aircraft on the lakebed at the High Speed Research Station in 1955: Left to right: X-1E, D-558-II, X-1B](/assets/images/articles/way_forward.png)

Photo by NASA

The first two articles in this series paint a dark picture.

Undeniably, problems continue to grow exponentially in both scope and scale. **Humanitarian technology that stems from true innovation is still achievable.** But it will not be easy. Realizing technology’s *true* potential requires fundamental changes that challenge currently-held core beliefs. We must change everything about how we interact with tech, from our core perceptions of what technology is and what it can do to how we develop and implement it.

We don’t claim to have all the answers, but we do have an idea of some good places to start.

**The majority of security and reliability problems today are directly related to defective code**. Computer programs should be engineered with the same level of conscientiousness and care taken with airplanes, medical equipment and skyscrapers. Code, too, should have a universally applicable quality standard.

## Robustness over patching

Users are constantly admonished to patch systems and run updates nightly. No one thinks about this because it is the norm but, upon reflection, it’s an incredibly inefficient and labor-intensive way to maintain security. It is also ultimately ineffective. Much like eating healthy every day or other good-for-you habits, maintaining cyber hygiene is subject to the foibles of being human. People just don’t do it or, if they do, not as often as they should.

There are only two reasons to patch or update software. Either features are missing and need to be added or the software is defective and the bugs need to be fixed. **Since users don’t generally get new features nightly, they are left to conclude patches are, in effect, duct tape meant to help defective software continue to limp along.**

Why we accept this — instead of demanding inherently better software — is mind-boggling. We would never accept a table on which we had to re-attach the legs each night; why, then, do we settle for this when it comes to the tools we use to work, socialize or archive important memories?

### Formal methods based software

Decades of debate have examined the practicality of designing software with formal methods. In the past, it has been considered too costly to be practical. Despite this, multiple civilian, unclassified projects have succeeded in producing high assurance systems. These include [seL4](https://sel4.systems/), [CertiKOS](https://deepspec.org/entry/Project/CertiKOS), and [Ironsides](https://ironsides.martincarlisle.com/). As the costs of broken software continue to grow and compound, the calculation is likely to tilt toward the overall cost savings of building software correctly.

Software designed using formal methods has been commonplace for decades in the military system, aeronautics, and semiconductor design. In those industries, failure can be catastrophic and result in astronomical costs or even loss of life. Software must be [**high**](https://www.baesystems.com/en-us/definition/what-is-a-high-assurance-operating-system) [**assurance**](https://freeandfair.us/articles/what-is-high-assurance/) and designed with exacting standards out of necessity.

In the civilian sector, however, failures can be written off as the “cost of business.” A severe lack of engineering discipline has become acceptable.

Code designed using formal methods has the added advantage of every possible scenario it might encounter mapped out and its behavior in each case specified. The code is **free of** [**undefined behavior**](https://blog.regehr.org/archives/213) which is when neither the computer nor the programmers know what will happen.

Sadly, the recent SolarWinds attack and and numerous other incidents have only served to highlight the vulnerability created when everything is connected. “Acceptable failure rates” in “non-critical” areas creep into every aspect of our highly interconnected societies. In our less connected past, leaving high assurance software to highly classified military projects made sense. Today, however, **the military supply chain, its personnel and the overall fabric of our nation are fully connected via the internet and electronic systems**. Any vulnerable link in this web can be used to attack the rest of it.

### Inherent security

**Security must be integrated into the core of a project, not as additional layers on top of it.** Clicking a single bad link and losing access to your computer and the rest of the corporate network is absolutely unacceptable and we must not continue to tolerate abjectly broken systems and pretend we can “train around them.”

[**Complexity**](https://www.schneier.com/news/archives/2012/12/complexity_the_worst.html) **is the** [**enemy**](https://krebsonsecurity.com/2014/05/complexity-as-the-enemy-of-security/) **of both** [**security**](https://www.networkworld.com/article/3103474/complexity-is-the-enemy-of-security.html) **and robustness.** The less code there is, the fewer bugs and security vulnerabilities there will be.

First, prioritizing simple systems creates an environment in which software is more reliable because there is simply less to go wrong. Think of the difference between a [Segway](https://www.bloomberg.com/news/articles/2020-07-15/rip-segway-the-dorky-grandfather-of-micromobility) and a tricycle. The Segway has redundant gyroscopes, accelerometers, computer balance systems and stays upright in a marvel of technical engineering…as long as the batteries stay powered. Conversely, the tricycle can balance indefinitely since it’s intrinsically stable.

Second, the tools used to create software are equally important. Entire classes of errors and problems can be eliminated with the right techniques and choices. This is similar to building a house using block or concrete. In doing so, termites, fire, and wood rot become far less of a concern.

The same is true in computer systems. While active security measures can be a good addition, they should never be a [substitute for a properly designed system](https://www.youtube.com/watch?v=jI3YE3Jlgw8) that is intrinsically secure.

Using stronger building materials in programming provides dramatic improvements in code quality. We can use languages like Erlang and Rust with features built into the language itself shown to reduce errors. These include modern static type systems, garbage collected or [borrow checked memory management](https://willcrichton.net/notes/rust-memory-safety/), and the actor model to handle the unique [challenges of concurrent programming](https://sites.google.com/a/athaydes.com/renato-athaydes/posts/fearlessconcurrencyhowclojurerustponyerlanganddartletyouachievethat).

Further, picking the right tools ensures their benefits apply to every system built with those tools, even if the teams using them aren’t fully versed in how to apply computer science to solve such complex issues directly. There’s no need to have each team tackle difficult problems in computer science when entire languages have been designed to handle those problems directly. An interesting example is [Prolog](https://towardsdatascience.com/logic-programming-rethinking-the-way-we-program-8706b2adc3f1) which is specifically designed to solve logic and optimization problems.

Today, many techniques are available to increase the reliability of software and systems. These offer the benefits of formal methods and without the high costs of fully applying them. **Developers and companies have a responsibility to implement such techniques as they will greatly benefit users, companies and society at large.** The more robust and trustworthy the foundation, the faster and higher you can [build atop it with confidence](https://iamevan.me/categories/sre/psychological-safety-and-the-only-pyramid-scheme-that-works/) that it won’t collapse.

### Prefer Open Source and Local Software

In the early days of computing, programs were provided to users as source code. This allowed users to review the code to decide if they trusted it, learn how it worked, and if necessary modify it to suit their exact needs.

For decades businesses have been moving to proprietary code that is extremely difficult to change or understand through observation. Non-technical users have likely noticed the rapid migration from local software to “cloud” services. The “cloud” keeps critical portions of the code completely off of the end user’s computer, making it totally opaque. While this is great for cloud companies and their bottom line, it is terrible for users.

In addition to less access and control over code, cloud-based services also remove user autonomy when it comes to data. Previously, you could run your favorite email client or word processor directly on your computer and thus have direct control over your data.

Today, people use browser- or cloud-based services like Gmail. Information is uploaded to a server in an unknown location instead of being locally stored. But [cloud service companies can remove access to software and — in many cases — data at any time](https://www.businessinsider.com/google-users-locked-out-after-years-2020-10). This can be traumatic for users as companies might pull access to things like Google Reader (a corpse in the [*Google*](https://killedbygoogle.com/) [*graveyard*](https://gcemetery.co/) that was beloved by journalists). More recently, Google users were again dismayed and enraged when the company’s [free photo storage was ended](https://www.cnn.com/2020/11/12/tech/google-photos-ends-unlimited-free-storage/index.html).

Migration to the cloud also puts companies at risk. As more of the corporate infrastructure is handled by external third parties completely outside of the company’s control, it becomes impossible to know the current state of security for these pieces. We just have to take the provider’s word that everything is fine.

Further, because so many companies outsource to the same popular cloud providers, a single supply chain breach like SolarWinds can potentially lead to the subsequent breach of thousands to hundreds of thousands of the cloud provider’s customers.

As with eggs, it’s advisable not to put all of your services and data in one basket. This is especially true when you don’t own and aren’t the one holding said basket.

## Identity: Guess Who?

**The original sin of the internet is the lack of meaningful digital identity**. This is why users constantly fall for phishing attacks, run code from malicious sources, and fall prey to other attacks that rely on misplaced or missing trust. It’s simply far too easy for malicious actors to fake the name in the “From” field on an email or the number of an incoming text message or phone call.

What constitutes a useful digital identity is beyond the scope of this article, but suffice it to say more effort needs to be invested in creating one. The implications are huge. **A robust digital identity would allow meaningful end-to-end encryption and prevent attacks such as phishing.**

The one aspect worth mentioning here is that any such identity construct must be an open protocol (think IP, TCP/UDP, HTTP) and allow the creation of “self-sovereign” identities. Crucially, this is an identity individuals can create or revoke without permission from (or the need to pay) any centralized entity.

We will examine what this might look like and how to achieve these goals in future articles. For those curious about identity concepts the [white papers](https://www.weboftrust.info/papers/) from [*Rebooting the Web of Trust*](https://www.weboftrust.info/) are a great source of knowledge on current and future aspects of this topic.

## Re-Decentralize

[Packet switched networking](https://www.computerworld.com/article/2593382/networking-packet-switched-vs-circuit-switched-networks.html) was one of the most important innovations of the internet. It allowed data to be sent through multiple pathways and arrive at its destination regardless of variables like file size. Packet switching allowed robust operation and decentralization. Communication was more robust and cheap because communication pathways could be efficiently shared between multiple users.

Although packet switching is ideal for the military, which prioritizes system robustness due to its need for communication in the worst possible circumstances, it does not suit the needs of private business. Businesses prioritizes tracking users and monetization over robustness. **As business interests took over the internet an almost total regression from the robust, decentralized internet of the past has given way to the** [**FAANG**](https://www.businessinsider.com/what-is-faang) **companies (Facebook, Apple, Amazon, Netflix and Google).** In essence, the internet has been de-invented!

### Innovation is...dumb?

One way to restore the internet’s potential to [foster rapid innovation](https://drrichswier.com/2015/03/06/decentralization-dumb-networks-better/) would be to return to decentralized systems and protocols. This means ending our reliance on cloud platforms. Oddly, smart networks (cloud platforms, the old telephone network) make innovation difficult, and slow. Dumb networks like the early internet, allow innovation to happen at the edges and permit some nodes to experiment with new technologies without any need for the rest of the network to follow along.

Today, users are essentially forced to put all their data into a [walled garden](https://medium.com/mediarithmics-what-is/what-is-a-walled-garden-and-why-it-is-the-strategy-of-google-facebook-and-amazon-ads-platform-296ddeb784b1) like Facebook or Google documents. The result is in an internet where The Next Big Thing™ is more difficult to create, even without the instantly lethal opposition of the FAANG companies or network providers.

Further, by piling almost incomprehensible amounts of user data into a few massive systems, the internet and its users are inherently less secure. Although FAANG companies tend to have good security teams, everyone makes mistakes. By collecting all data into massive, centralized stores they have dramatically increased the incentives to hack such data stores.

It’s the digital equivalent of robbing every house on the block –a slow and risky proposition– or robbing the bank. Sure the bank has better security, but if you pull off the heist, the reward makes the increased risk worthwhile. Everyone is putting their most valuable data in a bank but they have no way of truly understanding its security practices.

Decentralized systems are inherently more difficult to mine for data as each node holds only a small portion (except for blockchains). Denial of Service attacks are also less likely as a well designed distributed system will not have any single points of failure.

Fully distributed systems have the added advantage of scaling easily. In a well balanced system the increased demands for bandwidth and storage are offset by the additional resources added when new nodes (computers or devices) join.

### Offline first is the best

Today’s computer services operate on an apparent assumption the internet never goes out or has any issues (something directly contradicted by rule 1 of the [fallacies of distributed systems](https://blogs.oracle.com/developers/post/fallacies-of-distributed-systems)).

Not only is this [simply untrue](https://www.theverge.com/2020/11/25/21719396/amazon-web-services-aws-outage-down-internet)**,** but it makes these services unsuitable for use in emergencies or remote locations. Well-designed systems seek to minimize points of failure, especially single points of failure. **By assuming the internet is always available and working we’ve introduced a single point of failure that puts our fate in the** [**behavior of almost anyone on the planet**](https://webcache.googleusercontent.com/search?q=cache:B_DAoRvwe_8J:https://habr.com/en/companies/qrator/articles/502194/&hl=en&gl=us).

Offline first systems such as [Scuttlebutt](https://scuttlebutt.nz/) and [Git](https://git-scm.com/) (the protocol, not the GitHub service) can provide service without the benefit of an internet connection. Consequently, these systems are more resilient against natural disasters and attacks and preferable for rural areas. This also allows users to limit their exposure to cyberthreats when traveling since they can shut off their WiFi.

### Protocols are Better than systems

Most tasks users currently accomplish using specific programs or services should actually be done using interoperable protocols, or processes that dictate how computers communicate with each other.

For example, consider sending a text-based message. No one likes having to install and juggle dozens of different messaging apps like WhatsApp or Slack to communicate with other people. Consider SMS (text) messaging on your phone, which is the closest thing to an open protocol that currently exists. Though limited to phones, text messaging remains an option for anyone capable of receiving and sending messages.

Several older protocols like NNTP, email and IRC have been used to send text messages between users for decades. Though the protocols lack modern security features, there is no reason a secure single interoperable protocol could not be invented, thus making secure messaging universally available.

Industry has moved away from open protocols primarily due to a capitalistic business environment that demands [unicorn businesses](https://michaeliavihai.medium.com/forget-about-unicorn-startups-investors-are-seeking-for-camels-now-acd847f42a93), tech companies that garner massive investment regardless of their [actual](https://www.nytimes.com/2020/02/06/technology/uber-growth-losses.html) [profitability](https://www.businessinsider.com/airbnb-lost-674-million-in-2018-despite-32-jump-revenue-2020-4). “Success” in this environment tends to be measured by the number of subscribers or users and the amount of data collected within each walled garden.

**Open protocols facilitate the easy movement of information between providers and reduces lock-in effects. This is a great benefit to users, innovators and society, but reduces the “**[**moats**](https://www.investopedia.com/ask/answers/05/economicmoat.asp)**” of which investors are quite fond.**

The current state of affairs is the result of people initially treating the internet as an obscure tech fad. Once internet usage became common people generally assumed it was too novel and widespread to regulate effectively.

Today, users are beginning to pay the price for allowing the ad hoc design of original internet protocols to be the norm.

## Regulation, Legislation, and Insurance

Not all solutions are technical. Most industries, be they engineering disciplines or even just food manufacture, are safer and more reliable as best practices have become codified into standards and laws. Computer science, partly because it is a relatively new industry and partly because its advancements are still occurring, lacks an extensive body of best practices. **Inevitably, however, it will need such regulations.**

### Incentivize Good Engineering Practices

The costs of failure are [rising](https://www.csoonline.com/article/3434601/what-is-the-cost-of-a-data-breach.html). Breaches are [happening more frequently and are larger](https://www.informationisbeautiful.net/visualizations/worlds-biggest-data-breaches-hacks/). Program crashes are evolving from figurative terms to [literal](https://www.thedrive.com/news/37366/why-that-autonomous-race-car-crashed-straight-into-a-wall) [events](https://www.wired.com/story/uber-self-driving-crash-explanation-lidar-sensors/).

Unfortunately, on today’s business-interest led internet, failures are seen as tolerable as long as the cost remains low to the business itself.

The cost to the customers and general public, however, is extremely high. The [*Equifax*](https://arstechnica.com/tech-policy/2020/05/banks-get-their-slice-of-equifax-settlement-individuals-still-waiting/) [*breach*](https://www.marketplace.org/2018/02/28/tech/sen-elizabeth-warren-equifax-may-actually-make-money-breach/) of user data is just one example, and today not even the worst instance. **The only way to get better products, services and internet itself is to ensure the cost of failure for poor, exploitative services becomes intolerable to the businesses creating them.**

Imagine an environment in which programmers are accountable for the code they write. Just as doctors carry malpractice insurance because their mistakes can damage lives, programmers should carry “malprogramming” insurance because their mistakes can have a global impact, particularly when it comes to systems like Google, Facebook, or AWS.

### End Terms of Service and User License Agreements

First, no one reads these for three reasons. There are too many. Each and every piece of software comes with a ToS and these days a privacy statement, each of which is likely quite lengthy.

EULAs (End User License Agreements) and ToS (Terms of Service) docs should be made legally unenforceable or, at the very least, limited in their scope of disclaimers. If a program causes the user to lose data or undermines their privacy, the creator of that program *should* be liable.

Second, they are deliberately thrust in front of us at the most inopportune time possible. If one is installing a new piece of software to because they need to join a video conference in 15 minutes, they are not going to read a lengthy, overly complex ToS agreement before installing the program.

Third, even if a person commits to fully reading every ToS for the products you use (including the [grapes](https://www.vice.com/en/article/m7jm4y/proprietary-grapes-come-with-draconian-end-user-license-agreement) you eat) terms themselves are constantly revised.

**It is literally impossible to stay reasonably informed about the litany of ToS or EULA docs, even with the assistance of services like [Terms of Service; Didn’t Read](https://tosdr.org/) (ToS;DR).**

## Stop Gaslighting the User

Software should be a tool that helps users do things that would be otherwise impossible, such as 3-D printing. It should also help people do tasks that can be done manually faster and easier, such as writing or video editing.

The problem is most software is not designed with the user experience as the primary requirement, or [UX First](https://morethancoding.com/2013/03/12/ux-then-architecture-then-tools/). It is instead developed from the [perspective of the engineering team](https://www.cakewalklabs.com/blog/2020/10/12/why-software-developers-suck-at-ux), who usually work off an intricate mental model of the software. Imagine if houses were built for the convenience of the masons, carpenters, plumbers, electricians, etc. that built them rather than for the family that will live there.

The user experience should be second to no other concern. An exception to this would be software correctness, but that usually leads to a better user experience. Poor user experience isn’t merely a matter of convenience for the user, it can also render software downright [*broken*](https://senryu.pub/afternoonrobot/articles/apple-and-terrible-interface-design) and [dangerous](https://www.zainrizvi.io/blog/how-banks-help-scammers-with-their-bad-ui/).

Given that most of today’s software is written [with the programmer’s needs in mind instead of the user’s](https://www.wired.com/story/power-paradox-bad-software/), that’s not altogether surprising. What that tells us is that if a program is subject to [*frequent “user error” it’s more indicative of deficiencies of the system’s design than a problem with the user*](https://psmag.com/magazine/the-inconvenience-of-norman-doors). After all, **the sole reason software exists is to help humans solve bigger problems faster than they could without it**. This is the main reason to create any technology and we would do well to remember it.

### Don’t give users a reason to bypass security

Most of today’s software systems are relatively easy to breach without any interaction, e.g. [How to steal photos off someone’s iPhone from across the street](https://nakedsecurity.sophos.com/2020/12/02/how-to-steal-photos-off-someones-iphone-from-across-the-street/).

To protect today’s systems, users must constantly add and monitor layers of protection on top of a fundamentally insecure base. It’s the equivalent of erecting walls of thin paper around a bank vault. Because of their fragility, these walls require constant reassessment. Do we have enough walls? Has anyone climbed over one of the walls? Has anyone found a gap between some of the wall panels to slip in through? Has anyone just punched straight through the paper? Knowing the answer to these questions unreasonably falls upon the user.

User education should be reserved for teaching people basic and timeless security principles that can be used to protect a fundamentally secure system. Forcing users to spend time monthly to learn about new flaws in the systems security and spend time examining every incoming message and email has a high operational cost that [interferes with the work they are trying to complete](https://www.schneier.com/essays/archives/2006/04/is_user_education_wo.html). It’s long past time we gave users systems and tools that work properly without so much overhead.

**User education should be a complement to – rather than a replacement for – technical solutions.**

## The VC Lifecycle is toxic

The [switch from defense focused research to corporate funding](https://medium.com/@enkiv2/silicon-valley-hasnt-innovated-since-1978-f98f315f2bf) has been devastating for users and society. Venture Capital has distorted the industry into a gambling parlor where investors place bets hoping a few companies will yield massive returns on their investment. The pressure for unrealistic returns on short timescales leads to some [*truly perverse market distortions and anti-competitive practices*](https://hbr.org/2017/02/a-few-unicorns-are-no-substitute-for-a-competitive-innovative-economy).

The solution is not to have military control of the internet, of course, but rather to [***publicly fund open source technological research***](https://www.economist.com/business/2013/08/31/the-entrepreneurial-state). This is not an anti-business solution, either. In fact, there is a lot of potential for businesses to benefit. For example, we could restore [The Corporate Research Labs](https://blog.dshr.org/2020/05/the-death-of-corporate-research-labs.html) and return to bringing publicly-funded innovations to the market.

## Footnote about decentralized vs. distributed systems

While we tend to agree with this definition of the distinction between [Centralized vs Decentralized vs Distributed Systems](https://berty.tech/blog/decentralized-distributed-centralized/), we’ve also seen the meanings of decentralized and distributed systems swapped in presentations at conferences such as the [Decentralized Web Summit](https://www.decentralizedweb.net/) (all 3 events) and the [Stanford Blockchain Conference](https://cbr.stanford.edu/sbc20/) (2018 and 2020). Thus, we use the terms decentralized and distributed somewhat interchangeably in this article when referring to fully distributed systems in which all nodes are considered equal.
