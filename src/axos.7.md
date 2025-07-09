% axos(7) - AXOS Manual
% AxOS team
% July 2025

# NAME

AxOS - lightweight Arch-based OS with a focus on minimalism and aesthetics

# DESCRIPTION

**AxOS** is a lightweight, Arch-based Linux distribution that focuses on providing a sleek and aesthetic look with minimal to no configuration.

This man page serves as an overview to AxOS design choices, the tools that it uses and the guidelines that users must follow.

# INSTALLATION METHODS

AxOS supports both graphical and command-line installations.

## Graphical installation

The first time you boot into the OS, the graphical installer would automatically start. If not, you can find it in the application menu with the name **Install AxOS**. You can use the super key (Windows key) to activate the search menu if needed.

<!-- NOTE MY FELLOW DEVS: -->
<!-- In pandoc, markdown headings are converted between heading and subheading -->
<!-- And if you do something like `### Smaller heading` then it wont work -->
<!-- Pandoc will automatically convert # to heading and anything after ## to subheading -->

### Installation steps

1. **Welcome Screen**
   It's just a welcome screen, you can just click _Start_ to begin the installation

2. **Layout Screen**
   In this screen, you can choose your preferred keyboard layout. If you need to change the layout, then you can press the _Search_ button and then type your region in.

3. **Time Zone**
   Here, we need to set your timezone. AxOS installer will automtically detect your timezone, but if you want to change it, you can press the _Search_ button and type your region in.

4. **Select Locale**
   This is the screen where you choose your locale. You can press the _Search_ button to set your locale. When you set your locale, make sure that you don't encounter the _Greyed Out Next Button_ issue that is mentioned in the _Known Issues_ section.

5. **Creating User Account**
   This is one of the most important steps of the installation. This is where you setup your account. To set up your account, just type in your desired username and password. There are also two additional checkboxes on the screen as well. One to grant the user the administrator access and one to enable superuser account. These two will be enabled by default and it is generally not recommended to disable them.

6. **Choosing Your Desktop**
   This is the screen where you would choose your desktop. Currently there are 4 options: Sleex, Calla, Plasma and Theom. Each of these desktops have their own user interface and their own philosophies.

7. **Choosing The Kernel**
   Another one of an important step - chosing the kernel. You can choose either Linux or Linux-zen kernel. The Linux kernel aims for stability and the zen focuses on the performances, but at the cost of being less stable.

8. **Miscellaneous**
   This is the screen where you setup your hostname, install drivers, install optional packages and setup the swap. To set your hostname, just type the custom hostname in the input box on top. You can select the drivers (NVIDIA dirvers) if necessary and can select the optional packages (refered to as user kits - which allows users to install optional packages based on their interest). And if you need to setup the swap, just type in the value in the input box at the bottom of the installer.

9. **Installation disk and partitioning**
   You can either choose to use the automatic partitioning or choose to partition your disk manually by yourself - AxOS supports both. AxOS would list all the available partitions on screen. Just click on the one you want and click next - AxOS will manage the partitioning for you. If you want to have full control of the partitioning, then you can click the _Switch to manual partitioning_ button partition your disk manually.

10. **Validation**
    This screen will show you all the options that you have selected.Validate everything, and then start the installation. The installer will fetch the latest packages and install them in the selected disk. This process can take a few minutes, depending on the speed of your disk and internet connection.

## Command line installation

For advanced users, **axos(1)** provides a manual on a fully terminal based alternative to axinstall - the axinstall-cli.

# Known Issues

## Next button greyed out in Locale Screen

This happens because the locale that you selected is not installed in the system.

To fix this, edit _/etc/locale.gen_ and uncomment the locale that you want. Then, run _locale-gen_ in a terminal to install locale that you want.

If you don’t want to use this method, then you can select another locale that is installed on the system.
