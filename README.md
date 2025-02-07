# RtABE_computational_analysis
This project provides relavant code for analyzing the **efficiency and off-target effects of RtABE**. 

Author: Guo-Hua Yuan

Email: yuanguohua2020@sibs.ac.cn

---
## 1. Features  
- **Editing Efficiency Calculation** `scripts_for_base_substitution_analysis`: Evaluates RtABE editing efficiency at target sites with the deep sequencing data.
- **Off-Target Effect Analysis** `scripts_for_RNA_editing_analysis`: Detects potential off-target editing events with the whole-transcriptome sequencing data.

---

## 2. Prerequisites  
Before running this analysis, install the following tools:  
- **CFBI**: [https://github.com/YangLab/CFBI](https://github.com/YangLab/CFBI)  
- **RADAR**: [https://github.com/YangLab/RADAR](https://github.com/YangLab/RADAR)

---

## 3. Usage  

### **PART 1: Editing Efficiency Calculation**  
- **Directory**: `scripts_for_base_substitution_analysis`  

  All original deep sequencing data used in this study can be accessed at the NCBI BioProject under the accession code **PRJNA1115824**. The provided code here serves as an example for reference.

- #### **Constructing Index Files**  
  Before running the analysis, you need to construct index files. Refer to the `index/` directory, which contains:  
  
  - `20230927_deepseq_sample_name_mapping.csv`:
    
    | ID | Sample 1 | Target site 1 | Sample 2 | Target site 2 | ... |
    | -------------- | -------- | ------ | -------- | ------ | ------ |

  - `ref_20230927.txt`:
    
    | Information                                |
    |--------------------------------------------|
    | Target site 1                             |
    | Sequence of target site 1                 |
    | Name of gRNA for target site 1: gRNA sequence 1 |
    | None                                           |
    | None                                             |
    | Target site 2                             |
    | Sequence of target site 2                 |
    | Name of gRNA for target site 2: gRNA sequence 2 |
    | None                                            |
    | None                                            |
    | ...                                        |

- #### **Calculating Editing Efficiency**  
  Run  
  ```bash
  sh CFBI_main.sh

### **PART 2: Off-Target Effect Analysis**  
- **Directory**: `scripts_for_RNA_editing_analysis`

  All original whole-transcriptome sequencing data used in this study can be accessed in the Gene Expression Omnibus under the accession codes **GSE267726**, in the Genome Sequence Archive of the BIG Data Center at the Beijing Institute of Genomics, Chinese Academy of Science under the accession codes **HRA007429** and **CRA016552**, and in the National Omics Data Encyclopedia under the accession codes **OEP00005360**. The provided code here serves as an example for reference.

- #### **Quality Control & Trim Reads**  
  Run  
  ```bash
  sh work_QC_Trim.sh

- #### **Whole-Transcriptome Off-Target Effect Analysis**  
  Run  
  ```bash
  sh work_RADAR_parallel.sh

---

## 4. Citation
Li G#, Chen G#, Yuan GH#, Wei J#, Ni Q, Wu J, Yang B, Yang L* and Chen J*. Specific and efficient RNA A-to-I editing through cleavage of an ADAR inhibitor. ***Nat Biotechnol***, 2025 (Accepted in principle).


