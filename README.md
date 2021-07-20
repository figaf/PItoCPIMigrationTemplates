# PItoCPIMigrationTemplates
This repository contains xslt mapping files for PI to CPI migration in the [Figaf DevOps Tool](https://figaf.com/figaf-devops-tool/). There is a free trial that allows you to get started. 

## Getting started

1. Clone this repository
    ```
    git clone https://github.com/figaf/PItoCPIMigrationTemplates.git
    ```
2. Download IRT jar file from https://irt.figaf.com/download.
3. Run IRT application with parameter `irt.config.pi-to-cpi-migration-templates` set to `PItoCPIMigrationTemplates\main`.

Read more about PI to CPI migration [here](https://figaf.com/help/irt/latest/#pi-to-cpi-migration).

## Structure 

```
main
├── file
│   ├── receiver-default.xslt
│   ├── sender-default.xslt 
├── http
│   ├── receiver-default.xslt
│   ├── sender-default.xslt 
├── idoc
│   ├── sender-default.xslt 
├── rest
│   ├── receiver-default.xslt
```
