
DIRETORIO="/caminho/para/diretorio"


if [ ! -d "$DIRETORIO" ]; then
    echo "O diretório $DIRETORIO não existe."
    exit 1
fi


cd "$DIRETORIO"

for ARQUIVO in *; do
    if [ -f "$ARQUIVO" ]; then
        EXTENSAO="${ARQUIVO##*.}"
        EXTENSAO="${EXTENSAO,,}"
        if [ ! -d "$EXTENSAO" ]; then
            mkdir "$EXTENSAO"
        fi
        mv "$ARQUIVO" "$EXTENSAO/"
    fi
done

echo "Arquivos organizados por extensão no diretório $DIRETORIO."