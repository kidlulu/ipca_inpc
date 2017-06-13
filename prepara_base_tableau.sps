* Encoding: windows-1252.
DATASET CLOSE ALL.

GET DATA /TYPE=XLSX
  /FILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau2.xlsx'
  /SHEET=name 'matriz'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.
EXECUTE.
DATASET NAME base WINDOW=FRONT.
EXECUTE.

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

DATASET ACTIVATE base.
DATASET COPY  b2.
DATASET ACTIVATE  b2.
FILTER OFF.
USE ALL.
SELECT IF (any(Origem,'Variação Mensal (%)','Variação Acumulada no Ano (%)','Variação Acumulada em 12 Meses (%)')).
DO IF (Origem = 'Variação Mensal (%)').
  compute variacaomes = Valores.
ELSE IF (Origem = 'Variação Acumulada no Ano (%)').
  compute variacaoano = Valores.
ELSE IF (Origem = 'Variação Acumulada em 12 Meses (%)').
  compute variacao12meses = Valores.
END IF.
RECODE Origem ('Variação Mensal (%)'='Peso no mês') ('Variação Acumulada no Ano (%)'='Peso no ano') ('Variação Acumulada em 12 Meses (%)'='Peso em 12 meses').
SORT CASES BY Referência(A) Origem(A) Código(A) UnidadeTerritorial(A).
DELETE VARIABLES Auxiliar id Divisão Descrição.
EXECUTE.

DATASET ACTIVATE base.
SORT CASES BY Referência(A) Origem(A) Código(A) UnidadeTerritorial(A).
MATCH FILES /FILE=*
  /TABLE='b2'
  /BY Referência Origem Código UnidadeTerritorial.
string Referência2 (A10).
compute Referência2 = CONCAT(replace(string(XDATE.MDAY(Referência),f2),' ','0'),'/',replace(string(XDATE.MONTH(Referência),F2),' ','0'),'/',string(XDATE.YEAR(Referência),F4)).
EXECUTE.
DELETE VARIABLES Referência.
EXECUTE.
RENAME VARIABLES (Referência2=Referência).
EXECUTE.
dataset close b2.
dataset activate base.

if (sysmis(Valores)) Valores = -9999.9999.
if (sysmis(variacaomes)) variacaomes = -9999.99.
if (sysmis(variacaoano)) variacaoano = -9999.99.
if (sysmis(variacao12meses)) variacao12meses = -9999.99.


SAVE TRANSLATE OUTFILE='C:\Users\kidlulu\Documents\codeplan\ipca_e_inpc\ipca_inpc\ipca_tableau2.csv'
  /TYPE=CSV
  /ENCODING='Locale'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES
  /TEXTOPTIONS DELIMITER = ';'
  /keep = Auxiliar id Referência Origem Código Divisão Descrição UnidadeTerritorial Valores variacaomes variacaoano variacao12meses.

