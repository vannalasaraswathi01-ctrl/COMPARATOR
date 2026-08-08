# 4-bit Comparator

## Description

A 4-bit Comparator is a digital circuit used to compare two 4-bit binary numbers.

It determines whether:

- A is greater than B
- A is equal to B
- A is less than B

## Inputs

- A: 4-bit binary number
- B: 4-bit binary number

## Outputs

- A_greater_B: HIGH when A > B
- A_equal_B: HIGH when A = B
- A_less_B: HIGH when A < B

## Truth/Operation Table

| Condition | A_greater_B | A_equal_B | A_less_B |
|-----------|-------------|-----------|----------|
| A > B     | 1           | 0         | 0        |
| A = B     | 0           | 1         | 0        |
| A < B     | 0           | 0         | 1        |

## Tools Used

- Verilog HDL
- Icarus Verilog
- VS Code

## Files

- `comparator.v` - Main Verilog design
- `comparator_tb.v` - Testbench
- `output.txt` - Simulation output
- `README.md` - Project documentation

## Simulation

Compile the design and testbench:

```bash
iverilog -o comparator_sim comparator.v comparator_tb.v