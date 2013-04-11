package testCup;
import java_cup.runtime.Symbol;


%%
%class AnalyseurFLex
%cup
%{eofval
return new Symbol(sym.EOF) ;
%eofval}


sep = [ \t\n]
blanc = {sep}+
chiffre = [0-9]
nombre = {chiffre}+
commentaire = "/*"([^"*"]|"*/")*"*/"

%%
/* Actions */
{blanc}  { /* pas d'action */}
{commentaire} { /* pas d'action */ }
{nombre}  {return new Symbol(sym.ENTIER,new Integer(yytext()));}
"+"  { 
	return new Symbol(sym.PLUS);
}
"-"  { 
	return new Symbol(sym.MOINS);
}
"*"  {
	return new Symbol(sym.MULT);
}
"/"  {
	return new Symbol(sym.DIVIDE);
}
";" { return new Symbol(sym.POINT_VIRGULE); }

"("  {return new Symbol(sym.PAR_G);}
")"  {return new Symbol(sym.PAR_D);}



