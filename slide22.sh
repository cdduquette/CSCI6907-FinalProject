#! /bin/bash

echo create_input and SSL
python3 Scripts/create_input.py 3 20

../mp-spdz-0.2.3/Scripts/setup-ssl.sh 20

# echo -------------------------------------------------------------------
# echo -------------------------------------------------------------------
# echo -------------------------------------------------------------------
# echo -------------------------------------------------------------------

# echo average_by_gender_all_secured - semi-honest
# ../mp-spdz-0.2.3/compile.py average_by_gender_all_secured.mpc
# ../mp-spdz-0.2.3/Scripts/shamir.sh average_by_gender_all_secured
# sleep 150
# echo -------------------------------------------------------------------

# echo average_by_gender_optimized - semi-honest
# ../mp-spdz-0.2.3/compile.py average_by_gender_optimized.mpc
# ../mp-spdz-0.2.3/Scripts/shamir.sh average_by_gender_optimized
# sleep 150
# echo -------------------------------------------------------------------
# echo -------------------------------------------------------------------

# echo average_by_gender_all_secured - malicious
# ../mp-spdz-0.2.3/compile.py average_by_gender_all_secured.mpc
# ../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_all_secured
# sleep 150
# echo -------------------------------------------------------------------

# echo average_by_gender_optimized  - malicious
# ../mp-spdz-0.2.3/compile.py average_by_gender_optimized.mpc
# ../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_optimized
# sleep 150
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo preprocess_code
python3 Scripts/preprocess_code.py 0 20

echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_all_secured - semi-honest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_all_secured.mpc
../mp-spdz-0.2.3/Scripts/shamir.sh average_by_gender_preprocessing_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_optimized - semi-honest
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_optimized.mpc
../mp-spdz-0.2.3/Scripts/shamir.sh average_by_gender_preprocessing_optimized
sleep 150
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_all_secured - malicious
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_all_secured.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_all_secured
sleep 150
echo -------------------------------------------------------------------

echo average_by_gender_preprocessing_optimized  - malicious
../mp-spdz-0.2.3/compile.py average_by_gender_preprocessing_optimized.mpc
../mp-spdz-0.2.3/Scripts/mal-shamir.sh average_by_gender_preprocessing_optimized
