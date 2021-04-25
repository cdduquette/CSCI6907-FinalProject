#! /bin/bash

echo create_input
python3 Scripts/create_input.py 12 3

echo -------------------------------------------------------------------

echo average_by_gender_all_secured
../mp-spdz-0.2.3/compile.py average_by_gender_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_all_secured

echo -------------------------------------------------------------------

echo average_by_gender_optimized
../mp-spdz-0.2.3/compile.py average_by_gender_optimized.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_optimized

echo -------------------------------------------------------------------

echo preprocess_code
python3 Scripts/preprocess_code.py 0 3

echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_all_secured
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_all_secured

echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_optimized
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_optimized.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_optimized
