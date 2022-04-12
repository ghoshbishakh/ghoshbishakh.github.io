---
layout: post
title:  "Resources on pairing based cryptography and MPC"
date:   2022-04-12 12:00:14 +0530
categories: blogpost
comments: true
tags: [guides, linux, cryptography, research]
---

In this post is to aggregate all the resources I used to learn about MPC and pairing based cryptography.

<!--more-->

## MPC

1. SPDZ paper

    Damgård, Ivan, Valerio Pastro, Nigel Smart, and Sarah Zakarias. "Multiparty computation from somewhat homomorphic encryption." In Annual Cryptology Conference, pp. 643-662. Springer, Berlin, Heidelberg, 2012.
    [https://eprint.iacr.org/2011/535](https://eprint.iacr.org/2011/535)

2. Extending SPDZ to eupport elliptic curve operations.

    Smart, Nigel P., and Younes Talibi Alaoui. "Distributing any elliptic curve based protocol." In IMA International Conference on Cryptography and Coding, pp. 342-366. Springer, Cham, 2019.
    [https://eprint.iacr.org/2019/768](https://eprint.iacr.org/2019/768)

3. Also extends SPDZ for EC and secures DNSSEC

    Dalskov, Anders, Claudio Orlandi, Marcel Keller, Kris Shrishak, and Haya Shulman. "Securing DNSSEC keys via threshold ECDSA from generic MPC." In European Symposium on Research in Computer Security, pp. 654-673. Springer, Cham, 2020.
    Paper: [https://eprint.iacr.org/2019/889](https://eprint.iacr.org/2019/889)
    Implementation:
    [https://github.com/data61/MP-SPDZ/tree/master/ECDSA](https://github.com/data61/MP-SPDZ/tree/master/ECDSA)

## Pairings

1. Pairings for beginners by Craig Costello

    [Link to the book](https://static1.squarespace.com/static/5fdbb09f31d71c1227082339/t/5ff394720493bd28278889c6/1609798774687/PairingsForBeginners.pdf).


