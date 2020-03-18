{smcl}
{* *! version 1.0 03rd January 2019}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Install command2" "ssc install command2"}{...}
{vieweralsosee "Help command2 (if installed)" "help command2"}{...}
{viewerjumpto "Syntax" "datazoom_pnadcontinua##syntax"}{...}
{viewerjumpto "Description" "datazoom_pnadcontinua##description"}{...}
{viewerjumpto "Options" "datazoom_pnadcontinua##options"}{...}
{viewerjumpto "Remarks" "datazoom_pnadcontinua##remarks"}{...}
{viewerjumpto "Examples" "datazoom_pnadcontinua##examples"}{...}
{title:Title}

{phang}
{bf:datazoom_pnadcontinua} {hline 2} Acesso aos microdados da PNAD Contínua em formato STATA - Versão 1.0

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:datazoom_pnadcontinua}
[{cmd:,}
{it:options}]

{p}	OBS: digite 'db datazoom_pnadcontinua' para utilizar o programa via caixa de diálogo
	
{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Inputs}
{synopt:{opt years(numlist)}} anos da PNAD Contínua {p_end}
{synopt:{opt original(str)}} caminho da pasta onde se localizam os arquivos de dados originais {p_end}
{synopt:{opt saving(str)}} caminho da pasta onde serão salvas as novas bases de dados {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Descrição}

{phang}
{cmd:datazoom_pnadcontinua} extrai e constrói bases de dados da PNAD Contínua em formato STATA (.dta) a partir
dos microdados originais, os quais  não são disponibilizados pelo Portal (informações sobre como obter
os arquivos originais de dados, consulte o site do IBGE www.ibge.gov.br). O programa pode ser utilizado para
os anos 2012 a 2019. 

{phang} Apesar de ser uma pesquisa trimestral, este programa não permite a escolha de trimestres específicos para extração, 
somente anos. Como a pesquisa ainda é ublicada pelo IBGE, este programa está em constante atualização.
  
{phang} O programa gera uma base para cada trimestre do ano selecionado. Se for o caso, utilize o 
comando {help append} para empilhar as bases.


{marker options}{...}
{title:Opções}
{dlgtab:Inputs}

{phang} 
{opt years(numlist)} especifica a lista de anos com os quais o usuário deseja trabalhar. Este programa 
pode ser utilizado para o período de 2012 a 2019. Não é possível escolher trimestres específicos.

{phang} {opt original(str)} indica o caminho da pasta onde estão localizados os arquivos de dados originais. 
Existe um arquivo de microdados para cada trimestre da pesquisa. Todos eles devem estar posicionados na mesma pasta 
para que o programa funcione adequadamente. O Portal não disponibiliza os dados originais, que podem ser
 obtidos no site do IBGE.

{phang} {opt saving(str)} indica o caminho da pasta onde devem ser salvas as bases de dados produzidas pelo programa.

{marker examples}{...}
{title:Exemplos}

{phang}  OBS: Recomenda-se a execuçãoo do programa por meio da caixa de diálogo. Digite "db datazoom_pnadcontinua" na janela 
de comando do STATA para iniciar.

{phang} Exemplo 1: Bases de dados trimestrais 

{phang} datazoom_pnadcontinua, years(2012 2013 2014) original(C:/pnadc) saving(D:/mydatabases) 

{phang} Doze bases de dados são geradas, uma para cada trimestre de cada ano selecionado.

{title:Autor}
{p}

PUC-Rio - Departmento de Economia

Email {browse "mailto:datazoom@econ.puc-rio.br":datazoom@econ.puc-rio.br}

{title:Veja também}

Pacotes relacionados:

{help datazoom_censo} (se instalado)  
{help datazoom_pnad} (se instalado)  
{help datazoom_pmeantiga} (se instalado)
{help datazoom_pmenova} (se instalado)  
{help datazoom_pof2017} (se instalado)  
{help datazoom_pof2008} (se instalado)  
{help datazoom_pof2002} (se instalado)  
{help datazoom_pof1995} (se instalado)  
{help datazoom_ecinf} (se instalado) 
{help datazoom_pns} (se instalado) 


{p} Digite "net from http://www.econ.puc-rio.br/datazoom/portugues" para instalar a versão em português desses pacotes. 
For the english version, type "net from http://www.econ.puc-rio.br/datazoom/english".
