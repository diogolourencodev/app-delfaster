# AppDelFaster

A simple Python and Batch script to quickly uninstall multiple applications using Winget on Windows.

## Description

AppDelFaster allows you to batch uninstall applications by entering their exact Winget application names.  
There are now two versions of the tool:  
- **Python script (`appdelfaster.py`)**  
- **Batch script (`appdelfaster.bat`)**  

Both versions let you enter application names one by one and then uninstall all of them in sequence with proper error handling.

## Features

- Interactive input for adding multiple applications to uninstall
- Simple quit command (`q`, `exit`, or `quit`) to start the uninstallation process
- Uses Windows Package Manager (Winget) for reliable uninstallation
- Success and error messages for each application
- Available in **Python** and **Batch** versions

## Prerequisites

- Windows 10 or later
- **Winget** installed (usually pre-installed on Windows 10/11)
- For Python version: Python 3.x installed

## Installation

1. Clone or download the repository:
```bash
cd app-delfaster
````

2. Choose which version you want to use:

   * **Python**: Requires Python installed
   * **Batch**: Works directly on Windows without extra dependencies (only needs Winget)

## How to Find Application Names for Winget

### Method 1: List All Installed Apps

```bash
winget list
```

### Method 2: Search for a Specific App

```bash
winget search "application name"
```

### Method 3: Use the Package ID

Example:

* `Google.Chrome`
* `Mozilla.Firefox`
* `Discord.Discord`

## Usage

### Python version

```bash
python appdelfaster.py
```

### Batch version

```bash
appdelfaster.bat
```

1. Enter the exact Winget application names (see tutorial above)
2. Type `q`, `exit`, or `quit` when you're done
3. The script will uninstall all specified applications

## Example Session

```bash
AppDelFaster by Diogo S. Lourenço

Enter the name of the application to remove (or 'q' to quit)

App to uninstall: Google.Chrome
App to uninstall: Mozilla.Firefox
App to uninstall: q

[✔] Google.Chrome successfully removed
[✔] Mozilla.Firefox successfully removed

Uninstaller finished
```

## Common Application Names

* `Google.Chrome` - Google Chrome
* `Mozilla.Firefox` - Mozilla Firefox
* `Microsoft.VisualStudioCode` - VS Code
* `Discord.Discord` - Discord
* `Spotify.Spotify` - Spotify
* `VideoLAN.VLC` - VLC Media Player
* `7zip.7zip` - 7-Zip
* `Adobe.Acrobat.Reader.64-bit` - Adobe Reader

## Notes

* Run the script as Administrator for successful uninstallation
* Some apps may still require manual confirmation during uninstall
* Use the **exact name or ID** shown in `winget list`

## File Structure

```
app-delfaster/
├── appdelfaster.py
├── appdelfaster.bat
└── README.md
```
