---
layout: page
title: CloudChain
subtitle: Decentralized Cloud Federation Marketplace
---

## Cloud Federations

Cloud Federations are collaborations among different Cloud Service Providers (CSPs), whereby they agree to mutually share their own resources for their overall benefit. It has several advantages such as:

* Sharing of computing resources.
* Aggregation of unused resources from different service providers.
* Bringing services closer to customers by maximizing the geographical dispersion.
* Tackling data protection laws that requires data to be stored within country’s boundary.

![cloudfederation]("/assets/cloudchain/federation.png")


However, the existing federation architectures are all centralized, and based on a central agent called the federation broker. All the federation activities like scheduling of user requests, billing, dispute resolution, profit sharing etc., are handled by this single trusted agent. This introduces several limitations such as:

1. Profit sharing with central broker
2. Biasness of broker towards certain service providers
3. Price manipulation (Broker can be malicious)
4. Unfair dispute resolution
5. Central point of failure


### Objective

#### Remove the central brokerand design a transparent distributed system for cloud federation.

### Challenges

* A decentralized platform for exchange of infrastructure resources (VM) must be developed.
* The system must allow coordination between service providers while enforcing FLA, without the help of any broker.
* Cloud functions such as VM Placement and VM Migration needs to be coordinated over the decentralized architecture.
* Fair ordering of transactions must be ensured

### Proposed Solution
#### Permissioned blockchain based decentralized exchange for democratic cloud federations: CloudChain
