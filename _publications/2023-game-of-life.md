---
title: "Game-of-Life Temperature-Aware DVFS Strategy for Tile-based Chip Many-Core Processor"
collection: publications
category: manuscripts
permalink: /publication/2023-game-of-life
excerpt: 'Dynamic voltage scaling, multiprocessor interconnection, automata.'
date: 2023-02-13
venue: 'IEEE Journal on Emerging and Selected Topics in Circuits and Systems (JETCAS, Volume: 13, Issue: 1, March 2023)'
slidesurl: 'https://ieeexplore.ieee.org/document/10043707'
paperurl: 'https://ieeexplore.ieee.org/document/10043707'
citation: '<b>Y. Yao</b>, "Game-of-Life Temperature-Aware DVFS Strategy for Tile-Based Chip Many-Core Processors," in IEEE Journal on Emerging and Selected Topics in Circuits and Systems, vol. 13, no. 1, pp. 58-72, March 2023, doi: 10.1109/JETCAS.2023.3244763'
---

We propose a novel technique which exploits the concept of Game-of-Life (GoL) originated from cellular automata to achieve a light-weight yet effective temperature-aware DVFS for tile-based Chip Many-Core Processors (CMPs). The proposed DVFS mechanism is based on the strategy that a CMP V/F region, consisting of several tiles sharing the same V/F level, first determines the local V/F level according to core and uncore performance interests of the resident tiles. Then, based on the temperatures of both local and neighbor V/F regions, the performance based V/F policy is revised towards thermal safety, minimizing the occurrence of chip thermal urgency threshold (TUT) violation. As such, our temperature-aware DVFS strategy implements an ecosystem where V/F regions try to secure as much performance as possible, but a sustainable thermal environment for itself and neighbor regions is also maintained, essentially mimicking the behavior of living cells that co-exist harmonically in a common environment. Full-system evaluations with PARSEC and SPEC OMP2012 multi-threaded benchmarks show that our GoL based temperature-aware DVFS technique can averagely reduce TUT violation by 43.4% (59.5% in maximum) compared to a thermal-oblivious DVFS mechanism and by 20.7% (31.9% in maximum) compared to a local-temperature aware DVFS mechanism, with graceful performance degradation.
