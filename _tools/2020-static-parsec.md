---
title: "Statically-linked PARSEC-3.0 benchmarks"
collection: tools
type: "Tool"
permalink: /tools/2012-static-parsec
venue: "github.com/winterNan/gem5-parsec"
date: 2020-08-01
location: "Stockholm, Sweden"
---

In this project I modified PARSEC-3.0 benchmarks using static linking with gem5 hooks for the x86_64 architecture.

[Github link for the project](https://github.com/winterNan/gem5-parsec)

The [PARSEC](http://parsec.cs.princeton.edu) (Princeton Application Repository for Shared-Memory Computers) benchmark suite, developed by Princeton University, is a comprehensive collection of over 13 parallel applications representing a variety of emerging workloads. These applications are multithreaded using one or more of the following programming models: **Pthreads, OpenMP, and Intel TBB**.  
To see which applications support which programming models, refer to the overview table on PARSEC's [Wiki page](http://wiki.cs.princeton.edu/index.php/PARSEC).

---

## **Project Overview**

In this project, I have **ported the PARSEC-3.0 workloads to static linking** for execution in **gem5**.  

### **Why Static Linking?**

Static linking allows all the necessary libraries to be included in the binary. This approach preserves call stack information in the `.eh_frame` section, which is critical for backtracing the application call stack in gem5.  
Without static linking, backtracing becomes challenging, especially in a **full-system simulation environment**, where memory-mapping information resides in the simulated OS’s memory space.

---

## **My Contribution**

The primary contribution can be found in the following commit: [0f6bf13](https://github.com/winterNan/gem5-parsec/commit/0f6bf132ef36cc9692b6cbc9e72ca5ed5b1ff05a).  

### **Challenges Overcome**

While the ideal approach is to use the `-static` flag during compilation and linking with GCC, practical issues arise due to the following reasons:  
- Different PARSEC benchmarks depend on various external libraries.  
- These libraries use different build systems and dependencies.  
- Some benchmarks have **corner cases in their `.ctor` sections** that require manual construction when using static linking.

---

## **How to Use the New Binaries**

0. Run `git clone https://github.com/winterNan/gem5-parsec`
1. Run `install.sh` located in the root folder of the project.  
2. Update the script by replacing `your_root_pwd` with your actual sudo password.  

Once these steps are completed, the new binaries should be ready for use in gem5.  

---  

## **Previous Works on Static PARSEC**

There have been previous efforts to compile **PARSEC-2.1** with static linking, which can be found [here](https://www.cs.utexas.edu/~cart/parsec_m5/). However, these efforts have certain limitations:

- The PARSEC version used is outdated (**PARSEC-2.1**).
- The target binaries were specifically prepared for the **Alpha-21364** architecture, which is no longer widely used.

Despite these limitations, I acknowledge that this previous work provided valuable insights and inspiration for my own efforts in porting **PARSEC-3.0** to static linking for gem5.

