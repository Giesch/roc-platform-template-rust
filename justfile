set dotenv-load

# rebuild the platform, run all tests, and record the roc version used
rebuild: glue
    bash ci/all_tests.sh
    roc version > built_with_roc_version.txt

# regenerate native bindings with RustGlue.roc from a local roc repo
glue:
    roc glue $RUST_GLUE_PATH ./src/ platform/main.roc

