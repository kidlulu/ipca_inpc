* Encoding: windows-1252.
dataset close all.

*Matriz.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'matriz'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE S�oPauloSP Bras�liaDF 
    Bel�mPA FortalezaCE SalvadorBA CuritibaPR Goi�niaGO GrandeVit�riaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=Auxiliar id Refer�ncia Origem C�digo Divis�o Descri��o 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('Goi�niaGO'='Goi�nia (GO)')
('Bras�liaDF'='Bras�lia (DF)')
('Bel�mPA'='Bel�m (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('S�oPauloSP'='S�o Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVit�riaES'='Grande Vit�ria (ES)').

string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
EXECUTE.

if (sysmis(Valores)) Valores = -9999.9999.

SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau_matriz.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = id Refer�ncia Origem C�digo Divis�o Descri��o UnidadeTerritorial Valores.

dataset close all.

*evolucao.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'evolucao'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE S�oPauloSP Bras�liaDF 
    Bel�mPA FortalezaCE SalvadorBA CuritibaPR Goi�niaGO GrandeVit�riaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Refer�ncia C�digo Divis�o Descri��o 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('Goi�niaGO'='Goi�nia (GO)')
('Bras�liaDF'='Bras�lia (DF)')
('Bel�mPA'='Bel�m (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('S�oPauloSP'='S�o Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVit�riaES'='Grande Vit�ria (ES)').

string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
EXECUTE.

if (sysmis(Valores)) Valores = -9999.9999.

SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau_evolucao.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = id Refer�ncia C�digo Descri��o UnidadeTerritorial Valores.

dataset close all.

*peso_no_mes.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_no_mes'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE S�oPauloSP Bras�liaDF 
    Bel�mPA FortalezaCE SalvadorBA CuritibaPR Goi�niaGO GrandeVit�riaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Refer�ncia C�digo Divis�o Descri��o 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('Goi�niaGO'='Goi�nia (GO)')
('Bras�liaDF'='Bras�lia (DF)')
('Bel�mPA'='Bel�m (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('S�oPauloSP'='S�o Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVit�riaES'='Grande Vit�ria (ES)').

string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
EXECUTE.

if (sysmis(Valores)) Valores = -9999.9999.

SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau_peso_no_mes.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = id Refer�ncia C�digo Divis�o Descri��o UnidadeTerritorial Valores.

dataset close all.

*peso_no_ano.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_no_ano'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE S�oPauloSP Bras�liaDF 
    Bel�mPA FortalezaCE SalvadorBA CuritibaPR Goi�niaGO GrandeVit�riaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Refer�ncia C�digo Divis�o Descri��o 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('Goi�niaGO'='Goi�nia (GO)')
('Bras�liaDF'='Bras�lia (DF)')
('Bel�mPA'='Bel�m (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('S�oPauloSP'='S�o Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVit�riaES'='Grande Vit�ria (ES)').

string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
EXECUTE.

if (sysmis(Valores)) Valores = -9999.9999.

SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau_peso_no_ano.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = id Refer�ncia C�digo Divis�o Descri��o UnidadeTerritorial Valores.

dataset close all.

*peso_em_12M.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_em_12M'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE S�oPauloSP Bras�liaDF 
    Bel�mPA FortalezaCE SalvadorBA CuritibaPR Goi�niaGO GrandeVit�riaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Refer�ncia C�digo Divis�o Descri��o 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('Goi�niaGO'='Goi�nia (GO)')
('Bras�liaDF'='Bras�lia (DF)')
('Bel�mPA'='Bel�m (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('S�oPauloSP'='S�o Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVit�riaES'='Grande Vit�ria (ES)').

string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
EXECUTE.

if (sysmis(Valores)) Valores = -9999.9999.

SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau_peso_em_12M.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = id Refer�ncia C�digo Divis�o Descri��o UnidadeTerritorial Valores.