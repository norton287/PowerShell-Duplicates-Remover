# Duplicate File Destroyer 🚀

Tired of duplicate files hogging your precious disk space? Look no further! This PowerShell script is your ultimate weapon against those pesky doppelgängers.

## Features ✨

* **Blazing Fast:** Leverages PowerShell's efficient file system commands for rapid duplicate detection and removal.
* **Hash-Based:** Uses SHA256 hashes to ensure accurate identification of duplicates, even if file names differ.
* **Customizable:** Easily modify the `$dir` variable to target specific folders or drives.
* **Safe & Reliable:** The script skips the first file in each duplicate group, preserving your original data.

## How it Works ⚙️

1. **Scans:** The script dives into your chosen directory and meticulously calculates the SHA256 hash for every file.
2. **Groups:** Files with identical hashes are grouped together, revealing the duplicates.
3. **Eliminates:** The script intelligently removes all but the first file in each group, freeing up your storage.

## Usage 🛠️

1. **Clone or Download:** Grab the `dupes.ps1` script from this repository.

2. **Prepare PowerShell:** 
   * **Open PowerShell as Administrator:** This is needed to change execution policy settings.
   * **Set Execution Policy (if needed):** PowerShell often restricts unsigned scripts by default. To allow this script to run, you may need to change the execution policy. Use the following command (choose one):
      * **Less Secure (but easier):** `Set-ExecutionPolicy Unrestricted`
      * **More Secure:** `Set-ExecutionPolicy RemoteSigned` (allows local scripts and signed remote scripts)

3. **Navigate:** Use the `cd` command to change to the directory where you saved the script.

4. **Customize (Optional):** Edit the `$dir` variable in the script to point to the folder you want to clean.

5. **Execute:** Run the script with `.\dupes.ps1`.

## Making it Easier for Future Runs 💡

To avoid having to navigate to the script directory and type the full command every time:

1. **Create a Shortcut:** Right-click the script file and choose "Create shortcut."
2. **Edit Shortcut Properties:** Right-click the shortcut, go to Properties, and in the "Target" field, add `powershell -ExecutionPolicy Bypass -File ` before the path to your script. 
   * Example: `powershell -ExecutionPolicy Bypass -File "C:\path\to\your\dupes.ps1"`
3. **Run with Shortcut:** Now you can simply double-click the shortcut to run the script, bypassing the execution policy check.

## Disclaimer ⚠️

Always back up your important data before running any file deletion scripts. Use this tool responsibly!

## Contributing 🤝

Feel free to fork this repository, submit pull requests, or report issues. Let's make this script even better together!

## License 📄

This project is licensed under the MIT License. See the LICENSE file for details.
