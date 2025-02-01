; -- 7zip_SFX.iss --
; Copywright(c) -- Andre Luiz Romano Madureira

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=MyApp
AppVersion=1.0
DefaultDirName={tmp}  
DisableProgramGroupPage=yes 
DisableReadyPage=yes  
DisableReadyMemo=yes 
DisableStartupPrompt=yes
DisableFinishedPage=yes 
DisableWelcomePage=yes  
SourceDir=.
OutputDir=.
OutputBaseFilename=data


[Files]
Source: "lib/*"; DestDir: "{tmp}"; Flags: ignoreversion createallsubdirs recursesubdirs allowunsafefiles 

[Run]
; Command to extract the .7z file using 7z and run the PowerShell script
Filename: "{tmp}\7z.exe"; Parameters: "x {src}\data.7z -y -bb2 -mmt -o{tmp}\output "; StatusMsg: "Extracting files..."
Filename: "powershell.exe"; Parameters: "-ExecutionPolicy Bypass -File {src}\data.ps1 {tmp}\output -Verb RunAs"; StatusMsg: "Running PowerShell script..."

[Code]
function InitializeSetup(): Boolean;
begin
  Result := True;  // Always return True to skip installation-related steps
end;
