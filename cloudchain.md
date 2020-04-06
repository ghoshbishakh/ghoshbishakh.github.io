---
layout: page
title: CloudChain
subtitle: Blockchain based Decentralized Cloud Federation Marketplace
---

Publication: **IEEE SCC 2019** - Bishakh Chandra Ghosh, Sourav Kanti Addya, Anurag Satpathy, Soumya K. Ghosh and Sandip Chakraborty *[Towards a Democratic Federation for Infrastructure Service Provisioning](https://ieeexplore.ieee.org/document/8813913)*  | [PDF](/assets/CloudChain.pdf) | [Presentation](/assets/CloudChainPPT.pdf)
<hr>


## Cloud Federations

Cloud Federations are collaborations among different Cloud Service Providers (CSPs), whereby they agree to mutually share their own resources for their overall benefit. It has several advantages such as:

* Sharing of computing resources.
* Aggregation of unused resources from different service providers.
* Bringing services closer to customers by maximizing the geographical dispersion.
* Tackling data protection laws that requires data to be stored within country’s boundary.

![cloudfederation](/assets/cloudchain/federation.png)


However, the existing federation architectures are all centralized, and based on a central agent called the federation broker. All the federation activities like scheduling of user requests, billing, dispute resolution, profit sharing etc., are handled by this single trusted agent. This introduces several limitations such as:

1. Profit sharing with central broker
2. Biasness of broker towards certain service providers
3. Price manipulation (Broker can be malicious)
4. Unfair dispute resolution
5. Central point of failure

![broker based federation](/assets/cloudchain/brokerbased.png)


## Objective

### Remove the central brokerand design a transparent distributed system for cloud federation.

![centralized to decentralized federation](/assets/cloudchain/centralizedtodecentralized.png)


## Challenges

* A decentralized platform for exchange of infrastructure resources (VM) must be developed.
* The system must allow coordination between service providers while enforcing FLA, without the help of any broker.
* Cloud functions such as VM Placement and VM Migration needs to be coordinated over the decentralized architecture.
* Fair ordering of transactions must be ensured

## Proposed Solution
### Permissioned blockchain based decentralized exchange for democratic cloud federations: CloudChain
![cloud chain architecture](/assets/cloudchain/architecture.png)

CloudChain is a permissioned blockchain based decentralized marketplace where CSPs can exchange their resources without the involvement of any federation broker.

The high level operations that the CSPs can perform on the exchange are:

(1) Offer a new resource (2) Modify an existing offering (3) Query for available resources offerings (4) Request to rent a resource (5) Grant/Reject a request


We implemented the system using Hyperledger Fabric and evaluated its performance in a tetbed setup. The results show that there is marginal overhead in resource provisioning time due to blockchain transaction processing latency, however we gain in terms of transparency in the federation processes. We also see some interesting results due to the fact that user request scheduling is now not done by a centralized broker, but by individual CSPs. This brings increased fairness to the scheduling process because of the decentralized CloudChain architecture. 

![cloud chain testbed and results](/assets/cloudchain/results.jpg)

