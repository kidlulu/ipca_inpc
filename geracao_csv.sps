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
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE SãoPauloSP BrasíliaDF 
    BelémPA FortalezaCE SalvadorBA CuritibaPR GoiâniaGO GrandeVitóriaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=Auxiliar id Referência Origem Código Divisão Descrição 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('GoiâniaGO'='Goiânia (GO)')
('BrasíliaDF'='Brasília (DF)')
('BelémPA'='Belém (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('SãoPauloSP'='São Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVitóriaES'='Grande Vitória (ES)').

string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
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
  /keep = id Referência Origem Código Divisão Descrição UnidadeTerritorial Valores.

dataset close all.

*evolucao.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'evolucao'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE SãoPauloSP BrasíliaDF 
    BelémPA FortalezaCE SalvadorBA CuritibaPR GoiâniaGO GrandeVitóriaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Referência Código Divisão Descrição 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('GoiâniaGO'='Goiânia (GO)')
('BrasíliaDF'='Brasília (DF)')
('BelémPA'='Belém (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('SãoPauloSP'='São Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVitóriaES'='Grande Vitória (ES)').

string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
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
  /keep = id Referência Código Descrição UnidadeTerritorial Valores.

dataset close all.

*peso_no_mes.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_no_mes'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE SãoPauloSP BrasíliaDF 
    BelémPA FortalezaCE SalvadorBA CuritibaPR GoiâniaGO GrandeVitóriaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Referência Código Divisão Descrição 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('GoiâniaGO'='Goiânia (GO)')
('BrasíliaDF'='Brasília (DF)')
('BelémPA'='Belém (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('SãoPauloSP'='São Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVitóriaES'='Grande Vitória (ES)').

string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
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
  /keep = id Referência Código Divisão Descrição UnidadeTerritorial Valores.

dataset close all.

*peso_no_ano.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_no_ano'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE SãoPauloSP BrasíliaDF 
    BelémPA FortalezaCE SalvadorBA CuritibaPR GoiâniaGO GrandeVitóriaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Referência Código Divisão Descrição 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('GoiâniaGO'='Goiânia (GO)')
('BrasíliaDF'='Brasília (DF)')
('BelémPA'='Belém (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('SãoPauloSP'='São Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVitóriaES'='Grande Vitória (ES)').

string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
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
  /keep = id Referência Código Divisão Descrição UnidadeTerritorial Valores.

dataset close all.

*peso_em_12M.
GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau.xlsx'
  /SHEET=name 'peso_em_12M'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.

VARSTOCASES
  /MAKE Valores FROM RiodeJaneiroRJ PortoAlegreRS BeloHorizonteMG RecifePE SãoPauloSP BrasíliaDF 
    BelémPA FortalezaCE SalvadorBA CuritibaPR GoiâniaGO GrandeVitóriaES CampoGrandeMS Brasil
  /INDEX=UnidadeTerritorial(Valores) 
  /KEEP=id Referência Código Divisão Descrição 
  /NULL=KEEP.

ALTER TYPE UnidadeTerritorial (A20) Valores (F10.4).

recode UnidadeTerritorial
('Brasil'='Brasil')
('CampoGrandeMS'='Campo Grande (MS)')
('GoiâniaGO'='Goiânia (GO)')
('BrasíliaDF'='Brasília (DF)')
('BelémPA'='Belém (PA)')
('FortalezaCE'='Fortaleza (CE)')
('RecifePE'='Recife (PE)')
('SalvadorBA'='Salvador (BA)')
('BeloHorizonteMG'='Belo Horizonte (MG)')
('RiodeJaneiroRJ'='Rio de Janeiro (RJ)')
('SãoPauloSP'='São Paulo (SP)')
('CuritibaPR'='Curitiba (PR)')
('PortoAlegreRS'='Porto Alegre (RS)')
('GrandeVitóriaES'='Grande Vitória (ES)').

string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
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
  /keep = id Referência Código Divisão Descrição UnidadeTerritorial Valores.