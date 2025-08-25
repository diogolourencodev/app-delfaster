# AppDelFaster

A simple Python script to quickly uninstall multiple applications using Winget on Windows.

## Description

AppDelFaster allows you to batch uninstall applications by entering their exact Winget application names. When you're done adding applications, the script will automatically uninstall all of them in sequence using Winget with proper error handling.

## Features

- Interactive input for adding multiple applications to uninstall
- Simple quit command ('q', 'exit', or 'quit') to start the uninstallation process
- Uses Windows Package Manager (Winget) for reliable uninstallation
- Detailed error messages and success notifications
- Clean and minimal codebase with type hints

## Prerequisites

- Windows 10 or later
- Python 3.x installed
- Winget installed (usually comes pre-installed with Windows 10/11)

## Installation

1. Clone or download the script to your desired location:
```bash
cd app-delfaster
```

2. Ensure Python is installed and accessible from your command line.

## How to Find Application Names for Winget

### Method 1: Using Winget List Command

1. Open Command Prompt or PowerShell as administrator
2. Run the following command to see all installed applications:
```bash
winget list
```

3. Look for the application name in the first column. For example:
```
Name                              Id                                      Version
-------------------------------   -------------------------------------   ----------
Google Chrome                     Google.Chrome                           128.0.6613.138
Mozilla Firefox                   Mozilla.Firefox                         132.0.3
Discord                           Discord.Discord                         1.0.9172
```

### Method 2: Search for Specific Applications

1. Search for an application using winget:
```bash
winget search "application name"
```

2. For example, to find VLC:
```bash
winget search "vlc"
```

### Method 3: Using Exact Package ID

Sometimes you need the exact package ID. Use this format: `Vendor.ApplicationName`

Examples of valid application names for the script:
- `Google.Chrome`
- `Mozilla.Firefox` 
- `Discord.Discord`
- `Microsoft.VisualStudioCode`
- `VideoLAN.VLC`

## Usage

1. Run the script (recommended as Administrator):
```bash
python appdelfaster.py
```

2. Enter the exact Winget application names (see tutorial above)
3. Type 'q', 'exit', or 'quit' when you're done adding applications
4. The script will proceed to uninstall all the applications you specified

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

Here are some common Winget application names:
- `Google.Chrome` - Google Chrome
- `Mozilla.Firefox` - Mozilla Firefox
- `Microsoft.VisualStudioCode` - VS Code
- `Discord.Discord` - Discord
- `Spotify.Spotify` - Spotify
- `VideoLAN.VLC` - VLC Media Player
- `7zip.7zip` - 7-Zip
- `Adobe.Acrobat.Reader.64-bit` - Adobe Reader

## Notes

- Run the script as Administrator for successful uninstallation
- Some applications may require user interaction during uninstallation
- The script shows detailed error messages if uninstallation fails
- Make sure to use the exact application name/ID as shown in `winget list`

## File Structure

```
app-delfaster/
├── appdelfaster.py
└── README.md
```

## License

This project is open source and available under the [MIT License](LICENSE).