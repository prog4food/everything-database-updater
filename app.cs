using System;
using System.IO;
using System.Diagnostics;
using System.Windows.Forms;

// prog4food Everything Updater v0.3
namespace prog4food {
    class Program {

        static void Main(string[] args)
        {
            try {
                string vAppDir = Path.GetDirectoryName(Process.GetCurrentProcess().MainModule.FileName) + Path.DirectorySeparatorChar;
                // Run init
                Process evproc = new Process();
                evproc.StartInfo.WorkingDirectory = vAppDir;
                evproc.StartInfo.UseShellExecute = false;

                // Run 1
                evproc.StartInfo.FileName = "Everything.exe";
                evproc.StartInfo.Arguments = string.Format("-instance \"reindex\" -config \"{0}Everything.ini\" -db \"{0}Everything.db\" -update -exit", vAppDir);
                evproc.Start();
                evproc.WaitForExit();

                // Run 2
                evproc.StartInfo.Arguments = string.Format("-read-only -db \"{0}Everything.db\" -startup", vAppDir);
                evproc.Start();
            }
            catch (Exception err) {
                MessageBox.Show(err.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
