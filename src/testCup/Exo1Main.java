package testCup;
import java_cup.runtime.Symbol;
import java.io.*;

public class Exo1Main {
	public static void main(String[] args) throws Exception{ 
	AnalyseurFLex yy ; 
	if (args.length > 0)
	yy = new AnalyseurFLex(new FileInputStream(args[0]));
	else
	yy = new AnalyseurFLex(System.in) ;
	parser p = new parser (yy);
	Symbol result = p.parse( );
	System.out.println ("Evaluation = "+result.value);
	}
}