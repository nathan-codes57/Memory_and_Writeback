# Lab 4 — Memory and Writeback

<!--

Replace every item in square brackets before submitting.

Keep this README focused on what the design does, how it is used, and how it was

verified.

-->

## Design Scope and Assumptions

- **In scope:** This lab implements a memory and writeback MIPS pipeline stage in verilog.

- **Out of scope:** Fetch, Decode, Execute

- **Assumptions:** All unconnected wires will route to other pipeline states in the future.

- **Limitations:** Limited to 32 bit bus and 256 addresses in data memory.
 

## Requirements

| Requirement | Description | Verification Method |
|---|---|---|
| Data Memory | Holds data memory, allowing reads and writes | Test case, waveform, inspection |
| And | Determines if branch will occur | Test case, waveform, inspection |
| MEM/WB Latch | Holds and passes data on to the next pipeline stage | Test case, waveform, inspection |
| WB | Determine what data gets written back to decode stage | Test case, waveform, inspection |
| Memory | Ties all 3 minor modules together into overall memory stage | Test case, waveform, inspection |



## Implementation

### Source Code

| File | Description |
|---|---|
| [`AND.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Source-Files/AND.v) | Source code for and module |
| [`data_memory.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Source-Files/data_memory.vE) | Source code for data memory module |
| [`mem_wb.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Source-Files/mem_wb.v) | Source code for memory/writeback latch module|
| [`MEMORY.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Source-Files/MEMORY.v) | Source code for memory module|
| [`WB.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Source-Files/WB.v) | Source code for writeback module |
| [`memoryTB.v`](https://github.com/nathan-codes57/Memory_and_Writeback/blob/main/Testbenches/memoryTB.v) | Source code for memory testbench |

### Implementation Notes

- 32 bit data bus, 256 memory addresses.

- Data memory is a reusable module.

- Modules wired to other pipeline stages left disconnected.

## Verification

### Verification Strategy

The design is verified using simulation.

Verification covers:

- [Normal operating case]

- [Boundary or maximum-value case]

- [Reset or initialization case]

- [Invalid, stalled, or exceptional case, if applicable]

### Testbench and Waveform

Save screenshots and waveform images in the repository's `images/` folder.

![Testbench
 
or waveform](images/[testbench-screenshot-filename].png)

The testbench source is available [*here*](LINK_TO_TESTBENCH_CODE).

### Results

| Test Case
 
| Expected Result | Observed Result | Status |

|---|---|---|---|

| TC-01 — [Name] | [Expected behavior] | [Observed behavior] | Pass / Fail |

| TC-02 — [Name] | [Expected behavior] | [Observed behavior] | Pass / Fail |

| TC-03 — [Name] | [Expected behavior] | [Observed behavior] | Pass / Fail |

## Reproduction Instructions

### Tools and Versions

- **Simulator / synthesis tool:** [Name and version]

- **Language / standard:** [Verilog/SystemVerilog version]

- **Operating system:** [macOS, Windows, Linux, or other]

- **Additional dependencies:** [List any required tools or libraries]

### Build and Run

```bash

# Replace these commands with the commands required
 
for this lab.

[compile-command]

[run-command]

```

Expected output:

```text

[Paste a short representative output or result here.]

```

## Repository Organization

```text

.

├── README.md

├── images/

│
 
├── [timing-diagram-filename].png

│
 
└── [testbench-screenshot-filename].png

├── [source-files]

└── [testbench-files]

```

## Known Issues and Future Improvements
- [Document
 
any known issue, unverified behavior, or
 
technical debt.]

- [Describe
 
a realistic improvement or extension.]
