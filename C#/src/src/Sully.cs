using System;
using System.IO;
using System.Diagnostics;
namespace DrQuine
{
	public class Sully
	{
		private static int n = 5;
		private static void CompileRun(string file, string code)
		{
			try { File.WriteAllText(file, code); } catch (Exception e) { e.GetType(); return; };
			Process cc = new Process(); cc.StartInfo.FileName = "mcs"; cc.StartInfo.Arguments = file + " -out:Sully.exe"; cc.Start(); cc.WaitForExit();
			Process cmd = new Process(); cmd.StartInfo.FileName = "mono"; cmd.StartInfo.Arguments = "Sully.exe"; cmd.Start();
		}
		public static void Main()
		{
			if (n <= 0) return;
			string file = String.Format("Sully_{0}.cs", n);
			file = File.Exists(file) ? String.Format("Sully_{0}.cs", --n) : file;
			string code = "using System;{0}using System.IO;{0}using System.Diagnostics;{0}namespace DrQuine{0}{2}{0}{1}public class Sully{0}{1}{2}{0}{1}{1}private static int n = {7};{0}{1}{1}private static void CompileRun(string file, string code){0}{1}{1}{2}{0}{1}{1}{1}try {2} File.WriteAllText(file, code); {3} catch (Exception e) {2} e.GetType(); return; {3};{0}{1}{1}{1}Process cc = new Process(); cc.StartInfo.FileName = {4}mcs{4}; cc.StartInfo.Arguments = file + {4} -out:Sully.exe{4}; cc.Start(); cc.WaitForExit();{0}{1}{1}{1}Process cmd = new Process(); cmd.StartInfo.FileName = {4}mono{4}; cmd.StartInfo.Arguments = {4}Sully.exe{4}; cmd.Start();{0}{1}{1}{3}{0}{1}{1}public static void Main(){0}{1}{1}{2}{0}{1}{1}{1}if (n <= 0) return;{0}{1}{1}{1}string file = String.Format({4}Sully_{2}0{3}.cs{4}, n);{0}{1}{1}{1}file = File.Exists(file) ? String.Format({4}Sully_{2}0{3}.cs{4}, --n) : file;{0}{1}{1}{1}string code = {4}{6}{4};{0}{1}{1}{1}CompileRun(file, String.Format(code, Environment.NewLine, {4}{5}t{4}, {4}{2}{4}, {4}{3}{4}, {4}{5}{4}{4}, {4}{5}{5}{4}, code, n));{0}{1}{1}{3}{0}{1}{3}{0}{3}";
			CompileRun(file, String.Format(code, Environment.NewLine, "\t", "{", "}", "\"", "\\", code, n));
		}
	}
}