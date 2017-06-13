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

DATASET ACTIVATE base.
DATASET COPY  b2.
DATASET ACTIVATE  b2.
FILTER OFF.
USE ALL.
SELECT IF (any(Origem,'Varia��o Mensal (%)','Varia��o Acumulada no Ano (%)','Varia��o Acumulada em 12 Meses (%)')).
DO IF (Origem = 'Varia��o Mensal (%)').
  compute variacaomes = Valores.
ELSE IF (Origem = 'Varia��o Acumulada no Ano (%)').
  compute variacaoano = Valores.
ELSE IF (Origem = 'Varia��o Acumulada em 12 Meses (%)').
  compute variacao12meses = Valores.
END IF.
RECODE Origem ('Varia��o Mensal (%)'='Peso no m�s') ('Varia��o Acumulada no Ano (%)'='Peso no ano') ('Varia��o Acumulada em 12 Meses (%)'='Peso em 12 meses').
SORT CASES BY Refer�ncia(A) Origem(A) C�digo(A) UnidadeTerritorial(A).
DELETE VARIABLES Auxiliar id Divis�o Descri��o.
EXECUTE.

DATASET ACTIVATE base.
SORT CASES BY Refer�ncia(A) Origem(A) C�digo(A) UnidadeTerritorial(A).
MATCH FILES /FILE=*
  /TABLE='b2'
  /BY Refer�ncia Origem C�digo UnidadeTerritorial.
string Refer�ncia2 (A10).
compute Refer�ncia2 = CONCAT(replace(string(XDATE.MDAY(Refer�ncia),f2),' ','0'),'/',replace(string(XDATE.MONTH(Refer�ncia),F2),' ','0'),'/',string(XDATE.YEAR(Refer�ncia),F4)).
EXECUTE.
DELETE VARIABLES Refer�ncia.
EXECUTE.
RENAME VARIABLES (Refer�ncia2=Refer�ncia).
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
  /keep = Auxiliar id Refer�ncia Origem C�digo Divis�o Descri��o UnidadeTerritorial Valores variacaomes variacaoano variacao12meses.

