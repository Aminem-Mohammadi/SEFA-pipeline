# SEFA Pipeline

An **Automatic Pipeline for Simultaneous EEG–fMRI Artifact-removal (SEFA)**  
developed for preprocessing simultaneous EEG–fMRI data.  

This pipeline integrates:
- **Stage 1 (FMRIB):** Gradient and ballistocardiogram (BCG) artifact correction  
- **Stage 2 (HAPPE):** Advanced EEG cleaning (bad-channel detection, ICA, MARA, ICLabel, line-noise removal, QC)

It achieves near-expert performance in artifact removal while being fully automated and reproducible.

---

## 📖 Reference
This repository accompanies the paper:  

> F. Hosseinzadeh, A. M. Mohammadi, M. Anvarifard, S. Keshavarz, E. Ebrahimzadeh, H. Soltanian-Zadeh  
> *An Automatic Pipeline for Simultaneous EEG-fMRI Artifact-removal (SEFA)*  
> Proc. of International Conference on Biomedical Engineering (ICBME 2025), Tabriz, Iran. IEEE ©2025.  

[Paper PDF](./docs/IEEE.pdf)  

---

## 🚀 Getting Started

### Requirements
- MATLAB R2021a or later  
- [EEGLAB toolbox](https://sccn.ucsd.edu/eeglab/)  
- FMRIB plugin (FASTR, QRS detection, PAS)  
- [HAPPE pipeline](https://github.com/labcognition/HAPPE)  
- CleanLine plugin  
- ICLabel plugin  

### Installation
Clone the repository:
```bash
git clone https://github.com/Aminem-Mohammadi/SEFA-pipeline.git
cd SEFA-pipeline


## ✨ Citation
If you use this pipeline in your research, please cite our paper:

@inproceedings{hosseinzadeh2025sefa,
  title={An Automatic Pipeline for Simultaneous EEG-fMRI Artifact-removal (SEFA)},
  author={HosseinZadeh, Farid and Mohammadi, Amin M. and Anvarifard, Mehrdad and Keshavarz, Sasan and Ebrahimzadeh, Elias and Soltanian-Zadeh, Hamid},
  booktitle={Proc. of International Conference on Biomedical Engineering (ICBME)},
  year={2025},
  organization={IEEE}
}
