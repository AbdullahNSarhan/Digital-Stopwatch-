# Digital-Stopwatch-
Digital Stopwatch Using 8086 Microprocessor 
Contents:
I.	Introduction
II.	Components
III.	The Circuit
IV.	Assembly Code
V.	References
 
I.	Introduction:
This project demonstrates the interfacing of an 8086 microprocessor with external peripherals to display numbers on a 7-segment display. The goal is to utilize the 8086 microprocessor along with an 8255A Programmable Peripheral Interface (PPI) to control two 1-digit, common anode, red 7-segment displays. The project involves using assembly language to program the 8086 microprocessor to sequentially display the digits 0 to 9 on the connected 7-segment displays. The system includes logic states, switches, and octal D-type transparent latches for control, and is powered by an appropriate source for operation.
II.	Components:
1. 8086 Microprocessor:
The 8086 microprocessor is a 16-bit processor capable of handling data and instructions efficiently. It serves as the central processing unit (CPU) in this system, controlling data flow to and from external devices, including the 8255A PPI and the 7-segment displays.
2. 8255A Programmable Peripheral Interface (PPI):
The 8255A is a versatile peripheral interface used to expand the I/O capabilities of the 8086 microprocessor. It provides 24 I/O lines that can be configured as input or output, and are used to interface with external components like the 7-segment displays. In this project, it is used to send control signals to the displays.
3. Octal D-Type Transparent Latches with 3-State Outputs:
These latches are used to store and control the data sent to the 7-segment displays. The latches allow the 8086 microprocessor to control the flow of data to the displays, ensuring that the correct digit is displayed at any given time.
4. 7-Segment Displays (Common Anode, 1 Digit):
These are the visual output components used to display the digits 0-9. Two 1-digit, red, common anode 7-segment displays are used, each of which is controlled by signals from the 8255A PPI.
5. Logic State and Switches:
The logic states and switches provide input and control signals for the system. Switches are used to toggle the system's state, while logic states manage the flow of information between the 8086 and external components.
6. Power Source and Ground:
A stable power source is required to ensure proper operation of the system. The ground connection is used to complete the electrical circuit and provide a reference voltage for all components.
7. Wires:
Wires are used for interconnecting the various components of the system, ensuring that signals are properly routed between the 8086 microprocessor, 8255A PPI, and the 7-segment displays.
III.	The Circuit:
![image](https://github.com/user-attachments/assets/3e7666bc-2a29-411a-82ae-47ea66db6aca)
