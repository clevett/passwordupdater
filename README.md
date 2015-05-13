# passwordupdater

Take the PasswordUpdater.scpt and save as an application along with the included package plist. Alternatly you can edit the plist included in the application package when you save the PasswordUpdater as an application. You'll need an entry for <key>CFBundleIdentifier</key><string>com.example.PasswordUpdater</string>

Before running the Password Updater script on a client machine first run passwordupdater.sh. This script will add the Password Updater to Accessibility area so users will not be prompted to add it. This will need to be run as sudo. For JAMF users simply added it as a script to the policy to run Before.
