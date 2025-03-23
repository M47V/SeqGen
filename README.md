# SeqGen
Bash script to generate a sequence from a pattern and a range of numbers.

## Installation
To install the tool, use the provided install script.

**Steps**:
1. Open a terminal
2. Run:
```bash
chmod +x install.sh
./install.sh
```

## Usage
```
seqgen.sh [-i INCREMENT] [-p PADDING] <pattern> <start> <end>
```
**Arguments:**
- `pattern`: The pattern to be used to generate the sequence that must contain {} placeholders for the number.
- `start`: The start number of the sequence.
- `end`: The end number of the sequence.

**Options:**
- `-i INCREMENT`: The increment for the sequence.
- `-p PADDING`: The padding for the number.
