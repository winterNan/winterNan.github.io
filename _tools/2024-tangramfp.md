---
title: "TangramFP"
collection: tools
type: "Tool"
permalink: /tools/2024-tangramfp
venue: "github.com/winterNan/tangramfp"
date: 2024-08-01
location: "Uppsala, Sweden"
---

TangramFP: Energy-Efficient, Bit-Parallel Multiply-Accumulate for Deep Neural Networks

**Code repository for the paper**  
**[TangramFP: Energy-Efficient, Bit-Parallel, Multiply-Accumulate for Deep Neural Networks](https://ieeexplore.ieee.org/document/10763567)**  
Published in **IEEE 36th International Symposium on Computer Architecture and High Performance Computing (SBAC-PAD), 2024**  
🎉 **Best Paper Candidate!**  

🔗 **[GitHub Repository](https://github.com/winterNan/TangramFP)**  

---

## Repository Contents

This repository includes the full **TangramFP** implementation across multiple levels:

### 1. PyTorch Wrapper for TangramFP  
A PyTorch-based implementation supporting:
   - **Matrix Multiplication**
   - **Convolution**
   - **Linear Layer**
   - **Depth-wise Convolution**  

### 2. Backend C Code for TangramFP  
   - Supports **16-bit** and **[NEW!] 32-bit** floating-point precision.  

### 3. Verilog Code for TangramFP MAC Units  
   - Implementations for **16-bit** and **32-bit** MAC units.  
---

## How to Use

Follow the **README** in the repository for setup, build, and usage instructions.
