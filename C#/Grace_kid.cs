#define	DEF1
#define	DEF2
#define	DEF3
/*
	First comment
*/
#if (DEF1)
using System;
using System.IO;
namespace DrQuine
{
	class Grace
	{
		public static readonly string CONST1 = "Grace_kid.cs";
		public static readonly string CONST2 = "pseudo-define2";
		public static readonly string CONST3 = "pseudo-define3";
		public static int trigger;
		private static Action prog = () => { string code = "#define{1}DEF1{0}#define{1}DEF2{0}#define{1}DEF3{0}/*{0}{1}First comment{0}*/{0}#if (DEF1){0}using System;{0}using System.IO;{0}namespace DrQuine{0}{2}{0}{1}class Grace{0}{1}{2}{0}{1}{1}public static readonly string CONST1 = {4}Grace_kid.cs{4};{0}{1}{1}public static readonly string CONST2 = {4}pseudo-define2{4};{0}{1}{1}public static readonly string CONST3 = {4}pseudo-define3{4};{0}{1}{1}public static int trigger;{0}{1}{1}private static Action prog = () => {2} string code = {4}{6}{4}; try{2}File.WriteAllText(CONST1, string.Format(code, Environment.NewLine, {4}{5}t{4}, {4}{2}{4}, {4}{3}{4}, {4}{5}{4}{4}, {4}{5}{5}{4}, code));{3}catch(Exception e){2}{3}{3};{0}{1}{1}static Grace() => prog();{0}{1}{1}public static void Main() {2} Grace.trigger = 42; {3}{0}{1}{3}{0}{3}{0}#endif"; try{File.WriteAllText(CONST1, string.Format(code, Environment.NewLine, "\t", "{", "}", "\"", "\\", code));}catch(Exception e){}};
		static Grace() => prog();
		public static void Main() { Grace.trigger = 42; }
	}
}
#endif