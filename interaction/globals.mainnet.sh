PROXY="https://gateway.multiversx.com"
CHAIN_ID="1"

SC_PATH="../"
SC_NAME=$(grep -oP 'name = "\K[^"]+' $SC_PATH"Cargo.toml")
SC_BYTECODE=$SC_PATH"output/$SC_NAME.wasm"

source $SC_PATH".env.mainnet"

if [ ! -z $SC_ADDRESS ]; then
    SC_ADDRESS_HEX=$(mxpy wallet bech32 --decode $SC_ADDRESS)
else
    SC_ADDRESS_HEX=""
fi

OWNER_PEM=$PEM
OWNER_ADDRESS=$(mxpy wallet convert --infile $OWNER_PEM --in-format pem --out-format address-bech32 | sed -n '3p')
OWNER_ADDRESS_HEX=$(mxpy wallet bech32 --decode $OWNER_ADDRESS)

EGLD="EGLD"
EGLD_HEX=$(python to_hex.py $EGLD)

WEGLD="WEGLD-bd4d79"
WEGLD_HEX=$(python to_hex.py $WEGLD)

USDC="USDC-c76f1f"
USDC_HEX=$(python to_hex.py $USDC)