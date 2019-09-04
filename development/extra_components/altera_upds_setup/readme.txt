Altera(R) University Program Design Suite 13.0
Quick Installation and Starting Guide for Linux Workstations
Copyright (c) Altera Corporation 2013
==================================================================

This readme.txt file contains the following information:
* Installation of the Altera University Program Design Suite (UPDS)
  on a Linux workstation
* Starting the Altera Monitor Program

Pre-requisites
==============

Before installing the Altera UPDS, you must have installed Altera's
Quartus(R) II and Nios(R) II EDS software, version 13.0 or higher. It is
suggested that the software be installed with root privileges;
otherwise, some useful environment variables might not be set
correctly.

The USB-Blaster(TM) cable needs to be installed in order to allow access
to a board connected to the computer. If running without root
privileges, proper read and write access needs to be granted to the
USB port. For more information on how to do this, please refer to the
usb_blaster.txt file included in this installation package.

Installation
============

1. After extracting the contents of the altera_upds_setup.tar package
   to a directory of your choice, you should have the following files:
   - install_altera_upds: the Linux installation script
   - license.txt: the License Agreement pertaining to this software
   - readme.txt: this readme.txt file
   - upds_installer_data.tgz the package containing the installation
     files
   - usb_blaster.txt: USB-Blaster cable installation instructions

2. To begin the installation process, use a shell to navigate to the
   directory containing the installer files and execute the
   "install_altera_upds" installation script. This can be done by
   issuing "./install_altera_upds" at the command line. Read the
   introductory messages and press <Return> when you are done.

3. The installation script will attempt to detect the current
   installation of Quartus II and Nios II EDS by querying the
   QUARTUS_ROOTDIR and SOPC_KIT_NIOS2 environment variables.

   If the script is not successful (for example, if Quartus II and
   Nios II EDS were installed without root privileges), the script
   will ask for the installation directories to be specified manually.

   Otherwise, the script will proceed to copy the installation files.

4. If the installation is successful, you will receive a success message
   at the end.

Starting the Altera Monitor Program
===================================

1. Use a shell to navigate to the Altera Monitor Program binary
   directory, located under the directory where Quartus II and Nios II
   EDS are installed.

   For example, if Quartus II was installed into "/opt/altera/13.0/quartus",
   navigate to "/opt/altera/13.0/University_Program/Monitor_Program/bin".

2. Start the Altera Monitor Program by executing the
   "altera-monitor-program" launch script. This can be done by issuing
   "./altera-monitor-program" at the command line.

NOTE: In order for the Altera Monitor Program to function properly, the
      USB-Blaster cable must be properly configured. Please consult the
      "usb_blaster.txt" file (located in this installer package) for
      more information.
