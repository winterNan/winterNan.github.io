[<35;14;14M---
title: "Accelerating Systems with Programmable Logic Components"
collection: teaching
type: "Graduate course"
permalink: /teaching/asploc
venue: "Uppsala University, Department of IT"
date: 2024-05-01
location: "Uppsala, Sweden"
---

**TL;DR** Join us to gain **hands-on experience in FPGA acceleration**, **neural network optimization**, and **hardware-software co-design**, while mastering the **Xilinx Zynq-7000 FPGA system**! 🚀  
*I have been the course responsible since 2020.*
[Course's webpage at Uppsala University](https://www.uu.se/utbildning/kurs?query=1DT109)

Course description
======

# **Accelerating Systems with Programmable Logic Components**

## **Course Overview**  
**TL;DR** With the increasing computational demands of modern AI applications, FPGA-based accelerators provide a powerful and efficient solution for accelerating neural network workloads.  
This course offers a **holistic understanding of the FPGA design flow**, focusing on **accelerator development using Xilinx's Zynq-7000 FPGA system**.  

### Learn how to do and verify hardware design  
Students will gain hands-on experience in **RTL modeling, synthesis, and verification**, while also exploring **accelerator design space exploration** to **compare software and hardware implementations**, understanding **fundamental design principles** for hardware acceleration, and **developing custom FPGA-based accelerators**.

### Learn how to apply a hardware design to accelerate neural networks  
Beyond hardware development, the course also covers **neural network principles**, enabling students to **design and train their own neural networks in software (Python)**, identify performance bottlenecks, and **accelerate** them using the FPGA knowledge.  

### Final goal  
The final part of the course involves **integrating** custom hardware accelerators into a **heterogeneous FPGA system** consisting of a **CPU collaborating with a user-defined hardware accelerator**.

## **Key Learning Outcomes**  
By the end of this course, students will be able to:  
- **Goal: Understand and master the complete FPGA design flow**, from RTL modeling to hardware synthesis and system integration.  
- **Milestone 1: Write synthesizable Verilog HDL** and verify designs using **SystemVerilog**.  
- **Milestone 2: Identify bottlenecks in a neural network** running on a CPU with software profiling.  
- **Milestone 3: Develop FPGA-based accelerators** for the computational bottleneck in the neural network.  
- **Milestone 4: Integrate a custom accelerator into the Xilinx Zynq-7000 FPGA system**.  
- **Milestone 5: Deploy the complete neural network system on an FPGA**, efficiently offloading bottleneck operations to hardware accelerators.  

## **Course Structure**  

### **1. Introduction to FPGA Design Flow and Xilinx Zynq-7000**  
- Overview of FPGA-based acceleration and its benefits.  
- Understanding the **Xilinx Zynq-7000 FPGA system** architecture.  
- Introduction to **RTL modeling using Verilog**.  
- FPGA **synthesis, place & route, and implementation**.

### **2. Design Verification with SystemVerilog**  
- Importance of hardware verification in FPGA designs.  
- Writing **testbenches using SystemVerilog** for design validation.  
- Functional and timing verification techniques.  

### **3. Neural Network Principles and Bottleneck Identification**  
- **Introduction to deep learning** and neural network algorithms.  
- Training and evaluating a **neural network in Python**.  
- **Profiling and identifying bottlenecks** in neural network computations.  

### **4. FPGA-Based Neural Network Acceleration**  
- Designing a **hardware matrix multiplier** for neural network acceleration.  
- Writing synthesizable **HDL code** for matrix multiplication.  
- **Integrating the hardware accelerator into the FPGA system**.  
- Offloading computationally intensive operations to the accelerator while running non-bottleneck tasks on the CPU.  

### **5. Customizing Your Own FPGA-Based System**  
- Building a **heterogeneous system** on the FPGA with a **CPU and user-controllable accelerator**.  
- **Hardware-software co-design** for optimal performance.  
- Deploying the complete **neural network accelerator system** on the FPGA.  

<!-- ## **Final Project: End-to-End FPGA-Based Neural Network Deployment**   -->
<!-- In this **hands-on** project, students will:   -->
<!-- 1. **Identify bottlenecks** in a neural network running in Python.   -->
<!-- 2. **Design and implement a hardware accelerator (matrix multiplier)** for optimized performance.   -->
<!-- 3. **Integrate the accelerator into the Xilinx Zynq-7000 FPGA system**.   -->
<!-- 4. **Customize an FPGA-based system**, consisting of a CPU and a user-defined hardware accelerator.   -->
<!-- 5. **Deploy the neural network onto the FPGA**, ensuring efficient workload distribution: -->
<!--    - **Non-bottleneck code** runs on the CPU.   -->
<!--    - **Bottleneck operations** are offloaded to the hardware accelerator.   -->

## **Target Audience**  
This course is designed for students, researchers, and professionals interested in FPGA-based accelerator design and hardware-aware AI optimization.  
Prior experience with **Verilog, SystemVerilog, or neural networks** is helpful but not required.  

Course materials
======

*I am the main author for all the slides, lab manuals, and project manuals.*

## Lecture slides

[Lecture 1-Introduction](https://winternan.github.io/files/01_Introduction/introduction.pptx) <br>
[Lecture 2-Motivation](https://winternan.github.io/files/02_Motivating an Accelerating System/motivating.pptx) <br>
[Lecture 3-Verilog I](https://winternan.github.io/files/03_FPGAs, Verilog I/FPGA+Verilog I.pptx) <br>
[Lecture 4-Verilog II](https://winternan.github.io/files/04_FPGAs, Verilog II/Verilog II.pptx) <br>
[Lecture 5-Verilog III](https://winternan.github.io/files/05_FPGAs, Verilog III/Verilog III.pptx) <br>
[Lecture 6-Synthesis I](https://winternan.github.io/files/06_Synthesis I/Syntiesis I.pptx) <br>
[Lecture 7-Synthesis II](https://winternan.github.io/files/07_Synthesis II/Synthesis II.pptx) <br>
[Lecture 8-Verification I](https://winternan.github.io/files/08_Verification I/Verification I.pptx) <br>
[Lecture 9-Verification II](https://winternan.github.io/files/09_Verification II/Verification II.pptx) <br>
[Lecture 10-Neural network I](https://winternan.github.io/files/10_Neural network I/Neural network I.pptx) <br>
[Lecture 11-Neural network II](https://winternan.github.io/files/11_Neural network II/Neural network II.pptx) <br>
[Lecture 12-Convolutional neural network](https://winternan.github.io/files/12_Convolutional neural network/Convolutional neural network.pptx) <br>

## Lab manuals

[Lab1-Interface with a keyboard](https://winternan.github.io/files/Lab/Lab1.pdf) <br>
[Lab2-Implement a hardware matrix multiplier](https://winternan.github.io/files/Lab/Lab2.pdf) <br>
[Lab3-Verification your matrix multiplier](https://winternan.github.io/files/Lab/Lab3.pdf) <br>


## Project manuals

[Project 1-Training a NN with Python](https://winternan.github.io/files/Project/Training a NN with Python.pdf) <br>
[Project 2-MiniZed Tutorial Application](https://winternan.github.io/files/Project/MiniZed Tutorial Application.pdf) <br>
[Project 3-PS-PL Communication](https://winternan.github.io/files/Project/PS_PL_communication.pdf) <br>
[Project 4-Debug and profile python code](https://winternan.github.io/files/Project/Pudb.pdf) <br>
