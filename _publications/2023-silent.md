---
title: "Silent Stores in the Battery-less Internet of Things: A Good Idea?"
collection: publications
category: conferences
permalink: /publication/2023-silent
excerpt: 'sensor network;store buffer;silent store;low power devices'
date: 2023-12-15
venue: 'Proceedings of the 2023 International Conference on Embedded Wireless Systems and Networks (EWSN)'
slidesurl: 'https://dl.acm.org/doi/10.5555/3639940.3639945'
paperurl: 'https://dl.acm.org/doi/10.5555/3639940.3639945'
citation: 'Weining Song, Stefanos Kaxiras, Luca Mottola, Thiemo Voigt, and Yuan Yao, ''''Silent Stores in the Battery-less Internet of Things: A Good Idea?'''' in Proceedings of the 2023 International Conference on embedded Wireless Systems and Networks (EWSN), Association for Computing Machinery, New York, NY, USA, 40-45.'
---
We present experimental results investigating the use of silent stores in the battery-less Internet of Things (IoT). Silent stores occur in a program when the value being written onto memory exactly matches the memory content; general-purpose computing systems exploit silent stores to improve memory throughput. Battery-less IoT devices, on the other hand, rely on ambient energy harvesting as the only power source. Erratic energy patterns, however, cause frequent power failures, rendering executions intermittent and thereby requiring the use of energy-hungry non-volatile memory (NVM) to persist program states. The question we seek to answer is whether intermittently-computing IoT devices may reap any benefit from silent stores – or from a related variation called temporary silent store – as a way to save energy by sparing NVM operations. Our results point to a negative answer. Albeit in principle we observe copious (temporary) silent stores in staple battery-less IoT benchmarks, resource limitations of IoT devices and the features of modern NVM technology, such as FRAM, largely neutralize their impact on the energy figures in practice. In actual executions, for example, we measure a mere 2.2% energy consumption improvement, on average. The (negative) results we present here, obtained based on common IoT architectures such as ARM Cortex M* and MSP430 microcontrollers, raise awareness on the features of battery-less IoT devices and inform future research efforts.
