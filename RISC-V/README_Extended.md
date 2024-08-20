# Comet RISC-V Simulator Setup Guide for Windows 10

This guide details the steps to set up the Comet RISC-V Simulator on a Windows 10 system using Ubuntu. The process begins with downloading and installing Ubuntu from the Microsoft Store, followed by the setup steps within Ubuntu.

### 1. **Install Ubuntu on Windows 10**

#### a. **Enable Windows Subsystem for Linux (WSL)**

Before installing Ubuntu, the Windows Subsystem for Linux (WSL) feature must be enabled:

1. Open PowerShell as Administrator.
2. Run the following command to enable WSL:

   ```powershell
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   ```

3. Enable WSL 2 (optional but recommended):

   ```powershell
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```

4. Restart the computer to apply the changes.

#### b. **Install Ubuntu from the Microsoft Store**

1. Open the Microsoft Store.
2. Search for "Ubuntu" and select the desired version (e.g., Ubuntu 24.04 LTS).
3. Click "Get" to install Ubuntu.
4. Once installed, launch Ubuntu from the Start menu.

#### c. **Set Up Ubuntu**

When Ubuntu is opened for the first time:

1. A UNIX username and password will be prompted. This will create a user account within Ubuntu.
2. After completing the setup, the Ubuntu terminal will be accessible.

### 2. **Update the Ubuntu System**

To ensure that all packages are up to date, execute the following commands:

```bash
sudo apt update
sudo apt upgrade -y
```
### 3. **Install Required Dependencies**

The installation of `cmake` and other necessary dependencies for building the RISC-V GNU toolchain is required.

#### a. **Install `cmake`**

`cmake` is required to build the simulator:

```bash
sudo apt install cmake -y
```

#### b. **Install Additional Dependencies**

The RISC-V GNU toolchain requires several additional packages. Install them with the following command:

```bash
sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk \
build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev -y
```

### 4. **Download and Build the RISC-V GNU Toolchain**

The RISC-V GNU toolchain is necessary to generate binaries that can be executed by Comet.

#### a. **Clone the RISC-V GNU Toolchain Repository**

Clone the RISC-V GNU toolchain repository from GitHub:

```bash
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
```

#### b. **Set Up Installation Directory**

Determine where the RISC-V toolchain will be installed. Set up an environment variable to define this path:

```bash
export RISCV=/opt/riscv
```

Replace `/opt/riscv` with any preferred installation path.

#### c. **Build the Toolchain**

Navigate to the cloned directory and configure the toolchain for the RV32I base ISA:

```bash
cd riscv-gnu-toolchain
./configure --prefix=$RISCV --with-arch=rv32i --with-abi=ilp32
make
```

The `make` process may take some time as it builds the entire toolchain.

#### d. **Add the Toolchain to the PATH**

To ensure the RISC-V toolchain is accessible, add its installation directory to the system’s `PATH`:

```bash
export PATH=$PATH:$RISCV/bin
```

To make this change permanent, add the export command to the `.bashrc` file:

```bash
echo 'export PATH=$PATH:$RISCV/bin' >> ~/.bashrc
source ~/.bashrc
```

### 5. **Clone the Comet Repository**

Clone the Comet RISC-V simulator repository:

```bash
git clone <repository_url>
```

Replace `<repository_url>` with the actual URL of the Comet repository.

### 6. **Build the Comet Simulator**

Navigate to the cloned Comet directory, create a build directory, and build the simulator:

```bash
cd <repository_root>
mkdir build && cd build
cmake ..
make
```

This will generate the simulator binary in the `build/bin` directory.

### 7. **Running the Simulator**

The Comet simulator can now be run using the following command:

```bash
<repository_root>/build/bin/comet.sim -f <path_to_binary>
```

Replace `<path_to_binary>` with the path to the RISC-V binary intended for execution.

### 8. **Building and Running Tests**

The Comet repository includes a set of benchmarks for testing. Below are the steps to build and run these tests:

#### a. **Navigate to the Tests Directory**

```bash
cd <repository_root>/tests
```

#### b. **Build the Tests**

To compile the tests, use the following command:

```bash
make
```

This command compiles the tests for both the host system and the RISC-V target.

#### c. **Run the Tests**

To run the tests and verify the simulator, use the provided script:

```bash
./runTests.sh
```

### 9. **Adding New Tests**

To add a new test:

1. Create a new folder in the `tests` directory, named after the binary it will contain:

   ```bash
   mkdir <repository_root>/tests/<test_name>
   ```

2. Add the source files and a `Makefile` to compile the test. The `Makefile` should generate a binary with the same name as the folder and with the `.riscv32` extension.

3. Create an `expectedOutput` file containing the expected standard output of the test.

4. Build the new test using `make`, and run it using `runTests.sh`.

### 10. **Logic Synthesis (Optional)**

If there is an interest in synthesizing the Comet core using High-Level Synthesis (HLS) tools, contact Simon Rokicki at simon.rokicki@irisa.fr to request the RTL output.

### 11. **Additional Tips**

- Ensure all dependencies are correctly installed and that the RISC-V toolchain builds without errors.
- Consult the documentation provided in the Comet repository or the README file for further assistance.

