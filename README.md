# Python Gurobi Docker Workspace 
Docker development environment for the python gurobi projects based on Ubuntu 20.04.

## Table of Contents <!-- omit in toc -->
- [Python Gurobi Docker Workspace](#python-gurobi-docker-workspace)
  - [Usage](#usage)
    - [Show useful commands (inside the environment)](#show-useful-commands-inside-the-environment)
    - [Manage the image and container (outside the environment)](#manage-the-image-and-container-outside-the-environment)
  - [System prerequisites setup](#system-prerequisites-setup)
  - [File structure](#file-structure)
  - [How to use Gurobi package](#how-to-use-gurobi-package)

## Usage

### Show useful commands (inside the environment)
```shell
$ startup
```

### Manage the image and container (outside the environment)
- Enter the workspace via [docker exec](https://docs.docker.com/engine/reference/commandline/exec/). Build a docker image first when needed.
    ```shell
    $ ./run --start
    ```
- Stop and exit the workspace.
    ```shell
    $ ./run --stop
    ```
- Remove the docker image.
    ```shell
    $ ./run --prune
    ```
- Remove the existing image and build a new one.
    ```shell
    $ ./run --rebuild
    ```

## System prerequisites setup
- [Git](https://git-scm.com/downloads)
- [Docker](https://docs.docker.com/get-docker/)
    - [Install Docker on Windows 10](https://hackmd.io/@Lrrrekp_SqqAB1DArhB9ng/r19jIPip3)
    - [Install Docker Desktop on Mac | Docker Documentation](https://docs.docker.com/desktop/install/mac-install/)
- [VS Code](https://code.visualstudio.com/download) or other IDEs that support container are recommended.

## File structure
```
Python Gurobi Docker Workspace/
├── Dockerfile
├── projects/               # project repositories (mount to container)
├── run                     # workspace management script
├── scripts/
│   ├── .bashrc
│   ├── requirements.txt    # python package list
│   ├── start.sh            # execute when a container created
│   └── startup             # useful commands message
└── temp/
    ├── .vscode-server/     # remote dev server of VSCode (mount to container)
```
## How to use Gurobi package
> To use Gurobi, you must obtain a Gurobi License before you can use it. Gurobi License is mainly divided into two types, commercial use (Commercial Licenses) and academic use (Academic Licenses). Commercial use must be paid, but Gurobi provides a test license. Let the company try Gurobi, and the academic use is completely free, and there is no restriction on the use of Gurobi, regardless of the size of the model or the use of functions, etc., but the academic license is only valid for one year. Once it expires, You must re-apply for a new license before you can use it again, but overall Gurobi is a very good mathematical programming solver, and it is very generous for academic use.
1. [Register for a free Gurobi account and log in.](https://www.gurobi.com)
2. [Visit the User Portal](http://portal.gurobi.com/iam/licenses/request?type=academic)
    
3. Locate the “WLS Academic” box.
    ![](https://hackmd.io/_uploads/H1_MTvip3.png)

4. Click the button to generate your Academic License gurobi.lic.

5. Create a folder and name it "lic", then place the files inside.

Eventually, the file structure become as below:
```
ITH Docker Workspace/
├── Dockerfile
├── projects/               # project repositories (mount to container)
├── run                     # workspace management script
├── scripts/
│   ├── .bashrc
│   ├── requirements.txt    # python package list
│   ├── start.sh            # execute when a container created
│   └── startup             # useful commands message
├── ==lic==/
│   └── ==gurobi.lic==
└── temp/
    ├── .vscode-server/     # remote dev server of VSCode (mount to container)
```