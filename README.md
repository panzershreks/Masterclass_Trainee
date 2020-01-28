# Masterclass_Trainee
Repo for DE Masterclass (Trainee Version)

## Setting up a Virtual Machine
Prior to running any tasks, you will first need to set up a Virtual Machine (VM). The VM contains all the tools required in the Masterclass. It is assuled that you have downloaded [VMWare for Windows](https://www.vmware.com/sg/products/workstation-pro.html), or [VMFusion for Mac](https://my.vmware.com/en/web/vmware/info/slug/desktop_end_user_computing/vmware_fusion/11_0). 

**For Windows: You will not be able to run VMWare as-is on your machine as Hyper-V VM is enabled in inte Windows OS. Thus, you will need to disable Hyper-V on your machine.** <br />

**To disable Hyper-V:**
- Open Windows PowerShell as Administrator
- Type in the following: `bcdedit /set hypervisorlaunchtype off`
- Close PowerShell and Restart your machine. 

**To re-enable Hyper-V:**
- Open Windows PowerShell as Administrator
- Type in the following: `bcdedit /set hypervisorlaunchtype auto`
- Close PowerShell and Researt your machine.


## Running the Virtual Machine
- Once you have the VM on your machine, open VMWare Workstation/ VMFusion
- Select **Open a Virtual Machine** and navigate to where you've placed the downloaded VM. 
