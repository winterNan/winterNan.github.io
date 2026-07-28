---
title: "NoCWalk: In-Network Page Walks for Concurrent Data Structure Workloads on Multicore"
collection: publications
category: conferences
permalink: /publication/2026-nocwalk
excerpt: 'Virtual memory; page-table walks; networks-on-chip; concurrent data structures'
date: 2026-05-01
venue: '2026 ACM International Conference on Computing Frontiers (CF)'
venue_shortname: 'CF'
slidesurl: ''
paperurl: 'https://dl.acm.org/doi/full/10.1145/3801487.3801813'
citation: '<b>Y. Yao</b>, S. Li, R. Aligholipour and S. Kaxiras, "NoCWalk: In-Network Page Walks for Concurrent Data Structure Workloads on Multicore," 2026 ACM International Conference on Computing Frontiers (CF), Catania, Italy, 2026.'
---

Concurrent data-structure workloads on multicores stress the virtual-address translation path, where page-table walks add latency on the critical path. NoCWalk moves page-table walks into the on-chip network (NoC), performing translation closer to where the data resides and overlapping it with on-chip communication.

The result is reduced address-translation latency for pointer-heavy, concurrent workloads, treating the interconnect as an active participant in the memory-system path rather than a passive transport.
