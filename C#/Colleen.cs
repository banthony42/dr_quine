using System;
/*
	First comment
*/
namespace Colleen
{
	class MainClass
	{
		private static void dummy(){}
		public static void Main(string[] args)
		{
			/*
				Second comment
			*/
			dummy();string prog = "using System;{0}/*{0}{1}First comment{0}*/{0}namespace Colleen{0}{2}{0}{1}class MainClass{0}{1}{2}{0}{1}{1}private static void dummy(){2}{3}{0}{1}{1}public static void Main(string[] args){0}{1}{1}{2}{0}{1}{1}{1}/*{0}{1}{1}{1}{1}Second comment{0}{1}{1}{1}*/{0}{1}{1}{1}dummy();string prog = {4}{6}{4};{0}{1}{1}{1}Console.Write(prog, Environment.NewLine, {4}{5}t{4}, {4}{2}{4}, {4}{3}{4}, {4}{5}{4}{4}, {4}{5}{5}{4}, prog);{0}{1}{1}{3}{0}{1}{3}{0}{3}";
			Console.Write(prog, Environment.NewLine, "\t", "{", "}", "\"", "\\", prog);
		}
	}
}