; --- NPSharp Installer ISS ---
; Inno Setup para build standalone usado no CI

#define AppName "Notepad Sharp"
#define AppVersion "1.107.0"
#define PortableDir "build\output\portable"
#define LicenseFile "LICENSE"

[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=GirelliDev
AppPublisherURL=https://github.com/GirelliDev/NPSharp
AppSupportURL=https://github.com/GirelliDev/NPSharp
AppUpdatesURL=https://github.com/GirelliDev/NPSharp
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
OutputDir=build\output\installer
OutputBaseFilename=NPSharpInstaller
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
LicenseFile={#LicenseFile}
DisableProgramGroupPage=no
WizardStyle=modern

[Languages]
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

[Files]
; Copia o portable gerado pelo build
Source: "{#PortableDir}\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{group}\Notepad Sharp"; Filename: "{app}\NPSharp.exe"
Name: "{commondesktop}\Notepad Sharp"; Filename: "{app}\NPSharp.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Criar ícone na área de trabalho"; GroupDescription: "Atalhos"; Flags: unchecked

[Run]
Filename: "{app}\NPSharp.exe"; Description: "Executar Notepad Sharp agora"; Flags: nowait postinstall skipifsilent
