---
title: "TSOPER: Efficient Coherence-Based Strict Persistency"
collection: publications
category: conferences
permalink: /publication/2021-tsoper
excerpt: 'Protocols;Program processors;Nonvolatile memory;Computational modeling;Semantics;Coherence;Computer architecture;non-volatile memory;persistent memory;persistency;total store order;coherence <br><b>Top conference publication-HPCA</b> <br><b>I am co-first author</b>'
date: 2021-02-27
venue: '2021 IEEE International Symposium on High-Performance Computer Architecture (HPCA)'
slidesurl: 'https://ieeexplore.ieee.org/document/9407141'
paperurl: 'https://ieeexplore.ieee.org/document/9407141'
citation: 'P. Ekemark, <b>Y. Yao</b>, A. Ros, K. Sagonas and S. Kaxiras, "TSOPER: Efficient Coherence-Based Strict Persistency," 2021 IEEE International Symposium on High-Performance Computer Architecture (HPCA), Seoul, Korea (South), 2021, pp. 125-138, doi: 10.1109/HPCA51647.2021.00021.'
---
We propose a novel approach for hardware-based strict TSO persistency, called TSOPER. We allow a TSO persistency model to freely coalesce values in the caches, by forming atomic groups of cachelines to be persisted. A group persist is initiated for an atomic group if any of its newly written values are exposed to the outside world. A key difference with prior work is that our architecture is based on the concept of a TSO persist buffer, that sits in parallel to the shared LLC, and persists atomic groups directly from private caches to NVM, bypassing the coherence serialization of the LLC.To impose dependencies among atomic groups that are persisted from the private caches to the TSO persist buffer, we introduce a sharing-list coherence protocol that naturally captures the order of coherence operations in its sharing lists, and thus can reconstruct the dependencies among different atomic groups entirely at the private cache level without involving the shared LLC. The combination of the sharing-list coherence and the TSO persist buffer allows persist operations and writes to non-volatile memory to happen in the background and trail the coherence operations. Coherence runs ahead at full speed; persistency follows belatedly.Our evaluation shows that TSOPER provides the same level of reordering as a program-driven relaxed model, hence, approximately the same level of performance, albeit without needing the programmer or compiler to be concerned about false sharing, data-race-free semantics, etc., and guaranteeing all software that can run on top of TSO, automatically persists in TSO.
