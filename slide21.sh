#! /bin/bash

echo create_input and SSL
python3 Scripts/create_input.py 3 3

../mp-spdz-0.2.3/Scripts/setup-ssl.sh 3

echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_all_secured - honest
../mp-spdz-0.2.3/compile.py average_by_gender_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_optimized - honest
../mp-spdz-0.2.3/compile.py average_by_gender_optimized.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_optimized
sleep 150
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_all_secured - dishonest
../mp-spdz-0.2.3/compile.py average_by_gender_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mascot.sh average_by_gender_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_optimized  - dishonest
../mp-spdz-0.2.3/compile.py average_by_gender_optimized.mpc
../mp-spdz-0.2.3/Scripts/mascot.sh average_by_gender_optimized
sleep 300
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo preprocess_code
python3 Scripts/preprocess_code.py 0 3

echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_all_secured - honest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_optimized - honest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_optimized.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_optimized
sleep 150
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_all_secured - dishonest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mascot.sh average_by_gender_preprocessing_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_optimized  - dishonest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_optimized.mpc
../mp-spdz-0.2.3/Scripts/mascot.sh average_by_gender_preprocessing_optimized
