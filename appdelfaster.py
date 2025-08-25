from subprocess import run, CalledProcessError

def uninstall(app_name: str) -> None:
    """Remove an application using winget."""
    try:
        result = run(
            ["winget", "uninstall", app_name],
            check=True,
            capture_output=True,
            text=True
        )
        print(f"[✔] {app_name} successfully removed")
    except CalledProcessError as e:
        print(f"[✘] Failed to remove {app_name}")
        print("   Output:", e.stderr.strip() or e.stdout.strip())

def main():
    print("\nAppDelFaster by Diogo S. Lourenço\n")
    print("Enter the name of the application to remove (or 'q' to quit)\n")

    apps = []
    while True:
        app_name = input("App to uninstall: ").strip()
        if app_name.lower() in {"", "q", "exit", "quit"}:
            print("\n")
            break
        apps.append(app_name)

    if not apps:
        print("\nNo apps were selected for uninstallation.")
        return

    for app in apps:
        uninstall(app)

    print("\nUninstaller finished")

if __name__ == "__main__":
    main()
