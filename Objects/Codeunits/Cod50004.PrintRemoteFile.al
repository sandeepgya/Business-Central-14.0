codeunit 50004 "Print Remote File"
{

    /*trigger OnRun()
    begin
    end;

    var
        ProcessStartInfo: DotNet ProcessStartInfo;
        ProcessWindowStyle: DotNet ProcessWindowStyle;
        Process: DotNet Process;

    local procedure PrintRemoteFile()
    var
        FileURL: Text;
        ProcessStartInfo: DotNet ProcessStartInfo;
        Process: DotNet Process;
        WebClient: DotNet WebClient;
        LocalFileName: Text;
    begin

        //FileURL := 'http://che.org.il/wp-content/uploads/2016/12/pdf-sample.pdf';
        ProcessStartInfo := ProcessStartInfo.ProcessStartInfo();
        //WebClient := WebClient.WebClient();
        //LocalFileName := 'C:\Temp\TempFile.pdf';
        LocalFileName := 'D:\OA\Rachit\Annexure.pdf';
        //WebClient.DownloadFile(FileURL,LocalFileName);
        ProcessStartInfo.FileName := LocalFileName;
        ProcessStartInfo.Verb := 'Print';
        ProcessStartInfo.CreateNoWindow := FALSE;
        Process := Process.Process;
        Process := Process.Start(ProcessStartInfo);
        MESSAGE('Document Printed');
    end;

    local procedure PrintExternalDocument(Path: Text)
    begin
        IF NOT PrintDocument(Path) THEN
            ERROR('Error on printing document %1. \\ERROR: %2, Path, GETLASTERRORTEXT');
    end;

    [TryFunction]
    local procedure PrintDocument(Path: Text)
    begin
        ProcessStartInfo := ProcessStartInfo.ProcessStartInfo(Path);
        ProcessStartInfo.Verb := 'Print';
        ProcessStartInfo.CreateNoWindow := TRUE;
        ProcessStartInfo.WindowStyle := ProcessWindowStyle.Hidden;
        //Here you can set a printer via code
        //ProcessStartInfo.Arguments := '\\<IP Address>\<Printer>';
        Process.Start(ProcessStartInfo);
    end;

    trigger Process::OutputDataReceived(sender: Variant; e: DotNet DataReceivedEventArgs)
    begin
    end;

    trigger Process::ErrorDataReceived(sender: Variant; e: DotNet DataReceivedEventArgs)
    begin
    end;

    trigger Process::Exited(sender: Variant; e: DotNet EventArgs)
    begin
    end;

    trigger Process::Disposed(sender: Variant; e: DotNet EventArgs)
    begin
    end;*/ //OA.AS Commented
}

