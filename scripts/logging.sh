
# import from another script
# SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# source `dirname $SCRIPT_DIR`/logging.sh

# logging
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function info ( ) {
  echo -e "${GREEN}$1${NC}"
}
function error ( ) {
  echo -e "${RED}$1${NC}"
}
function warn ( ) {
  echo -e "${LIGHT_RED}$1${NC}"
}

