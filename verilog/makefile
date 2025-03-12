IVERILOG = iverilog
VVP = vvp
SRC_DIR = .
OUT_DIR = ./output
SRC_FILES = $(wildcard $(SRC_DIR)/*.v)
OUT_FILES = $(patsubst $(SRC_DIR)/%.v, $(OUT_DIR)/%.out, $(SRC_FILES))

all: $(OUT_FILES)

$(OUT_DIR)/%.out: $(SRC_DIR)/%.v
	@mkdir -p $(OUT_DIR)
	$(IVERILOG) -I $(SRC_DIR) -o $@ $<

clean:
	@rm -rf $(OUT_DIR)

run: $(SRC_DIR)/$(FILE).v
	@mkdir -p $(OUT_DIR)
	$(IVERILOG) -I $(SRC_DIR) -o $(OUT_DIR)/$(FILE).out $<
	$(VVP) $(OUT_DIR)/$(FILE).out
