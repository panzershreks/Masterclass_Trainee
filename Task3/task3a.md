# Task 3A

## 1. Explain the difference between an image and a container
Docker images are immutable files containing source code, libraries, etc. needed for an application to run. The images are often built in layers over some base image.

Containers are a virtualized run-time environment, in which instances of an image are run.

Images can exist without containers, while containers need an image to run in order to exist.

## 2. Give some advantages of using containers
The virtual containerized environments ensure that applications will run the same, regardless of what operating system or machine they are running on, providing increase portability and more consistent operation.

Containers have an advantage over virtual machines as virtual machines require a set amount of resources (i.e. CPU, RAM, Storage) to be allocated to each machine, thus the number of virtual machines that can be run is limited by hardware, and virtual machines also require operating systems to run. Comparatively, containers do not need resources to be allocated to them, so there is no physical limit on the number of containers, and containers do not contain operating systems, and thus are faster and have smaller footprints.

Containers provide isolation, where a container containing an application as well as its relevant supporting software will not have any issues with another container containing an application needing a different version of the same supporting software, since the containers are completely independent of one another.

## 3. How can securit of containers be compromised
