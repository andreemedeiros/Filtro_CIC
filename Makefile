# Makefile para compilar e executar com o xrun

# Caminho para a pasta Filtro
FILTRO_PATH = Filtro

# Nome dos arquivos SV (coloque os nomes reais aqui)
SV_FILES = cic_filter.sv cic_filter_tb.sv

# Comando para compilar e executar
xrun:
	cd $(FILTRO_PATH); \
	xrun -sv $(SV_FILES)

# Comando para limpar arquivos temporários
clean:
	cd $(FILTRO_PATH); \
	rm -rf INCA_libs xcelium.d simv simv.daidir csrc ucli.key xrun.history

# Define a regra "all" para compilar e executar
all: xrun

# Define a regra padrão quando "make" é executado sem argumentos
.DEFAULT_GOAL := all