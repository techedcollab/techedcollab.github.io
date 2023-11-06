---
author:
- Elio Grieco
- Christina Eichelkraut
excerpt: "Why RFC3161 is superior to blockchain for digital notary in every regard."
reading_time: 11
image: /assets/images/articles/geeks_bearing_grifts.jpg
---

*Why RFC3161 is superior to blockchain for digital notary in every regard.*

![Giant wooden replica of a trojan horse. ]({{page.image}})

Wikimedia

Blockchain has been advertised to the world as the Solution to Every Problem™ with some going so far as to call it the basis for “the next internet." This extreme hype couldn’t be further from the truth. Blockchains have severe limitations as a data structure including scalability, privacy and data removal issues. The Trojan horse of the cybercommunity and general public, blockchain has been welcomed into society with open arms as people scramble to reap its purported benefits. Ultimately, its gifts could very well prove to be the world's downfall.

Much is made of the “immutability” of blockchains. In theory, this makes them the perfect data structure to prove that a given datum (piece of information) existed at a particular point in time, also known as digital notary. In reality, this [*digital snake oil*](https://www.theregister.com/2018/11/30/blockchain_study_finds_0_per_cent_success_rate/) is more like Medusa, turning projects that attempt to utilize this ill-suited data structure to stone.

Since even those normally skeptical of blockchain technology readily accept blockchain’s suitability to be used as a digital notary system, it’s become necessary to illustrate how blockchain fails to deliver even this purported benefit. A benefit that *can* be enjoyed from traditional algorithms developed two decades ago.

## RFC3161: A better digital notary system

With only a small modification to [*RFC3161: Internet X.509 Public Key Infrastructure Time-Stamp Protocol (TSP)*](https://www.ietf.org/rfc/rfc3161.txt), we can dramatically improve upon blockchain’s performance, security, privacy and reliability in a digital notary use case. The fact that so few blockchain proponents are unfamiliar with this RFC, published in 2001 and freely accessible, should engender a healthy skepticism about the many alleged benefits of blockchain for digital notary and other applications.

All that is required is to use multiple Time Stamp Authorities (TSAs) to request Time-Stamp Tokens (TSTs). The validity of that TST set can then be judged based on user-defined quorum (majority agreement).

The [*RFC3161 proposal*](https://www.ietf.org/rfc/rfc3161.txt) states:

*In order to associate a datum with a particular point in time, a Time Stamp Authority (TSA) may need to be used. This Trusted Third Party provides a "proof-of-existence" for this particular datum at an instant in time.*

*The TSA's role is to time-stamp a datum to establish evidence indicating that a datum existed before a particular time. This can then be used, for example, to verify that a digital signature was applied to a message before the corresponding certificate was revoked thus allowing a revoked public key certificate to be used for verifying signatures created prior to the time of revocation. This is an important public key infrastructure operation. The TSA can also be used to indicate the time of submission when a deadline is critical, or to indicate the time of transaction for entries in a log. An exhaustive list of possible uses of a TSA is beyond the scope of this document.*

### A Single Point of Trust

The supposed advantage of blockchain is that it is “trustless,” meaning one doesn’t have to trust any of the systems that comprise the blockchain. But the very idea of a “trustless” system is somewhat absurd. All systems, even those built for use by adversarial parties, must have trust anchors to be meaningfully useful. It’s helpful to “trust map” a system and determine the trust anchors and how that trust is transferred to other parts of the system.

Blockchain uses an open-membership, group-amortized trust model. The key assumption is that a quorum of miners are not colluding against other users of the blockchain. Its primary vulnerability is the dreaded 51 percent or 34 percent attack (depending on the consensus algorithm), when a quorum of the nodes on a blockchain break this assumption and collude against the rest of the system. When this occurs, there is no longer any guarantee that any of the data or other assertions about the system are valid.

Conversely, RFC3161 only proposed using a single Time Stamp Authority (TSA) to obtain a Time-Stamp Token (TST) for a given datum. This results in only a single point of trust but that limitation is quite easy to fix.

### A Better Trust Map

Using multiple TSAs to obtain TSTs for the same datum, and using a quorum of the TSTs (rather than trusting any single TST) gives us a far more robust trust map than “trustless” based systems such as blockchain. In fact, the parties involved in a transaction can choose a mix of TSAs, thus giving each party multiple trusted TSTs. The number of TSTs that can be used are only limited to the number of TSAs available.

Trust is a complicated topic, well beyond the scope of this article. To simplify and clarify the discussion, we’ll use the following definition of trust.

**Definition of trust**: The ability to predict whether an entity will act for or against your benefit, even when you will never be aware of their actions.

Involved parties being able to choose points of trust has several benefits:

**TSAs are chosen and “locked” by signatories.** Since the TSAs are acting as trust anchors, this allows greater confidence that these TSAs will act in the desired manner. The trust of the TST is dependent only on the trust of these TSAs at the time that the TST was issued. The future trustworthiness of TSTs does not depend on future actions or the continued participation or existence of the TSAs involved.

The open-membership aspect of a blockchain means the actions of the miners who collectively control the blockchain can change at any time in unpredictable ways. Unfortunately, later loss of trust in the system can jeopardize the trust in any proofs of existence previously recorded.

**The system is harder to attack.** Because these are disparate systems and can be chosen at the preference of the parties or even at random, trust in the final TST set can be decided by a quorum. This quorum can be mutually agreed upon or it can be separate for each party; a quorum of each party’s TSAs is valid for that party.

**A Denial of Service (DoS) attack for time-stamping on the internet becomes an extremely difficult attack to execute.** For already signed documents it’s impossible due to the ability to verify documents offline. For new \*Time-Stamp Requests (TSRs), a DoS attack becomes rather expensive as it would require knowing which set of TSAs the parties signing a document would use and what backup TSAs the signatories would likely switch to in the event that their primaries were unreachable. Further, the attack would also require that the signers were not using any internal TSAs that would be inaccessible to attackers.

**Participants can choose providers** (TSAs) which they trust and thus trust their signatures even if they do not trust those chosen by the counterparty. Each party can choose a subset of TSAs that they prefer.

**Privacy is better** as not all TSRs go through a single system. Further, different TSAs can be used depending on the sensitivity of the data being signed. Unlike with blockchain, there is no need to publicly broadcast the generated TSTs.

### Throughput

Blockchain struggles with transaction throughput and is extremely wasteful. This is true even for newer, higher throughput blockchains using proof of work, proof of stake, proof of burn, and other “proof of X” consensus algorithms.

TSP, on the other hand, is highly efficient and has practically unlimited throughput. The core operation of a TSA’s systems are simply performing digital signatures so the following benefits accrue:

**There is no practical limit on global throughput for TSRs.** The limit on how many signatures a node can perform can be extended by increasing node capabilities with a better computer or installing specialized co-processors.

**TSAs can scale horizontally by simply adding more nodes.** There is no fully connected graph impediment to scaling, as nodes do not need to coordinate with other nodes. And, since there is no issue with cross-talk between nodes, there isn’t really a practical limit to horizontal scalability.

**Global TSP capacity can be increased by adding TSAs.** Since multiple TSAs are used at the discretion of the signatories, adding new TSAs adds more global capacity.

**No single TSA will have to bear the burden of all global signatures.** Even though there will be overlap among TSAs signing the same datum, it’s unlikely that most users will want to use more than a few tens of TSAs at a time. Thus any single TSA is unlikely to ever see more than a fraction of the total TSP traffic at any given time.

### Scaling and Storage

Another benefit of this scheme is that, as with a physical notary, storage needs are quite small.

**TSAs need not store TSTs to ensure validity or verification.** While TSAs could conceivably keep a record of the TSRs they receive, this is not necessary to ensure the validity of TSTs. **TSTs are small, so user-side storage is easy.** Users can keep copies of them next to the data that they validate, even on mobile devices with limited storage.

In contrast, blockchains are appends-only data structures that constantly grow. The validity of digital notary entries on the blockchain is based on their position and existence in the chain. Thus it is critical that miners continue to operate to maintain the validity of these digital notarizations.

The more popular a blockchain becomes, the more insane its storage requirements become. Further, because each full node in a blockchain system must maintain and be capable of processing the entire chain, there is a lot of needless duplication of data. While some redundancy is desired, full redundancy at every node is needlessly wasteful. This also makes running blockchain nodes dramatically more costly and wasteful over time.

**Validation of TSTs does not require communication with TSAs.** This allows offline validation, which means that a DoS of validation is unlikely, whether intentional as in an attack or due to a network outage. It also means information is not leaked to TSAs after the initial TSR, making analytics and other snooping from TSAs near impossible.

### Data Privacy

There are further benefits to not needing to store all tokens in a single data store:

**Data privacy is far superior with distributed, disconnected storage of TSTs.** Even though hashes are opaque, hashes can still be correlated with sensitive data or used to do network analysis on parties interested in the same hash. By not making hashes globally available, user privacy is far superior to blockchain based systems. Chain analysis is impossible as there is no chain or other global data store to analyze.

**Breaches and disclosure of activity between parties are minimized.** Any breach of data would have to happen among parties signing data, as TSAs would only receive hashes and could discard them within seconds of the TSTs being issued.

**Correlational attacks are much harder, and time-bound** as the correlation must be carried out as the requests or responses are traveling across the network.

**Validation does not leak any information** about which parties are checking the validity of a given TST and thus showing interest in the corresponding datum. As discussed below, offline validation is easy to do with TSP so checking the validity does not require communication with external parties.

By contrast, blockchains store all data on one shared “chain.” As a result, anyone who decides to set up a full node will get a copy of the full chain. That person can then perform any analysis they choose on this data without making any external requests and thus making it difficult to detect reconnaissance.

**Paradoxically, this gives blockchains all of the downsides of both centralized and decentralized systems: all the data is in one place, and that place is potentially anywhere and everywhere.**

### Offline Validation

Since the validity of TSTs rests on their cryptographic signature and the status of the key with which it was created, offline validation is trivial.

**Users can easily download the certificates for TSAs of interest and any relevant Certificate Revocation Lists (CRLs)** because the certificates and CRLs are relatively small. As keys are unlikely to change too frequently, the amount of storage necessary to validate the vast majority of TSTs should be easily manageable on modern devices less than 10 years old. Most modern web browsers already include such lists of “root certificates” for Transport Layer Security (TLS) connections.

**Given the appropriate TSA certificates and CRLs users are able to validate any TST.** This includes any TSTs created up until the moment of certificate download, so long as any such certificate has not been revoked by a CRL**.**

**Validating TSTs can occur well into the future, as long as the TSTs, TSA certificates and CRLs are available.** This remains true even if the original TSA systems that issued the TSTs have been decommissioned or are otherwise unavailable, and all without any loss of trust in the TST.

The one exception to this is if a key was compromised before a given TST was issued. As long as CRLs are issued cautiously, this should be easy to detect. Further, the use of multiple TSAs means that even if some keys are compromised, other TSTs still remain valid.

Key compromise is also a catastrophic problem for blockchain based systems. Further, if chain rewriting occurs it becomes hard to trust anything on the blockchain after the rewriting has been detected. While it would be possible to use multiple blockchains to mitigate this issue as we propose with TSP, the inefficiency of doing so should give one pause. Blockchain is already horrifically inefficient without any encouragement.

### System Attack Resistance

Because TSAs can be completely independent, the overall system is more resilient in the following ways:

**Network partitions do not cause problems for TSAs**. In fact, private TSAs, completely inaccessible from the general internet, can be used simultaneously with public TSAs to increase security. TSTs issued from private TSAs can even be verified by external entities with no direct access to the TSA. Only the relevant certificates and CRLs are necessary.

**A mix of public and private TSAs can be used** to make it easier to detect tampering and attempts to issue fraudulent TSTs. Because this mix is difficult for an attacker to predict, effectively intercepting all TSQs without being detected is extremely difficult.

**Denial of Service (DoS) attacks are much harder** as multiple, independent systems must be simultaneously attacked. Further, knowing which such systems to attack to prevent a given set of TSTs from being created requires intimate knowledge of the target.

**It is harder to attack and invalidate or modify existence proofs.** While blockchain proponents like to say that the blockchain is immutable, the truth is that it is simply rather expensive to mutate. A large enough attacker can indeed modify the blockchain via selfish mining, 51 percent or 34 percent attacks.

**Private storage of TSTs means tampering with or overwriting TSTs requires access to the systems of multiple parties**. This also allows “cold storage” of TSTs on disconnected or unpowered storage devices which makes online attacks impossible.

### Better Time Granularity

**With RFC3161 extremely fine temporal granularity can be achieved**, down to the technical limits of the underlying network medium. As TSTs can also be private and located on the local network, these latencies can be extremely low. This makes TSTs ideal for applications with a need for extremely fine temporal granularity.

Blockchains tend to have a fixed block interval below which time-stamping is not possible. This makes them unsuitable for applications requiring fine temporal granularity.

## RFC3161 is Better

The over-hype of blockchains has caused people to forget computer science and cybersecurity fundamentals. With trust mapping of systems and proper analysis of algorithms and data structures, it’s possible to build systems that easily handle global scale, are far more robust against attacks, and don’t waste whole countries' worth of resources to achieve these benefits.

The industry has fully embraced the Worse is Better™ mantra. Except that worse is actually worse.

## Glossary

- **Blockchain** - A data structure of data blocks linked via cryptographic hashes, making it hard to mutate or change.

- **CRL** - Certificate Revocation List, a list of revoked cryptographic certificates, the times they were revoked, and the reason they became invalid.

- **Denial of Service** - Anything that prevents users from being able to able to use a service or system. Sometimes a deliberate attack, other times due to system failures.

- **Digital notary system** - A system to prove that a datum (specific piece of data) existed at a previous point in time.

- **Trust** - The ability to predict whether an entity will act for or against your benefit, even when you will never be aware of their actions.

- **Points of trust/Trust Anchors** - Individuals, organizations or parts of a system that you must trust in order to trust the whole system.

- **TSA** - Time-Stamp Authority, a company or organization running servers providing X.509 Time-Stamp Protocol services.

- **TSP** - Time-Stamp Protocol, the overall scheme for providing digital notary services.

- **TSR** - Time-Stamp Request, a request to issue a time stamp on a datum (see footnote below). **TST** - Time-Stamp Token, the actual cryptographically verifiable token proving the existence of a datum at a particular time, returned by a TSR.

- **Quorum** - An acceptable number of parties needed to trust a decision. Usually a majority.

### Note: TSR Confusion

*In the original RFC3161 section 3.2, second paragraph, Time-Stamp Request, Response, and Reply are all discussed. This leaves the acronym TSR rather muddled. For our purposes in this article, we are using TSR as Time-Stamp Request. Furthermore, we are assuming that all requests successfully generate Time-Stamp Tokens in response. In a real-world implementation, edge cases that would result in an error would need to be handled appropriately, but this detail is not useful in the above discussion.*
