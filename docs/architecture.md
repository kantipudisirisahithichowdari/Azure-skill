# Architecture

## Overview

This project implements Azure infrastructure using Bicep Infrastructure as Code.

The infrastructure is divided into reusable modules and deployed using
environment-specific parameter files.

## High-Level Architecture

```text
                         GitHub
                           |
                           v
                    Bicep Source Code
                           |
                           v
                       main.bicep
                           |
          +----------------+----------------+
          |                |                |
          v                v                v
       Network          Security         Storage
       Module            Module           Module
          |                |                |
          +----------------+----------------+
                           |
                           v
                     Compute Module
                           |
                           v
                    Linux Virtual Machine
                           |
             +-------------+-------------+
             |                           |
             v                           v
       Central India               Malaysia West
       Region 1                    Region 2
             |                           |
             v                           v
       DEV Environment             DEV Environment



