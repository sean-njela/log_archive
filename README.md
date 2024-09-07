# 📦 Archive Tool

Welcome to the **Archive Tool** 🛠️ — a simple and efficient Bash script for archiving directories with unique filenames. If you're working with log files or any other directories, this tool ensures your files are safely archived without overwriting existing archives. 🚀

## 📝 Features

- 📁 **Archive Directories**: Create `.tar.gz` archives of any directory.
- 🔒 **Admin Privileges Required**: The script requests `sudo` to create the archive.
- 🔄 **Automatic File Naming**: Prevents overwriting by generating unique archive names based on the current date and a unique number.
- 📅 **Timestamped Archives**: Archives are stamped with the current date for easy identification.

---

## 🚀 Getting Started

### 1️⃣ **Prerequisites**

Make sure you have the following installed:

- 🐧 **Bash** (this is a shell script)
- 🔑 **sudo** access (administrative privileges)

### 2️⃣ **Installation**

Clone the repository and navigate to the folder:

```bash
git clone https://github.com/sean-njela/log_archive.git 
cd log_archive
```

### 3️⃣ Usage
To use the tool, simply run the script with the directory you wish to archive as an argument:

```
./archive_tool.sh /path/to/directory
```
🛑 Note: You must pass exactly one argument — the directory path. The tool automatically handles the rest.

---

## 📂 Archive Details

- The archived files are saved in the `archive` folder.
- Naming convention: `log_archive_YYYY-MM-DD_<unique_number>.tar.gz`
- Example:
  ```bash
  archive/log_archive_2024-09-07_1000648.tar.gz
  ```

---

## 🛠️ Script Breakdown

### Main Function: `archive_file`

- **Creates archive folder**: If not already present.
- **Checks for existing archives**: Ensures no name collision by incrementing the unique number.
- **Creates the archive**: Compresses the directory using `tar` and places it inside the `archive` folder.

---

## 🧑‍💻 Example

Here's how it works in action:

```bash
$ ./archive_tool.sh /var/log
Archiving ...
Archive created successfully: log_archive_2024-09-07_1000648.tar.gz in the directory: archive
```

---

## ⚠️ Error Handling

- 🚫 **Directory not found**: If the specified directory doesn't exist, an error message will be displayed:

  ```bash
  Error: Directory '/path/to/directory' not found.
  ```

- 🛑 **Argument check**: If the script is run without the required argument, you'll see:
  ```bash
  Please insert 1 argument as a file or filepath.
  ```

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## ❤️ Contributions

Feel free to submit pull requests or raise issues. Contributions are always welcome!

---

## 👤 Author

**Sean Njela**

- GitHub: [@seannjela](https://github.com/sean-njela/log_archive.git)
- Twitter: [@seannjela](https://twitter.com/seannjela)

---

## 🎉 Acknowledgements
Feel free to contribute with UI effects and more logic!

Happy Archiving! 🎉

---
