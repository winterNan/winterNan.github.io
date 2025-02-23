---
title: "Statically-linked WHISPER benchmarks"
collection: tools
type: "Tool"
permalink: /tools/2021-static-whisper
venue: "github.com/winterNan/gem5-whisper"
date: 2021-08-01
location: "Stockholm, Sweden"
---

WHISPER benchmark suite with static linkage.

[Github link for the project](https://github.com/winterNan/gem5-whisper)

## Overview

This repository contains a modified version of the **WHISPER benchmark suite** that enables **static linkage**. The modifications ensure that all dependencies are linked statically, making the benchmark suite more portable and reducing runtime dependency issues.

The tool has been tested on:

- **Ubuntu 18.04**
- **gem5 20.1**

## Features

- **Static Linking**: Eliminates runtime dependency issues by linking all required libraries at compile time.
- **gem5 Compatibility**: Verified to work with **gem5 20.1**, ensuring smooth integration with system simulations.
- **Ubuntu 18.04 Support**: Successfully tested on this platform to guarantee stability and reliability.

## Installation

To build and install the modified WHISPER benchmark suite, follow these steps in the repo's README

## What is WHISPER

**WHISPER**, or **Wisconsin-HPL Suite for Persistence** is a comprehensive benchmark suite for emerging persistent memory technologies. For more details:

*An Analysis of Persistent Memory Use with WHISPER*. ASPLOS'17.

Sanketh Nalli, Swapnil Haria, Mike Swift, Mark Hill, Haris Volos, Kim Keeton.

research.cs.wisc.edu/multifacet/whisper/
