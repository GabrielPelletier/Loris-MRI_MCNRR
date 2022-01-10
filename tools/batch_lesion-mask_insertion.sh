#!/bin/sh
# path to lesion masks
FILES="/data/incoming/*lesionmask.nii.gz"
# Loop through all lesion masks and insert them to Loris
for f in $FILES
do
echo "Inserting lesion mask : $f ..."
# run the insertion perl script
/data/mcnrr_dev/bin/mri/uploadNeuroDB/imaging_non_minc_insertion.pl -profile prod -file_path $f -upload_id 4 -output_type mask -scan_type lesionmask -date_acquired 2000-01-01 -scanner_id 3 -coordin_space mni
done
