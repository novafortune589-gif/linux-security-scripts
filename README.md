# Linux Security Scripts

My own scripts that I have done during my study!

## Included Scripts

### 1. File Monitoring & Shutdown Tool (`check.sh`)
A Bash automation script that monitors the system for a specific target file and initiates a safe, delayed system shutdown once the file is detected.

* **Usage:**
  ```bash
  chmod +x check.sh
  sudo ./check.sh

  # Linux Security & Utility Scripts

A collection of Bash scripts created to practice Linux administration, shell scripting logic, and file management.

---

## 2. File Organizer Utility (`extension.sh`)

A clean, interactive Bash script designed to organize files into dedicated category directories based on their file extensions.

### Features
* **Interactive Prompting**: Accepts relative or full file paths dynamically.
* **Case-Insensitive Matching**: Converts input to lowercase to catch extensions like `.JPG` or `.TXT`.
* **Input Validation**: Verifies that the specified file exists before attempting to move it.
* **Pattern Matching**: Uses `case` statements with the `|` (OR) operator to group file types cleanly.
* **Automatic Directory Creation**: Employs `mkdir -p` to safely create destination folders if they do not exist.

### Usage
```bash
chmod +x extension.sh
./extension.sh
