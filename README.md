# Linux and Git for Bioinformatics – Assignment

This repository documents the Linux commands and Git workflow learned as part of the coursework.
The aim of this assignment is to understand basic Linux file handling, text processing, and version control using Git and GitHub.

---

## 1. Linux Basics

The following commands were used to navigate and inspect the Linux file system:

```bash
pwd
ls
ls -l
cd directory_name
 

## 2.  Fix Project Directory Structure section

Wrap commands properly:

```md
```bash
mkdir linux-git-bioinformatics
cd linux-git-bioinformatics
mkdir data
mkdir data/sequence data/script data/analysis


Wrap directory tree properly:

```md
```text
linux-git-bioinformatics/
├── README.md
└── data/
    ├── sequence/
    ├── script/
    └── analysis/


## 3. Working with Files
Sample files were created to practice file handling commands.

```md
```bash
touch example.bed
head example.bed
tail example.bed


## 4. File and Directory Management

The following commands were used to create, navigate, and remove files and directories efficiently.

```md
```bash
cd ..
touch sample{A,B,C}
mkdir dir1 dir2
rm -R dir1 dir2


##5. Text Processing Commands

```bash
grep
cut
sort
uniq


## 6. Git and GitHub Basics
Git was used for version control and GitHub for remote storage.

```bash
git init 
git status
git add . 
git commit 
git push 


This assignment demonstrates basic Linux command usage and Git version control practices essential for bioinformatics and computational biology workflows.

