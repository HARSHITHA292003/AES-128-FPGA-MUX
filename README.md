# AES-128-FPGA-MUX
Hardware implementation of 128-bit AES Encryption using Verilog and MUX control on BASYS 3 FPGA. This project includes RTL design, testbench simulation, output waveforms, and schematic flow for real-time ciphertext output.


## 📌 Project Overview

This project demonstrates **AES-128 Encryption** using a modular Verilog implementation on the **BASYS 3 FPGA board**. A **8:1 multiplexer (MUX)** is used to control the selection of which 16-bit part of the 128-bit ciphertext is shown on the output. The project highlights how AES can be implemented efficiently on FPGA hardware with:

- Real-time encryption using pipelined logic
- Modular Verilog design (`aesfull.v`)
- Output on LEDs via `led.xdc`
- Testbench verification (`tb.v`)

---

## 📁 Project Structure

| File/Folder       | Description                                     |
|-------------------|-------------------------------------------------|
| `aesfull.v`       | Verilog top-level AES-128 encryption logic      |
| `tb.v`            | Testbench for simulation and functional testing |
| `led.xdc`         | BASYS 3 FPGA constraints file for LED output    |
| `OUTPUT_WAVEFORM.PNG` | Simulated output waveform from testbench    |
| `SCHEMATIC.jpg`   | RTL Schematic generated from Vivado             |
| `DESIGN_SOURCE_FLOW.PNG` | Design flow diagram for implementation |

---

## 🧠 Functional Description

### 🔷 AES Encryption Core
The AES-128 encryption algorithm involves:
- Key expansion
- 10 rounds of transformations (SubBytes, ShiftRows, MixColumns, AddRoundKey)
- Controlled by a FSM in Verilog

![DESIGN_FLOW](https://github.com/user-attachments/assets/0fc3214e-ce9a-4476-a0d9-2667eed3f15e)

### 🔷 8:1 Multiplexer Logic
- The ciphertext (128 bits) is broken into 8 blocks of 16 bits
- 3 input switches (as select lines) determine which block is shown on LEDs
- LED output updates in real time as select changes

---

## 🔬 Simulation Results

### Basys 3 FPGA board sample outputs
![SAMPLE_OUT_1](https://github.com/user-attachments/assets/dff3e669-67ad-4e98-a4dd-c0b0632d1ba2)

![SAMPLE_OUT_2](https://github.com/user-attachments/assets/59e39f6c-c5bb-46fb-8887-0f7f2588ed51)

![SAMPLE_OUT_3](https://github.com/user-attachments/assets/28e2f763-674c-433f-ad43-38a321caae45)

![SAMPLE_OUT_4](https://github.com/user-attachments/assets/981ee20f-dd82-471f-86c0-8668cc87062d)


### ✅ Output Waveform
<img width="960" alt="OUTPUT_WAVEFORM" src="https://github.com/user-attachments/assets/7b272724-e0d8-465c-9f5a-a6024037934c" />

### 📘 RTL Schematic
![SCHEMATIC](https://github.com/user-attachments/assets/fa35d99f-3cc5-4362-ad68-c69b14dbe836)

---

## 🛠 Toolchain Used

- **Vivado** 2023.2
- **BASYS 3 FPGA** board
- **Verilog HDL**


---

## 📷 Design Flow Diagram

`DESIGN_SOURCE_FLOW.PNG`
---

## 🚀 Future Enhancements

- Add AES decryption support
- Integrate UART/Keypad for runtime input
- Use LCD display for full ciphertext view

---

## 👩‍💻 Author

- **Harshitha A**  
  [GitHub Profile](https://github.com/HARSHITHA292003)
Developed by HARSHITHA ARUNACHALA Undergraduate Student, B.E. Electronics and Communication Engineering (ECE)
---


